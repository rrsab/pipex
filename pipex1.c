#include "pipex.h"

static void	ft_cmd1(int *pp, char **argv, char **envp)
{
	int		input;
	char 	*cmd;
	char	*cmd1;
	char 	**tmp;

	tmp = envp;
	close(pp[0]);
	dup2(pp[1], 1);
	close(pp[1]);
	input = open(argv[1], O_RDONLY, 0);
	if (input == -1)
		exit(0);
	dup2(input, 0);
	//cmd = ft_split(argv[2], ' ');
	cmd = argv[2];
	cmd1 = "/usr/bin ";
	if (execlp(cmd, "", NULL) == -1)
	{
		ft_putstr_fd("pipex: command not found: ", 2);
		ft_putendl_fd(cmd, 2);
		exit(0);
	}
}

static void	ft_cmd2(int *pp, char **argv, char **envp)
{
	int		output;
	char 	*cmd;
	char 	*cmd1;
	char	**tmp;

	tmp = envp;
	output = open(argv[4], O_RDWR | O_CREAT | O_TRUNC, 777);
	wait(0);
	close(pp[1]);
	dup2(pp[0], 0);
	close(pp[0]);
	dup2(output, 1);
	//cmd = ft_split(argv[3], ' ');
	cmd = argv[3];
	cmd1 = "/bin ";
	if (execlp(cmd, "", NULL) == -1)
	{
		ft_putstr_fd("pipex: command not found: ", 2);
		ft_putendl_fd(cmd, 2);
		exit(0);
	}
}

int	main(int argc, char **argv, char **envp)
{
	pid_t	pid;
	int 	pp[2];
	int		i;
	//char	**str;

	i = 0;
	//str = ft_split(*envp, ' ');
//	while (str)
//		printf("str =%s", str[i++]);

	i = -1;
	while (++i < argc)
		printf("argv= :%s i=%i\n", argv[i], i);
	//printf("%s", *envp);
	if (argc != 5)
	{
		ft_putstr_fd("Usage : ./pipex infile cmd1 cmd2 outfile\n", 2);
		//printf("Usage : ./pipex infile cmd1 cmd2 outfile\n");
		return (0);
	}
	if (pipe(pp) == -1)
		return (0);
	pid = fork();
	if (pid == -1)
	{
		ft_putstr_fd("Fork failed\n", 2);
		return (0);
	}
	if (pid == 0)
	{
		//printf("pervaj funksia");
		ft_cmd1(pp, argv,envp);
	}
	else
	{
		//printf("vtoraj funksia");
		ft_cmd2(pp, argv, envp);
	}
	return (0);
}