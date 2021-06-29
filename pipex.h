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
} t_arg;

#endif
