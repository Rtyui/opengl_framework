CC=g++
EXEC=app
FLAGS=-Wall -lsfml-window -lsfml-system -lGL -lGLEW
TARGET=main.cpp
INCS=-I /usr/include

build:
	$(CC) $(TARGET) -o $(EXEC) $(FLAGS)

run:
	./app

clean:
	rm app
