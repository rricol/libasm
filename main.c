#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <stdlib.h>

extern size_t ft_strlen(const char *str);
extern char *ft_strcpy(char *dest, const char *src);
extern int ft_strcmp(const char *s1, const char *s2);
extern ssize_t ft_write(int fd, const void *buf, size_t count);
extern ssize_t ft_read(int fd, void *buf, size_t count);
extern char *ft_strdup(const char *s1);

int main(int argc, char const *argv[])
{
    // Test ft_strlen
    printf("ft_strlen: %zu\n", ft_strlen("Hello, World!"));

    // Test ft_strcpy
    char dest[50];
    printf("ft_strcpy: %s\n", ft_strcpy(dest, "Hello, World!"));

    // Test ft_strcmp
    printf("ft_strcmp: %d\n", ft_strcmp("Hello", "Hello"));
    printf("ft_strcmp: %d\n", ft_strcmp("Hello", "World"));
    printf("ft_strcmp: %d\n", ft_strcmp("World", "Hello"));

    // Test ft_write
    const char *msg = "Hello, World!\n";
    ft_write(1, msg, ft_strlen(msg));

    // Test ft_read
    char buffer[50];
    int bytes_read = ft_read(0, buffer, 50);
    if (bytes_read < 0)
    {
        perror("ft_read");
    }
    else
    {
        buffer[bytes_read] = '\0';
        printf("ft_read: %s\n", buffer);
    }

    // Test ft_strdup
    char *dup = ft_strdup("Hello, World!");
    if (dup)
    {
        printf("ft_strdup: %s\n", dup);
        free(dup);
    }
    else
    {
        perror("ft_strdup");
    }

    return 0;
}
