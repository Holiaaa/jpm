#include <stdio.h>
#include <stdlib.h>

// Jink Package Manager - jpm
// Here is the code of the executable that use jpmtool shell script.
// Source code at https://github.com/jink-system/jpm
//
// Jink Linux 2024

int main(int argc, char *argv[]) {
    if (argc == 1) {
        system("sh /bin/jpmtool");
    } else {
        char command[4096] = "sh /bin/jpmtool ";
        for (int i = 1; i < argc; i++) {
            strcat(command, argv[i]);
            strcat(command, " ");
        }
        system(command);
    }
    return 0;
}

// This file need for Jink Linux to be compiled in static.
// with this commmand : gcc -static jpm.c -o jpm

