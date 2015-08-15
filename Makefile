CC=gcc
GIT_COMMIT := $(shell git rev-parse -- short HEAD)
CFLAGS=-I. -DGIT_COMMIT=$(GIT_COMMIT)
OBJ = gittest.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

gittest: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)
