cmake_minimum_required(VERSION 3.19)
project(ft_pipex C)

set(CMAKE_C_STANDARD 11)

add_executable(ft_pipex pipex.c pipex.h libft/ft_putstr_fd.c libft/ft_strlen.c)