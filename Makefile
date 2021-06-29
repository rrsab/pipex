NAME	= pipex

SRCS	= pipex111.c gnl/get_next_line.c

OBJS	= $(patsubst %.c, %.o, $(SRCS))

CC		= gcc

RM		= rm -f

HEADER	= pipex.h gnl/get_next_line.h

CFLAGS	= -Wall -Wextra -Werror

all:		$(NAME)

$(NAME):	$(SRCS)	libft/libft.a $(HEADER)
			$(CC) $(CFLAGS) $(SRCS) libft/libft.a -o $(NAME)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re