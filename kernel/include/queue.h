#ifndef QUEUE_H__
#define QUEUE_H__

#define QUEUE_SIZE (1024)

struct queue {
    int data[QUEUE_SIZE];
    int front;      // 首
    int tail;       // 尾
    bool empty;
};

void init_queue(struct queue *);
void push_queue(struct queue *, int);
int pop_queue(struct queue *);


#endif  // QUEUE_H