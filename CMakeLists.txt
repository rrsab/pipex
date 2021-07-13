cmake_minimum_required(VERSION 3.19)
project(ft_pipex C)

set(CMAKE_C_STANDARD 11)

add_executable(ft_pipex pipex.c pipex.h libft/ft_putstr_fd.c libft/ft_strlen.c libft/ft_split.c libft/ft_strjoin3.c
        libft/ft_strncmp.c libft/ft_strchr.c libft/ft_strdup.c libft/ft_strjoin.c libft/ft_strlcpy.c gnl/get_next_line.c
        libft/ft_substr.c libft/ft_memcpy.c pipex_utils.c pipex_utils1.c)