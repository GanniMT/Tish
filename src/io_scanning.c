#include "io_scanning.h"
#include "commands.h"
#include "proc_control.h"
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

const char specialTishChars[] = {'~', '`', '#', '$', '&', '*',
                                 '(', ')', '[', ']', '{', '}',
                                 ':', '=', '?', '/', '!', '@',
                                 '+', '%', '\'',QMARK_CHAR, '|', '>',
                                 '<', SCOLON_CHAR, BSLASH_CHAR};

string_t* initStr()
{
    string_t* str;
    str = malloc(sizeof(string_t));
    str->string = malloc(sizeof(char));
    str->string[0] = NULL_CHAR;
    str->size = 1;
    return str;
}

args_t* initArgs()
{
    args_t* args;
    args = malloc(sizeof(args_t));
    args->arguments = malloc(sizeof(char*));
    args->arguments[0] = NULL;
    args->size = 1;
    return args;
}

void argsCat(args_t* args, string_t* str)
{
    if (str->size > 1)
    {
        args->arguments = realloc(args->arguments, sizeof(char*)*(args->size+1));
        args->arguments[args->size-1] = strdup(str->string);
        args->arguments[args->size++] = NULL;
        str->size = 1;
    }
}

void strCat(string_t* str, char ch)
{
    str->string = realloc(str->string, sizeof(char)*(str->size+1));
    str->string[str->size-1] = ch;
    str->string[str->size] = NULL_CHAR;
    str->size++;
}

args_t* tokenizer(char* inputBuffer)
{
    string_t* str = initStr();
    args_t* args = initArgs();

    for (char *ch_i = inputBuffer; *ch_i != NULL_CHAR; ch_i++)
    {
        if (*ch_i == SPACE_CHAR)
            argsCat(args, str);
        else if (*ch_i == QMARK_CHAR)
        {
            while (*++ch_i != QMARK_CHAR)
            {
                if (*ch_i == BSLASH_CHAR && (*(ch_i+1) == QMARK_CHAR || *(ch_i+1) == BSLASH_CHAR || *(ch_i+1) == SCOLON_CHAR))
                    strCat(str, *++ch_i);
                else
                    strCat(str, *ch_i);
            }
        }
        else if (*ch_i == BSLASH_CHAR)
        {
            if (*(ch_i+1) == QMARK_CHAR || *(ch_i+1) == BSLASH_CHAR)
                strCat(str, *++ch_i);
        }
        else
            strCat(str, *ch_i);
    }

    argsCat(args, str);
    free(str->string);
    free(str);
    return args;
}

char*** pipelineTokenizer(char** inputBuffer)
{
    int pipeSize = 1;
    int argSize = 1;

    char*** command = calloc(pipeSize+1, sizeof(char**));

    for (char** ch_i = inputBuffer; *ch_i != NULL; ++ch_i)
    {
        if (strcmp(*ch_i, "|") == 0)
        {
            command = realloc(command, (++pipeSize+1)*sizeof(char**));
            command[pipeSize-1] = NULL;
            argSize = 1;
        }
        else
        {
            command[pipeSize-1] = realloc(command[pipeSize-1], (++argSize)*sizeof(char*));
            command[pipeSize-1][argSize-2] = *ch_i;
            command[pipeSize-1][argSize-1] = NULL;
        }
    }

    command[pipeSize] = NULL;
    return command;
}

void freePipeline(char*** pipeline)
{
    for (char*** ch_i = pipeline; *ch_i != NULL; ++ch_i)
        free(*ch_i);
    free(pipeline);
}

bool isRedirValid(char** inputBuffer)
{
    bool redirect = false;
    bool isFilenameValid = false;

    for (char** ch_i = inputBuffer; *ch_i != NULL; ++ch_i)
    {   
        // Is there a redirection metacharacter?
        if (strcmp(*ch_i, ">") == 0 || strcmp(*ch_i, ">>") == 0 || strcmp(*ch_i, "<") == 0)
            redirect = true;

        // Does the filename include an invalid character?
        for (int i = 0; i < sizeof(specialTishChars)/sizeof(char); i++)
        {
            if (strchr(*ch_i+1, specialTishChars[i]) != NULL)
                isFilenameValid = true;
        }
        
        if (redirect && isFilenameValid)
            return true;
    }
    return false;
}

