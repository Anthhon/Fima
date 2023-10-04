#include<unistd.h>

int main(void)
{
        char *message = "Welcome to fima!\n";
        write(1, message, sizeof message);
}
