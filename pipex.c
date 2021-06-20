#include "pipex.h"

int	main(int argc, char **argv, char **envp)
{
	int 	pids[3];
	int 	pipes[3][2];
	int		i;
	int		j;
	int 	input, output;
	char	**str;

	i = -1;
	while (++i < argc)
		printf("argv= :%s i=%i\n", argv[i], i);

	str = envp;
	i = -1;
	while (++i < argc - 2)
		if (pipe(pipes[i]) == -1)
		{
			ft_putstr_fd("Error witn creating pipe\n", 2);
			return (1);
		}
	i = -1;
	while (++i < argc - 3)
	{
		pids[i] = fork();
		if (pids[i] == -1)
		{
			ft_putstr_fd("Error witn creating process\n", 2);
			return (2);
		}
		if (pids[i] == 0)		//Child process
		{
			j = -1;
			while (++j < argc - 2)
			{
				if ( i != j)
					close(pipes[j][0]);
				if (i + 1 != j)
					close(pipes[j][1]);
			}
			dup2(pipes[i][1], 0);
			close(pipes[i][0]);
			dup2(pipes[i + 1][1],1);
			close(pipes[i + 1][1]);
			printf("privet\n");
			if (execlp(argv[i + 2], argv[i + 2], NULL) == -1)
			{
				ft_putstr_fd("pipex: command not found: ", 2);
				//ft_putendl_fd(cmd, 2);
				exit(0);
			}
		}
	}

//	i = -1;
//	while (++i < argc)
//		printf("argv= :%s i=%i\n", argv[i], i);
	//printf("%s", *envp);
	if (argc != 5)
	{
		ft_putstr_fd("Usage : ./pipex infile cmd1 cmd2 outfile\n", 2);
		//printf("Usage : ./pipex infile cmd1 cmd2 outfile\n");
		return (0);
	}
	input = open(argv[1], O_RDONLY, 0);
	if (input == -1)
		exit(0);
	dup2(input, pipes[0][1]);
	close(input);

	output = open(argv[4], O_RDWR | O_CREAT | O_TRUNC, 777);
	dup2(output, pipes[argc - 3][0]);
	wait(NULL);
	close(pipes[0][1]);
	close(pipes[argc - 3][0]);

//	if (pipe(pp) == -1)
//		return (0);
//	pid = fork();
//	if (pid == -1);
//	{
//		ft_putstr_fd("Fork failed\n", 2);
//		return (0);
//	}
//	if (pid == 0)
//	{
//		//printf("pervaj funksia");
//		ft_cmd1(pp, argv,envp);
//	}
//	else
//	{
//		//printf("vtoraj funksia");
//		ft_cmd2(pp, argv, envp);
//	}
	return (0);
}