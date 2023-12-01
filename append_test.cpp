#include <iostream>

#include <algorithm>
#include <cstring>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <malloc.h>
#include <fcntl.h>

#include <unistd.h>
#include <stdio.h>

int main(int argc, char** argv){

    printf("APPENDING %s\n", argv[1]);

    char* buff = (char*)malloc(sizeof(char) * 4096);

    for(int i = 0; i < 4096; i++){

        buff[i] = (97 + (i % 26));

    }

    int fd = open(argv[1], O_RDWR);

    if(fd == -1){
        perror("invalid open");
        exit(-1);
    }

    int ret = lseek(fd, 0, SEEK_END);

    if(ret == -1){
        perror("invalid seek");
        exit(-1);
    }

    ret = write(fd, buff, 4096);

    if(ret != 4096){
        perror("invalid write");
        exit(-1);
    }


    return 0;
}