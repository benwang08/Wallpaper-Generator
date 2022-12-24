
CC = g++

generator: main.o triple.o
	$(CC) -o generator main.o triple.o

main.o: main.cpp ray.h triple.h
	$(CC) -c main.cpp

triple.o: triple.cpp triple.h 
	$(CC) -c triple.cpp

clean: 
	-rm -f generator main.o triple.o image.ppm                       