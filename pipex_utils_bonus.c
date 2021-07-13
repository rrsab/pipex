#include "pipex.h"

void	ft_heredoc(char **argv, t_arg *fdp)
{
	char	*buf;

	buf = ft_strdup("");
	close(fdp[fdp->i].pp[0]);
	while (ft_strncmp_buf(buf, argv[2]))
	{
		write(1, "pipe heredoc> ", 14);
		if (get_next_line(0, &buf) && ft_strncmp_buf(buf, argv[2]))
		{
			write(fdp[fdp->i].pp[1], buf, ft_strlen(buf));
			write(fdp[fdp->i].pp[1], "\n", 1);
		}
	}
	free(buf);
	exit(EXIT_SUCCESS);
}

void	ft_child_proc1(char **argv, t_arg *fdp)
{
	int		fd;

	if (fdp->i == 0)
	{
		if (fdp->flag == 1)
			ft_heredoc(argv, fdp);
		else
		{
			fd = open(argv[1], O_RDONLY);
			if (fd < 0)
				ft_perror(argv[1]);
			if (dup2(fd, STDIN_FILENO) < 0)
				ft_perror("Couldn't read from the file");
		}
	}
}

void	ft_next_pipe(t_arg *fdp)
{
	if (fdp->i != 0)
	{
		close(fdp[fdp->i - 1].pp[1]);
		if (dup2(fdp[fdp->i - 1].pp[0], STDIN_FILENO) < 0)
			ft_perror("Couldn't read from the pipe");
		close(fdp[fdp->i - 1].pp[0]);
	}
	if (dup2(fdp[fdp->i].pp[1], STDOUT_FILENO) < 0)
		ft_perror("Couldn't write to the pipe");
	close(fdp[fdp->i].pp[0]);
	close(fdp[fdp->i].pp[1]);
}

void	ft_child_proc2(char **argv, char **envp, t_arg *fdp)
{
	ft_child_proc1(argv, fdp);
	ft_next_pipe(fdp);
	if (fdp->flag == 1 && fdp->i > 0)
		do_execve(envp, argv, fdp->i + 1, fdp);
	else if (fdp->flag != 1)
		do_execve(envp, argv, fdp->i, fdp);
}

void	ft_parent_proc(char **envp, int argc, char **argv, t_arg *fdp)
{
	int	fd;

	if (fdp->flag == 1)
		fd = open(argv[argc - 1], O_WRONLY | O_CREAT | O_APPEND, 0774);
	else
		fd = open(argv[argc - 1], O_WRONLY | O_CREAT | O_TRUNC, 0774);
	if (fd < 0)
		ft_perror(argv[argc - 1]);
	if (dup2(fd, STDOUT_FILENO) < 0)
		perror("Couldn't read from the file");
	if (dup2(fdp[fdp->num_argc - 2].pp[0], STDIN_FILENO) < 0)
		perror("Couldn't read from the pipe2");
	close(fdp[fdp->num_argc - 2].pp[1]);
	close(fdp[fdp->num_argc - 2].pp[0]);
	do_execve(envp, argv, fdp->i, fdp);
}
