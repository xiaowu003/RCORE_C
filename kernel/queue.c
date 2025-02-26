#include "types.h"
#include "defs.h"
#include "queue.h"
#include "riscv.h"
#include "proc.h"


void init_queue(struct queue *q) {
    q->front = q->tail = 0;
    q->empty = true;
}

void push_queue(struct queue *q, int value) {
    if (!q->empty && q->front == q->tail) {
        panic("queue shouldn't be overflow\n");
    }

    q->empty = false;
    q->data[q->tail] = value;
    q->tail = (q->tail + 1) % NPROC;
}

int pop_queue(struct queue *q) {
    if (q->empty) {
        return -1;
    }

    int value = q->data[q->front];
    
    q->front = (q->front + 1) % NPROC;
    if (q->front == q->tail) {
        q->empty = true;
    }

    return value;
}
