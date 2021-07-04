#ifndef FT_PIPEX_PIPEX_H
#define FT_PIPEX_PIPEX_H

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
	int pp[2];
	int flag;
	int num_argc;
	int	count;
} t_arg;
void	do_execve(char **envp, char **argv, int i, t_arg *fdp);
void	ft_next_pipe(int i, t_arg *fdp);
void	ft_parent_proc(int argc, char **argv, t_arg *fdp);
void	ft_child_proc1(int i, char **argv, t_arg *fdp);
void	ft_child_proc2(int i, char **argv, char **envp, t_arg *fdp);

#endif
