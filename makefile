CC = gcc
BINS = tinyRandom example clean

all: $(BINS)

tinyRandom:
	$(CC) -o build/tinyRandom.o -c src/tinyRandom.c

example:
	$(CC) -o build/example.exe test/example.c build/tinyRandom.o

_test: tinyRandom
	$(CC) -o build/unitTest.exe test/unitTest.c build/tinyRandom.o

clean:
	rm -f build/*.o
