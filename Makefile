# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jcentaur <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/28 11:21:34 by jcentaur          #+#    #+#              #
#    Updated: 2016/12/06 10:28:58 by cmeaun-a         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

SRC = ./sources/ft_check.c ./sources/main.c ./sources/ft_check_block.c \
	  ./sources/ft_coordinate.c ./sources/ft_solver.c \
	  ./sources/ft_solver_bis.c ./sources/ft_memset.c \
	  ./sources/ft_putchar_fd.c ./sources/ft_putendl_fd.c \
	  ./sources/ft_strlen.c ./sources/ft_strsub.c ./sources/ft_strnew.c

OBJ = ./sources/ft_check.o ./sources/main.o ./sources/ft_check_block.o \
	  ./sources/ft_coordinate.o ./sources/ft_solver.o \
	  ./sources/ft_solver_bis.o ./sources/ft_memset.o \
	  ./sources/ft_putchar_fd.o ./sources/ft_putendl_fd.o \
	  ./sources/ft_strlen.o ./sources/ft_strsub.o ./sources/ft_strnew.o

HDR = ./includes/

FLAGS = -Wall -Werror -Wextra

.PHONY: all, clean, fclean, re

all: $(NAME)

$(NAME): $(OBJ)
	gcc $(OBJ) -o $(NAME)
	@echo "\x1B[34m"
	@echo "░░░░░░░░░░░░░░░░░░░░\x1B[33;7m42\x1B[0m\x1B[34m░░░░░░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░░░░░░▐▐░░░░░░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░░░░▐▐▐▐▐▐░░░░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░░░▐▐▐▐▐▐▐▐▐░░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░▐▐▐▐▐▐▐▐░▐▐▐░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░▐▐▐▐▐▐▐▐▐░░▐▐▐░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░▐▐▐▐▐▐▐▐▐▐▐░░░▐▐░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░▐▐▐▐▐▐▐▐▐▐░░░░░░▐▐░░░░░░░░░░░░\n\
	░░░░░░░░░░▐▐▐▐▐▐▐▐▐▐░░░░░░░░░▐▐░░░░░░░░░░░\n\
	░░░░░░░░░░▐▐▐▐▐▐▐▐▐░░░░░░░░░░░▐▐░░░░░░░░░░\n\
	░░░░░░░░░▐▐▐▐▐░░░░░░░░░░░░░░░░░▐▐░░░░░░░░░\n\
	░░░░░░░░▐▐▐▐▐▐▐▐░░░░░░░░░▐▐▐▐▐░▐▐░░░░░░░░░\n\
	░░░░░░░░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░░░░░░░░░░\n\
	░░░░░░░░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░░░░░░░░░\n\
	░░░░░░░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░░░░░░░░\n\
	░░░░░░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░▐▐░░░░░░░░░\n\
	░░░░░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░░▐▐░░░░░░░░\n\
	░░░░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░░░░░░░░▐▐░░░░░░░\n\
	\x1B[0m░░░░░░▐▐▐▐▐▐▐▐▐▐▐▐░░░░░░░░░░░░░░░░▐▐░░░░░░\n\
	░░░░░▐▐▐▐░░▐▐░░░░░░░░░░░░░░░░░░░░░░▐▐░░░░░\n\
	░░░░▐▐▐▐▐▐▐░░░░░░▐▐▐▐▐░░░░░░▐▐▐▐▐▐▐▐▐░░░░░\n\
	░░░░▐▐░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░░░░░░░░\n\
	░░░░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░▐▐░░░░░░░░░\n\
	░░░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░▐▐▐▐░░░▐▐░░░░░░░\n\
	░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░░░░░░░▐▐░░░░░\n\
	░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░░░░░░░░░░▐▐▐░░░\n\
	░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░▐░░░░░░░░░░░░░░░░░░░░▐▐░░\n\
	▐▐▐▐▐▐▐▐▐░▐░░░░░░░░░░░░░░░░░░░░░░░▐▐▐▐▐▐▐░\n\
	░░░░░░░▐▐▐░░░░░░░▐▐▐▐▐▐▐░░░░░░▐▐▐▐▐▐░░░░░░\n\
	░░░░░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░░░░░\n\
	░░░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░▐▐░░░░░░\n\
	░░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░▐▐▐░░░░\n\
	░░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░░░▐▐░░░\n\
	░░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░░░░░░░░░░░▐▐░░\n\
	░▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░▐░░░░░░░░░░░░░░░▐▐░\n\
	▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐▐░▐░░░░░░░░░░░░░░░░░░░▐▐▐▐\n\
	\x1B[31m░░░░░▐▐▐▐▐▐▐▐▐▐▐░░░░░░░░▐▐▐░░░░▐▐▐▐▐▐▐▐░░░\n\
	░░░░░░░░░░░░░░░░▐▐▐░▐▐▐▐▐░▐▐▐▐▐░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░░▐▐▐▐▐▐▐▐░░░░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░░▐▐▐▐▐▐░▐░░░░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░░▐▐▐▐▐▐░▐░░░░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░░▐▐▐▐▐░░▐░░░░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░░▐▐▐▐░░░▐░░░░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░░▐▐▐▐▐▐▐▐░░░░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\n\
	░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\n\
	░░░░▐▐▐▐▐▐▐▐░░▐▐▐▐▐▐▐▐░░░░▐▐▐░░▐▐▐▐▐▐▐░░░░\n\
	░░░░░░░░░░▐▐░░▐▐░░░░▐▐░░▐▐▐▐▐░░▐▐░░░░░░░░░\n\
	░░░░░░░░░░▐▐░░▐▐░░░░▐▐░░▐▐▐▐▐░░▐▐░░░░░░░░░\n\
	░░░░▐▐▐▐▐▐▐▐░░▐▐░░░░▐▐░░░░░▐▐░░▐▐▐▐▐▐▐░░░░\n\
	░░░░▐▐░░░░░░░░▐▐░░░░▐▐░░░░░▐▐░░▐▐░░░▐▐░░░░\n\
	░░░░▐▐░░░░░░░░▐▐░░░░▐▐░░░░░▐▐░░▐▐░░░▐▐░░░░\n\
	░░░░▐▐▐▐▐▐▐▐░░▐▐▐▐▐▐▐▐░░░░░▐▐░░▐▐▐▐▐▐▐░░░░\n\
	░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░" -e
	@echo "\x1B[0m"
%.o: %.c
	@echo "\x1B[33m"
	gcc $(FLAGS) -I$(HDR) -o $@ -c $< 

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

