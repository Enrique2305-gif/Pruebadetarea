CC = gcc
CFLAGS = -Wall -g
OBJ = main.o distanceFunc.o
OUT = program

all: $(OUT)

$(OUT): $(OBJ)
	$(CC) $(CFLAGS) -o $(OUT) $(OBJ)

main.o: main.c distance.h
	$(CC) $(CFLAGS) -c main.c

distanceFunc.o: distanceFunc.c distance.h
	$(CC) $(CFLAGS) -c distanceFunc.c

clean:
	rm -f *.o $(OUT)
