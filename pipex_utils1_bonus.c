#include "pipex_bonus.h"

void	ft_perror(char *str)
{
	perror(str);
	exit(EXIT_FAILURE);
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

int	find_path(char **envp)
{
	int	count;
	int	flag;

	count = 0;
	flag = -1;
	while (envp[count])
	{
		if ((ft_strncmp("PATH=", envp[count], 5)) == 0)
		{
			flag = 1;
			return (count);
		}
		count++;
	}
	return (flag);
}

void	do_execve(char **envp, char **argv, int i, t_arg *fdp)
{
	char	*path;
	char	**dv;
	char	**cmd1;
	char	*str;
	int		j;

	j = 0;
	path = envp[fdp->count] + 5;
	dv = ft_split(path, ':');
	cmd1 = ft_split(argv[2 + i], ' ');
	while (dv[j])
	{
		str = ft_strjoin3(dv[j], '/', cmd1[0]);
		execve(str, cmd1, envp);
		j++;
		free(str);
	}
	ft_putstr_fd("pipex: command not found: ", 2);
	ft_putstr_fd(cmd1[0], 2);
	ft_putstr_fd("\n", 2);
	exit(EXIT_FAILURE);
}
