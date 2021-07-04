#include "pipex.h"

void	do_execve(char **envp, char **argv, int i, t_arg *fdp)
{
	char *path;
	char **dv;
	char **cmd1;
	char *str;
	int		j;
	j = 0;
	path = envp[fdp->count] + 5;
	dv = ft_split(path, ':');
//	if (fdp->flag == 1 && i > 0)
//		i++;
	cmd1 = ft_split(argv[2 + i], ' ');
	while (dv[j])
	{
		str = ft_strjoin3(dv[j], '/', cmd1[0]);
		execve(str, cmd1, envp);
		j++;
		//doesn't free when is executed
		free(str);
	}
//	ft_putstr_fd("pipex: command not found: ", 2);
//	exit(0);
}

void	ft_child_proc1(int i, char **argv, t_arg *fdp)
{
	int		fd;
	char	*buf;

	if (i == 0)
	{							//limiter
		if (fdp->flag == 1)
		{
			buf = "";
			close(fdp[i].pp[0]);
			while(ft_strncmp(buf, argv[2], ft_strlen(argv[2])))
			{
				write(1, "pipe heredoc> ", 14);
				if(get_next_line(0, &buf) && ft_strncmp(buf, argv[2],
														ft_strlen(argv[2])))
				{
					write(fdp[i].pp[1], buf, ft_strlen(buf));
					write(fdp[i].pp[1], "\n", 1);
				}
			}
			free(buf);
		}
		//	ft_heredoc_pipe(argv, i, fdp);
		else
		{
			fd = open(argv[1], O_RDONLY);
			if (fd < 0)
			{
				perror(argv[1]);
				exit(3);
			}
			if (dup2(fd, STDIN_FILENO) < 0)
				perror("Couldn't read from the file");
		}
	}
}

void	ft_next_pipe(int i, t_arg *fdp)
{
	if (i != 0)
	{
		close(fdp[i - 1].pp[1]);
		if (dup2(fdp[i - 1].pp[0], STDIN_FILENO) < 0)
			perror("Couldn't read from the pipe1+");
		close(fdp[i - 1].pp[0]);
	}
	if (dup2(fdp[i].pp[1], STDOUT_FILENO) < 0)
		perror("Couldn't write to the pipe1-");
	close(fdp[i].pp[0]);
	close(fdp[i].pp[1]);
}
//void	ft_child_proc2(int i, char **argv, char **envp, t_arg *fdp)
{
	if (fdp->flag == 1 && i > 0)//execute
	{
		do_execve(envp, argv, i + 1, fdp);
		ft_putstr_fd("pipex: command not found: ", 2);
		exit(3);
	}
	else if (fdp->flag != 1)
	{
		do_execve(envp, argv, i, fdp);
		perror("child2");
	}
	do_execve(envp, argv, i, fdp);
	//return (3);
}

void	ft_parent_proc(int argc, char **argv, t_arg *fdp)
{
	int	fd;

	if (fdp->flag == 1)
		fd = open(argv[argc - 1], O_WRONLY | O_CREAT | O_APPEND, 0774);
	else
		fd = open(argv[argc - 1], O_WRONLY | O_CREAT | O_TRUNC, 0774);
	if (fd < 0)
	{
		perror(argv[4]);
		exit(2);
	}
	if (dup2(fd, STDOUT_FILENO) < 0)
		perror("Couldn't read from the file");
	if (dup2(fdp[fdp->num_argc - 2].pp[0], STDIN_FILENO) < 0)
		perror("Couldn't read from the pipe2");
	close(fdp[fdp->num_argc - 2].pp[1]);
	close(fdp[fdp->num_argc - 2].pp[0]);
}