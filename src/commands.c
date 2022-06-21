#include "commands.h"
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/wait.h>

void exit_tish(char **args)
{
    exit(EXIT_SUCCESS);
}

int cd_tish(char **args)
{
    if (*args)
    {
        if (args[1] == NULL || strcmp(args[1], "~") == 0)
            chdir(getenv("HOME"));
        else if (chdir(args[1]) == -1)
        {
            printf("-tish: cd: %s: No such file or directory\n", args[1]);
            return EXIT_FAILURE;
        }
    }
    return EXIT_SUCCESS;
}

int cwd_tish(char **args)
{
    char cwdStr[100];

    if (getcwd(cwdStr, 100))
        printf("%s\n", cwdStr);
    else
    {
        perror("getcwd failed!");
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;

}

int ver_tish(char **args)
{
    //To be implemented more in detail
    printf("tinyshell v1.0");
    printf("jonathan camenzuli (c) 2022");
}

tishCommand_t execTishCommands[TISH_COMMANDS_NO] =
{
    {"exit", &exit_tish},
    {"cd", &cd_tish},
    {"cwd", &cwd_tish},
    {"ver", &ver_tish}
};

int execTishCommand(char* name, char **args)
{
    bool doesCommandExist = false;
    for (int i = 0; i < TISH_COMMANDS_NO; i++)
    {
        if (strncmp(execTishCommands[i].name, name) == 0)
        {
            doesCommandExist = true;
            execTishCommands[i].func(args);
            return EXIT_SUCCESS;
        }
    }

    if (doesCommandExist == false)
        return EXIT_FAILURE;
    
    return EXIT_SUCCESS;
}