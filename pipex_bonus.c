#include "pipex.h"

void	ft_create_pipe(t_arg *fdp)
{
	int	i;

	i = 0;
	while (i < fdp->num_argc - 1)
	{
		if (pipe(fdp[i].pp) == -1)
			ft_perror("Error with creating pipe\n");
		i++;
	}
}

int	ft_child_proc(char **envp, char **argv, t_arg *fdp)
{
	int	pid;

	while (++fdp->i < fdp->num_argc - 1)
	{
		pid = fork();
		if (pid == -1)
			ft_perror("Error with creating process\n");
		if (pid == 0)
		{
			ft_child_proc2(argv, envp, fdp);
			return (3);
		}
		else
		{
			wait(NULL);
			close((fdp[fdp->i].pp[1]));
			if (fdp->i)
				close(fdp[fdp->i - 1].pp[0]);
		}
	}
	return (0);
}

void	ft_exec_process(int argc, char **argv, char **envp, t_arg *fdp)
{
	fdp->i = -1;
	ft_create_pipe(fdp);
	ft_child_proc(envp, argv, fdp);
	ft_parent_proc(envp, argc, argv, fdp);
}

int	main(int argc, char **argv, char **envp)
{
	t_arg	*fdp;

	if (argc < 5)
		ft_perror("Not enough arguments");
	fdp = (t_arg *)malloc(sizeof(t_arg) * (argc - 3));
	if (!fdp)
		ft_perror("Couldn't to allocate memory");
	fdp->num_argc = argc - 3;
	fdp->count = find_path(envp);
	if (fdp->count == -1)
		ft_perror("Could not define variable PATH in environment");
	if (!ft_strncmp_buf(argv[1], "here_doc"))
	{
		if (argc < 6)
			ft_perror("Not enough arguments");
		fdp->flag = 1;
	}
	ft_exec_process(argc, argv, envp, fdp);
	free(fdp);
	exit(EXIT_SUCCESS);
}
