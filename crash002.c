#include <stdlib.h>
void test(){
    unsigned char buf[8];
    unsigned char ch;
    unsigned char len = 0;
    write(1, "input:\n", 7);
    do{
        read(0, &ch, 1);
        *(char *)(buf+(len++)) = ch;
    }while(ch != '\n');
    write(1, "\nyou had input:\n", 16);
    write(1, buf, len);
}

void main(){
    test();
    exit(0);
}
