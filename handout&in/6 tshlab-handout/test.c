#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

extern pid_t waitpid();
int c = 1;
void handler1(int sig)
{
    c++;
    printf("%d\n", c);
}

int main()
{
    signal(SIGUSR1, handler1);
    sigset_t s;
    sigemptyset(&s);
    sigaddset(&s, SIGUSR1);
    sigprocmask(SIG_BLOCK, &s, 0);
    int pid = fork() ? fork() : fork();
    if (pid == 0)
    {
        kill(getppid(), SIGUSR1);
        printf("S\n");
        sigprocmask(SIG_UNBLOCK, &s, 0);
        exit(0);
    }
    else
    {
        pid_t tmp;
        while ((tmp = waitpid(-1, NULL, 0)) != -1)
            ;
        sigprocmask(SIG_UNBLOCK, &s, 0);
        printf("P\n");
    }
    //printf("\n");
    return 0;
}