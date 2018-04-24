CC=g++
CFLAGS=-lmraa

all:
	@$(CC) flick.cpp flick_example.cpp -o flick_example $(CFLAGS)
clean:
	@rm -rf flick_example
