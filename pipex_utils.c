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
	//perror(cmd1[0]);
	ft_putstr_fd("pipex: command not found: ", 2);
	ft_putstr_fd(cmd1[0], 2);
	ft_putstr_fd("\n", 2);
	exit(0);
}

int	ft_strncmp_buf(const char *s1, const char *s2)
{
	size_t	i;

	i = 0;
	while (s1[i] != '\0' || s2[i] != '\0')
	{
		if (s1[i] == s2[i])
			i++;
		else
			return ((unsigned char)s1[i] - (unsigned char)s2[i]);
	}
	return (0);
}

void	ft_child_proc1(char **argv, t_arg *fdp)
{
	int		fd;
	char	*buf;

	if (fdp->i == 0)
	{							//limiter
		if (fdp->flag == 1)
		{
			buf = "";
			close(fdp[fdp->i].pp[0]);
			while(ft_strncmp_buf(buf, argv[2]))
			{
				write(1, "pipe heredoc> ", 14);
				if(get_next_line(0, &buf) && ft_strncmp_buf(buf, argv[2]))
				{
					write(fdp[fdp->i].pp[1], buf, ft_strlen(buf));
					write(fdp[fdp->i].pp[1], "\n", 1);
				}
			}
			free(buf);
			//buf = "";
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

void	ft_next_pipe(t_arg *fdp)
{
	if (fdp->i != 0)
	{
		close(fdp[fdp->i - 1].pp[1]);
		if (dup2(fdp[fdp->i - 1].pp[0], STDIN_FILENO) < 0)
		{
			perror("Couldn't read from the pipe1+");
			char tmp = fdp->i +'0';
			write(2, &tmp, 1);
		}
		close(fdp[fdp->i - 1].pp[0]);
	}
	if (dup2(fdp[fdp->i].pp[1], STDOUT_FILENO) < 0)
		perror("Couldn't write to the pipe1-");
	close(fdp[fdp->i].pp[0]);
	close(fdp[fdp->i].pp[1]);
}
void	ft_child_proc2(char **argv, char **envp, t_arg *fdp)
{
	ft_child_proc1(argv, fdp);
	ft_next_pipe(fdp);
	if (fdp->flag == 1 && fdp->i > 0)//execute
	{
		do_execve(envp, argv, fdp->i + 1, fdp);
		//ft_putstr_fd("pipex: command not found: ", 2);
		//
		// exit(3);
	}
	else if (fdp->flag != 1)
	{
		do_execve(envp, argv, fdp->i, fdp);
		//perror("child2");
	}
	//do_execve(envp, argv, i, fdp);
	//return (3);
}

void	ft_parent_proc(char **envp, int argc, char **argv, t_arg *fdp)
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
	do_execve(envp, argv, fdp->i, fdp);
	//perror("");
}

int		ft_child_proc(char **envp, char **argv, t_arg *fdp)
{
	int pid;

	while (++fdp->i < fdp->num_argc - 1)
	{
		if ((pid = fork())== -1)
		{
			perror("Error with creating process\n");
			return (2);
		}
		if (pid == 0)
		{
			ft_child_proc2(argv, envp, fdp);
			return (3);
		}
		else
		{
			wait(0);
			close((fdp[fdp->i].pp[1]));
			if (fdp->i)
				close(fdp[fdp->i - 1].pp[0]);
		}
	}
	return (0);
}