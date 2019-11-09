#include <unistd.h>
#include <stdio.h>

int main(){
    int x;
    x = 0;
    while(x< 1000000){
        printf("end");
        sleep(1);
        x++;
    }
    printf("end");
}