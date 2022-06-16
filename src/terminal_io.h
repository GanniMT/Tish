/**
 * @file terminal_io.h
 * @author Jonathan Camenzuli
 * @brief CPS1012 Assignment - Terminal Input and Output (Task 3)
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#ifndef __TERMINAL_IO_H
#define __TERMINAL_IO_H

/**
 * @brief A struct that represents a string
 * 
 */
typedef struct 
{
    char *string;   /**< the string itself */
    int size;       /**< the size of string itself */
}string_t;

/**
 * @brief A struct that represents an argument
 * 
 */
typedef struct
{
    char **args;    /**< the string itself */
    int size;       /**< the size of string itself */ 
}arg_t;

/**
 * @brief Initialise the string composite data type
 * 
 * @return string_t initialised, memory allocated string
 */
string_t* init_str();

/**
 * @brief Get the length of string "object"
 * 
 * @param str String to get length from
 * @return int length of string
 */
int get_str_length(string_t* str);

/**
 * @brief Output the string "object"
 * 
 * @param str String to output
 */
void print_str(string_t* str);

/**
 * @brief Free memory allocated to string
 * 
 * @param str String to free memory allocated to it
 */
void free_str(string_t* str);

/**
 * @brief Initialise the argument composite data type
 * 
 * @return arg_t initialised, memory allocated argument
 */
arg_t* init_arg();

#endif