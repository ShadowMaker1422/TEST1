CC= gcc
DEPS= lib.h
INC_DIR= ./inc ./core
SRC_DIR= ./src ./core
CFLAGS= $(foreach inc,$(INC_DIR),-I$(inc))
VPATH= $(foreach src,$(SRC_DIR),$(src))

%.o: %.c $(DEPS)
	$(CC) -c $< -o $@  $(CFLAGS)
all: main.o lib.o
	$(CC) main.o lib.o -o main.exe

clean:
	rm -f *.exe *.o