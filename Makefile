NAME	= pipex

SRCS	= pipex.c

OBJS	= $(patsubst %.c, %.o, $(SRCS))

CC		= gcc

RM		= rm -f

HEADER	= pipex.h

CFLAGS	= -Wall -Wextra -Werror

all:		$(NAME)

$(NAME):	$(SRCS)	libft/libft.a
			$(CC) $(CFLAGS) $(SRCS) libft/libft.a -o $(NAME)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re