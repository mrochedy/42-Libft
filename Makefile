NAME = libft.a

CC = cc

AR = ar rc

CFLAGS = -Wall -Wextra -Werror

OBJS_DIR = objs

SRCS = ft_isalpha.c \
	ft_isdigit.c \
	ft_isalnum.c \
	ft_isascii.c \
	ft_isprint.c \
	ft_strlen.c \
	ft_memset.c \
	ft_bzero.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_strlcpy.c \
	ft_strlcat.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_strncmp.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_strnstr.c \
	ft_atoi.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_strtrim.c \
	ft_split.c \
	ft_itoa.c \
	ft_strmapi.c \
	ft_striteri.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c

BONUS_SRCS = ft_lstnew.c \
	ft_lstadd_front.c \
	ft_lstsize.c \
	ft_lstlast.c \
	ft_lstadd_back.c \
	ft_lstdelone.c \
	ft_lstclear.c \
	ft_lstiter.c \
	ft_lstmap.c

OBJS = $(SRCS:%.c=$(OBJS_DIR)/%.o)

BONUS_OBJS = $(BONUS_SRCS:%.c=$(OBJS_DIR)/%.o)

# ANSI color codes
GREEN = \033[1;32m
YELLOW = \033[1;33m
WHITE = \033[1;97m
BLUE = \033[1;34m
CYAN = \033[1;36m
RED = \033[1;31m
RESET = \033[0m

COL1 = \033[38;2;255;204;153m # Orange pastel
COL2 = \033[38;2;255;214;140m # Orange clair pastel
COL3 = \033[38;2;255;224;128m # Orange-jaune pastel
COL4 = \033[38;2;255;234;115m # Jaune-orangé pastel
COL5 = \033[38;2;255;244;102m # Jaune clair pastel
COL6 = \033[38;2;255;255;153m # Jaune pastel

all: $(NAME)

$(OBJS_DIR)/%.o: %.c
	@mkdir -p $(dir $@)
	@printf "$(CYAN)Compiling $<...$(RESET)\n"
	@$(CC) $(CFLAGS) -c $< -o $@                         

$(NAME): $(OBJS)
	@printf "\n$(YELLOW)Linking objects...$(RESET)\n"
	@$(AR) $(NAME) $(OBJS)
	@echo "$(BLUE)Progress: 100%$(RESET)"
	@printf "$(GREEN)Archive created!$(RESET)\n"
	@printf "\n$(COL1)██╗     ██╗██████╗ ███████╗████████╗\n"
	@printf "$(COL2)██║     ██║██╔══██╗██╔════╝╚══██╔══╝\n"
	@printf "$(COL3)██║     ██║██████╔╝█████╗     ██║   \n"
	@printf "$(COL4)██║     ██║██╔══██╗██╔══╝     ██║   \n"
	@printf "$(COL5)███████╗██║██████╔╝██║        ██║   \n"
	@printf "$(COL6)╚══════╝╚═╝╚═════╝ ╚═╝        ╚═╝   $(RESET)\n\n"

bonus: $(OBJS) $(BONUS_OBJS)
	@printf "\n$(YELLOW)Linking objects...$(RESET)\n"
	@$(AR) $(NAME) $(OBJS) $(BONUS_OBJS)
	@echo "$(BLUE)Progress: 100%$(RESET)"
	@printf "$(GREEN)Archive created!$(RESET)\n"
	@printf "\n$(COL1)██╗     ██╗██████╗ ███████╗████████╗     ██████╗  ██████╗ ███╗   ██╗██╗   ██╗███████╗\n"
	@printf "$(COL2)██║     ██║██╔══██╗██╔════╝╚══██╔══╝     ██╔══██╗██╔═══██╗████╗  ██║██║   ██║██╔════╝\n"
	@printf "$(COL3)██║     ██║██████╔╝█████╗     ██║        ██████╔╝██║   ██║██╔██╗ ██║██║   ██║███████╗\n"
	@printf "$(COL4)██║     ██║██╔══██╗██╔══╝     ██║        ██╔══██╗██║   ██║██║╚██╗██║██║   ██║╚════██║\n"
	@printf "$(COL5)███████╗██║██████╔╝██║        ██║███████╗██████╔╝╚██████╔╝██║ ╚████║╚██████╔╝███████║\n"
	@printf "$(COL6)╚══════╝╚═╝╚═════╝ ╚═╝        ╚═╝╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ ╚══════╝$(RESET)\n\n"

clean:
	@rm -rf $(OBJS_DIR)
	@printf "$(RED)Cleaned object files.$(RESET)\n"

fclean: clean
	@rm -f $(NAME)
	@printf "$(RED)Removed executable.$(RESET)\n"

re: fclean all

re_bonus: fclean bonus

.PHONY: all bonus clean fclean re re_bonus
