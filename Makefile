NAME	= pipex

BONUS	= pipex_bonus

SRCS	= pipex.c pipex_utils.c pipex_utils1.c gnl/get_next_line.c

SRCS_B	= pipex_bonus.c pipex_utils_bonus.c pipex_utils1_bonus.c gnl/get_next_line.c

OBJS	= $(patsubst %.c, %.o, $(SRCS))

OBJS_B	= $(patsubst %.c, %.o, $(SRCS_B))

CC		= gcc

RM		= rm -f

HEADER	= pipex.h gnl/get_next_line.h

HEAD_B	= pipex_bonus.h gnl/get_next_line.h

CFLAGS	= -Wall -Wextra -Werror

all:		$(NAME)

$(NAME):	$(SRCS)	libft/libft.a $(HEADER)
			@make -C libft
			$(CC) $(CFLAGS) $(SRCS) libft/libft.a -o $(NAME)

$(BONUS):	$(SRCS_B)	libft/libft.a $(HEAD_B)
			@make -C libft
			$(CC) $(CFLAGS) $(SRCS_B) libft/libft.a -o $(BONUS)

bonus:		$(BONUS)

clean:
			$(RM) $(OBJS) $(OBJS_B)
			@$(MAKE) clean -C ./libft/

fclean:		clean
			$(RM) $(NAME) $(BONUS)

re:			fclean all

.PHONY:		all clean fclean re bonus