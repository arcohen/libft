# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arcohen <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/30 15:00:31 by arcohen           #+#    #+#              #
#    Updated: 2018/05/30 15:00:38 by arcohen          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc -c
CFLAGS = -Wall -Wextra -Werror
SRC = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memset.c ft_putchar_fd.c ft_putchar.c ft_putendl_fd.c ft_putendl.c ft_putnbr_fd.c ft_putnbr.c ft_putstr_fd.c ft_putstr.c ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c ft_strcpy.c ft_strdel.c ft_strdup.c ft_strequ.c ft_strjoin.c ft_strlen.c ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strnequ.c ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strstr.c ft_strsub.c ft_tolower.c ft_toupper.c ft_strlcat.c ft_memalloc.c ft_memdel.c ft_strtrim.c ft_strsplit.c ft_itoa.c ft_memmove.c ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c ft_lstadd.c ft_lstdel.c ft_lstdelone.c ft_lstiter.c ft_lstmap.c ft_lstnew.c

OBJ = *.o
RM = rm -f

all: $(NAME)

$(NAME):
	@$(CC) $(FLAG) $(SRC)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "=================="
	@echo "=      Libft     ="
	@echo "=    Compiled    ="
	@echo "=  Successfully  ="
	@echo "=================="

clean:
	@$(RM) $(OBJ)
	@echo "=============="
	@echo "=   Removed  ="
	@echo "=   Object   ="
	@echo "=   Files    ="
	@echo "=============="

fclean:
	@$(RM) $(OBJ)
	@$(RM) $(NAME)
	@echo "==============="
	@echo "=    Libft    ="
	@echo "=      &      ="
	@echo "=   Objects   ="
	@echo "=   Removed   ="
	@echo "==============="

re: fclean all
