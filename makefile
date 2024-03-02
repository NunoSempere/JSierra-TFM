CC=gcc
LIBCODE=include/Array.c include/Array.h include/LinkedList.c include/LinkedList.h include/Matrix.c include/Matrix.h include/Sterographic.c include/Sterographic.h include/Triangulate.c include/Triangulate.h include/Vector.c include/Vector.h 
DEBUG=-g

build: 
	$(CC) -O3 -march=native $(LIBCODE) -lm main.c -o main

debug-build:
	$(CC) $(DEBUG) -O3 -march=native $(LIBCODE) -lm main.c -o main

valgrind:
	valgrind ./main --leak-check=full
