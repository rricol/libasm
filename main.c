#include <stdio.h>
#include <string.h>

extern size_t ft_strlen(const char *str);
extern char *ft_strcpy(char *dest, const char *src);
extern int ft_strcmp(const char *s1, const char *s2);

int main(int argc, char const *argv[])
{
    if (argc == 2)
    {
        // Testing ft_strlen
        size_t i = ft_strlen(argv[1]);
        printf("ft_strlen: %zu\n", i);

        // Testing ft_strcpy
        char dest[ft_strlen(argv[1]) + 1];
        ft_strcpy(dest, argv[1]);
        printf("ft_strcpy: %s\n", dest);
    } 
    else if (argc == 3) 
    {
        // testing ft_strcmp
        printf("ft_strcmp: %d\n", ft_strcmp(argv[1], argv[2]));
    }
    else 
    {
        printf("Usage: %s <string> or %s <string1> <string2>\n", argv[0], argv[0]);
    }
    return 0;
}
