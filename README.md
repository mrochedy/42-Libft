# 42-Libft, by Maxime Rochedy

Here is my implementation of **Libft**, a fundamental project completed during my studies at **École 42**, designed to re-create essential C standard library functions. This repository contains my full implementation of the **Libft** project, which received the maximum score of **125/125**.

Here, you'll find a carefully crafted version that was evaluated by three different students, as well as the **Moulinette** correction tool. While every effort was made to ensure the code is bug-free, errors may still exist. Your feedback is highly appreciated!

<img width="198" alt="125/100 grade" src="https://github.com/user-attachments/assets/708486c1-c045-40d6-ab0c-e5dc3650a50d">

## About the Project

This repository provides a **complete implementation** of the **Libft** project from 42, including all mandatory functions and additional bonus features. It was coded by **Maxime Rochedy**, under the login **mrochedy**, as part of the 42 program. The goal of Libft is to give developers a deeper understanding of how core functions work under the hood and to build a personal C library.

Please note that while this code is provided for **learning purposes**, you should not copy it for your own submissions. Using this repository responsibly will help you enhance your understanding of C and low-level programming principles. Please respect the 42 school's policies on plagiarism.

## Getting Started

To use this library in your own projects, simply clone the repository and compile the files with your own project. Here's how:

```bash
git clone https://github.com/mrochedy/42-Libft.git
cd 42-Libft
make
```

Or, with bonus:

```bash
git clone https://github.com/mrochedy/42-Libft.git
cd 42-Libft
make bonus
```

Once compiled, you can link the `libft.a` library with your project.

## Functions Overview

Here is a list of the **Libft** functions implemented in this project. Each function serves to replicate or extend a common C standard library function.

### Standard Functions

- **`ft_isalpha`**: Checks if a character is an alphabetic letter.
- **`ft_isdigit`**: Determines if a character is a digit (0-9).
- **`ft_isalnum`**: Checks if a character is alphanumeric (letter or digit).
- **`ft_isascii`**: Verifies if a character belongs to the ASCII set.
- **`ft_isprint`**: Tests if a character is printable, including space.
- **`ft_strlen`**: Returns the length of a string (excluding the null terminator).
- **`ft_memset`**: Fills a block of memory with a specified value.
- **`ft_bzero`**: Sets a block of memory to zero.
- **`ft_memcpy`**: Copies a block of memory from one location to another.
- **`ft_memmove`**: Similar to `memcpy` but safely handles overlapping memory areas.
- **`ft_strlcpy`**: Copies a string with a size limit, ensuring null-termination.
- **`ft_strlcat`**: Appends one string to another with size constraints.
- **`ft_toupper`**: Converts a lowercase character to uppercase.
- **`ft_tolower`**: Converts an uppercase character to lowercase.
- **`ft_strchr`**: Finds the first occurrence of a character in a string.
- **`ft_strrchr`**: Finds the last occurrence of a character in a string.
- **`ft_strncmp`**: Compares two strings up to a specified number of characters.
- **`ft_memchr`**: Searches for a byte in a block of memory.
- **`ft_memcmp`**: Compares two blocks of memory byte by byte.
- **`ft_strnstr`**: Locates a substring within a string, with a size limit.
- **`ft_atoi`**: Converts a string to an integer, handling spaces and signs.

### Additional Custom Functions

- **`ft_substr`**: Allocates and returns a substring from a given string, starting at a specified index and up to a maximum length.
- **`ft_strjoin`**: Concatenates two strings into a new, allocated string.
- **`ft_strtrim`**: Removes specified characters from the beginning and end of a string and returns the trimmed result.
- **`ft_split`**: Splits a string into an array of substrings based on a delimiter character.
- **`ft_itoa`**: Converts an integer into a string representation.
- **`ft_strmapi`**: Creates a new string by applying a function to each character of a string, with access to the character’s index.
- **`ft_striteri`**: Applies a function to each character of a string, passing both the character and its index by reference for potential modification.
- **`ft_putchar_fd`**: Outputs a single character to a specified file descriptor.
- **`ft_putstr_fd`**: Outputs a string to a specified file descriptor.
- **`ft_putendl_fd`**: Outputs a string to a specified file descriptor, followed by a newline.
- **`ft_putnbr_fd`**: Outputs an integer to a specified file descriptor.

### Bonus Linked List Functions

- **`ft_lstnew`**: Creates a new linked list node, initializing its content and setting the next pointer to `NULL`.
- **`ft_lstadd_front`**: Adds a new node at the beginning of a linked list.
- **`ft_lstsize`**: Returns the number of nodes in a linked list.
- **`ft_lstlast`**: Returns the last node of a linked list.
- **`ft_lstadd_back`**: Adds a new node at the end of a linked list.
- **`ft_lstdelone`**: Frees the memory of a node’s content using a specified delete function, then frees the node itself.
- **`ft_lstclear`**: Deletes and frees all nodes from a given node onward, using a specified delete function.
- **`ft_lstiter`**: Iterates through a list and applies a function to each node’s content.
- **`ft_lstmap`**: Iterates through a list, applying a function to each node’s content, and creates a new list with the results.

## Contributing

If you found this repository helpful, feel free to ⭐️ **star** ⭐️ the project to support its visibility. Contributions and improvements are welcome through pull requests, but please refrain from submitting this code as your own in official 42 projects.

Thank you for visiting and happy coding!