int getRedirType(char* token)
{
    // Output Redirection
    if (strcmp(token, ">") == 0)
        return 1;
    // Append Output Redirection
    else if (strcmp(token, ">>") == 0)
        return 2;
    // Input Redirection
    else if (strcmp(token, "<") == 0)
        return 3;
    else
        return 0;
}

void createPipeline(char* inputBuffer)
{
    args_t* args = tokenizer(inputBuffer);
    char** tokens = args->arguments;

    int token_i = 0;

    char* fileOut = NULL;
    char* fileIn = NULL;
    bool appendOut = false;
    bool quoteFirst = false;
    bool quoteComplete = false;

    for (char** ch_i = tokens; *ch_i != NULL; ++ch_i)
        token_i++;

    // Check for redirection metacharacters at the beginning or end of token
    if (strcmp(tokens[0], ">") == 0 || strcmp(tokens[0], ">>") == 0 || strcmp(tokens[0], "<") == 0 || strcmp(tokens[0], "|") == 0)
        fprintf(stderr, "-tish: syntax error near unexpected token \'%s\'\n", tokens[0]);
    else if (strcmp(tokens[token_i-1], ">") == 0 || strcmp(tokens[token_i-1], ">>") == 0 || strcmp(tokens[token_i-1], "<") == 0 || strcmp(tokens[token_i-1], "|") == 0)
        fprintf(stderr, "-tish: syntax error near unexpected token \'%s\'\n", tokens[token_i-1]);
    else if (!isRedirValid(tokens))
    {
        int tishExitCode = execTishCommand(tokens);
        // exit_tish() was executed
        if (tishExitCode == 2)
        {
            free(inputBuffer);
            free(args);
            exit(EXIT_SUCCESS);
        }
        // built-in command does not exist
        else if (tishExitCode == 1)
        {
            for (char** ch_i = tokens; *ch_i != NULL; ++ch_i)
            {
                int redirType = getRedirType(*ch_i);

                // Output Redirection
                if (redirType == 1)
                {
                    fileOut = strdup(*(ch_i+1));
                    for (char** newArgs = ch_i; *newArgs; ++newArgs)
                        *newArgs = *(newArgs+2);
                    args->size -= 2;
                    ch_i -= 2;
                }
                // Append Output Redirection
                else if (redirType == 2)
                    appendOut = true;
                // Input Redirection
                else if (redirType == 3)
                {
                    fileIn = strdup(*(ch_i+1));
                    for (char** newArgs = ch_i; *newArgs != NULL; ++newArgs)
                        *newArgs = *(newArgs+2);
                    args->size -= 2;
                    ch_i -= 2;
                }
            }

            char*** pipeline = pipelineTokenizer(tokens);
            forkExecPipe(pipeline, fileIn, fileOut, appendOut, false);
            free(fileOut);
            free(fileIn);
            freePipeline(pipeline);
        }
    }
    else
        fprintf(stderr, "-tish: syntax error: invalid filename\n");
    
    for (int i = 0; i < args->size; i++)
        free(args->arguments[i]);
    free(args->arguments);
    free(args);
}

void processTishInput(char* inputBuffer)
{
    char* inputBuf = inputBuffer;
    for (char* ch_i = inputBuffer; *ch_i; ++ch_i)
    {
        if (*ch_i == BSLASH_CHAR && *(ch_i+1) == SCOLON_CHAR)
            ch_i++;
        else if (*ch_i == SCOLON_CHAR)
        {
            *ch_i = NULL_CHAR;
            createPipeline(inputBuf);
            inputBuf = ++ch_i;
        }
        else if (*(ch_i+1) == NULL_CHAR)
            createPipeline(inputBuf);
    }
}

int refreshTishPrompt(char* tishPrompt, char* cwd)
{
    tishPrompt[0] = NULL_CHAR;

    if (getcwd(cwd, MAX_CWD_PATH))
    {   
        // user@tish:/cwd $
        strcat(tishPrompt, GREEN_ANSI);
        strcat(tishPrompt, getenv("USER"));
        strcat(tishPrompt, "@tish");
        strcat(tishPrompt, RESET_ANSI);
        strcat(tishPrompt, ":");
        strcat(tishPrompt, BLUE_ANSI);
        strcat(tishPrompt, cwd);
        strcat(tishPrompt, RED_ANSI);
        strcat(tishPrompt, " $ ");
        strcat(tishPrompt, RESET_ANSI);
        return EXIT_SUCCESS;
    }
    else
    {
        fprintf(stderr, "-tish: cannot get current working directory\n");
        return EXIT_FAILURE;
    }
}