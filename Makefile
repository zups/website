CC=gcc
CFLAGS=-lglfw3 -lrt -lm -ldl -lX11 -lpthread -lxcb -lXau -lXdmcp -lGL
build/index: index.o
	@mkdir -p build
	$(CC) index.o $(CFLAGS) -o build/index
index.o: index.c
	$(CC) -c index.c
