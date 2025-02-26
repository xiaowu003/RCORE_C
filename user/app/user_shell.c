const unsigned char LF = 0x0a;
const unsigned char CR = 0x0d;
const unsigned char DL = 0x7f;
const unsigned char BS = 0x08;


// 手搓了一个极简的 stack，用来维护用户输入，保存一行的输入
char line[100] = {};
int top = 0;
void push(char c){ line[top++] = c; }
void pop() { --top; }
int is_empty() { return top == 0;}
void clear() { top = 0; }

int main()
{
    printf("C user shell\n");
    printf(">> ");
    fflush(stdout);
    while (1) {
        char c = getchar();
        switch (c) {
        // 回车，执行当前 stack 中字符串对应的程序
        case LF:
        case CR:
            printf("\n");
            if (!is_empty()) {
                push('\0');
                int pid = fork();
                if (pid == 0) {
                    // child process
                    if (exec(line, 0) < 0) {
                        printf("no such program: %s\n",
                            line);
                        exit(0);
                    }
                    panic("unreachable!");
                } else {
                    int xstate = 0;
                    int exit_pid = 0;
                    exit_pid = waitpid(pid, &xstate);
                    assert(pid == exit_pid);
                    printf("Shell: Process %d exited with code %d\n",
                        pid, xstate);
                }
                clear();
            }
            printf(">> ");
            fflush(stdout);
            break;
        // 退格建，pop一个char
        case BS:
        case DL:
            if (!is_empty()) {
                putchar(BS);
                printf(" ");
                putchar(BS);
                fflush(stdout);
                pop();
            }
            break;
        // 普通输入，回显并 push 一个 char
        default:
            putchar(c);
            fflush(stdout);
            push(c);
            break;
        }
    }
    return 0;
}