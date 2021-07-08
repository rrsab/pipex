#ifndef PIPEX_H
# define PIPEX_H

# include <unistd.h>
# include <stdio.h>
# include <time.h>
# include <fcntl.h>
# include <sys/types.h>
# include <sys/wait.h>
# include <stdlib.h>
# include "libft/libft.h"
# include "gnl/get_next_line.h"

typedef struct s_arg
{
	int	pp[2];
	int	flag;
	int	num_argc;
	int	count;
	int	i;
}	t_arg;
void	do_execve(char **envp, char **argv, int i, t_arg *fdp);
void	ft_next_pipe(t_arg *fdp);
void	ft_parent_proc(char **envp, int argc, char **argv, t_arg *fdp);
void	ft_child_proc1(char **argv, t_arg *fdp);
void	ft_child_proc2(char **argv, char **envp, t_arg *fdp);
int 	ft_child_proc(char **envp, char **argv, t_arg *fdp);
int		ft_strncmp_buf(const char *s1, const char *s2);

#endif
