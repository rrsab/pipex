#include "pipex.h"

int	find_path(char **envp, int argc)
{
	int	count;

	count = 0;
	if (argc < 5)
	{
		perror("Not enough arguments");
		return (-1);
	}
	while (envp[count])
	{
		if ((ft_strncmp("PATH=", envp[count], 5)) == 0)
			break ;
		count++;
	}
	return (count);
}

void	ft_create_pipe(t_arg *fdp)
{
	int	i;

	i = 0;
	while (i < fdp->num_argc - 1)
	{
		if (pipe(fdp[i].pp) == -1)
		{
			perror("Error with creating pipe\n");
			exit(EXIT_FAILURE);
		}
		i++;
	}
}

int	ft_exec_process(int argc, char **argv, char **envp, t_arg *fdp)
{
	//int	pid;

	fdp->i = -1;
	ft_create_pipe(fdp);
	ft_child_proc(envp, argv, fdp);
//	while (++fdp->i < fdp->num_argc - 1)
//	{
//		if ((pid = fork()) == -1)
//		{
//			perror("Error with creating process\n");
//			return (2);
//		}
//		if (pid == 0)
//		{
//			ft_child_proc2(argv, envp, fdp);
//			return (3);
//		}
//		else
//		{
//			wait(0);
//			close((fdp[fdp->i].pp[1]));
//			if (fdp->i)
//				close(fdp[fdp->i - 1].pp[0]);
//		}
//	}
	ft_parent_proc(envp, argc, argv, fdp);
	return (0);
}

int	main(int argc, char **argv, char **envp)
{
	t_arg	*fdp;

	fdp = (t_arg *)malloc(sizeof(t_arg) * (argc - 3));
	fdp->num_argc = argc - 3;
	fdp->count = find_path(envp, argc);
	if (fdp->count == -1)
		return (1);
	if (argc < 5)
	{
		perror("Not enough arguments");
		exit(EXIT_FAILURE);
	}
	if (!ft_strncmp(argv[1], "here_doc", 8))
	{
		if (argc < 6)
		{
			perror("Not enough arguments");
			exit(EXIT_FAILURE);
		}
		fdp->flag = 1;
	}
	if (ft_exec_process(argc, argv, envp, fdp))
		return (2);
	free(fdp);
	//segfault ./a.out
	//seeking in current directory
	//initialize fds
	//посмотри права доступа функцией access()
}

