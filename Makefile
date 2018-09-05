CC=g++
EXEC=app
FLAGS=-Wall -lsfml-window -lsfml-system -lsfml-graphics -lGL -lGLEW
TARGET=*.cpp
INCS=-I /usr/include

build:
	$(CC) $(TARGET) -o $(EXEC) $(FLAGS)

run:
	./app

clean:
	rm app
