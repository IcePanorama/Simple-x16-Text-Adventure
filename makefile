SRC_DIR = src/
SRC = $(SRC_DIR)*.c
TARGET = TEST.PRG
OBJECT = test.o
FLAGS = -t cx16 -O -l test.list

all: $(TARGET) move

TEST.PRG: 
	cl65 $(FLAGS) -o $@ $(SRC)

move:
	cp $(TARGET) ~/x16emu_linux-r41

clean:
	rm $(SRC_DIR)*.o *.PRG
