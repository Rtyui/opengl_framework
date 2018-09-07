CC=g++
EXEC=app
FLAGS=-Wall -lsfml-window -lsfml-system -lsfml-graphics -lGL -lGLEW
TARGET=*.cpp */*.cpp
INCS=-I/usr/include -I$(CURDIR) -I$(CURDIR)/entities/ -I$(CURDIR)/components/ -I$(CURDIR)/systems/ -I$(CURDIR)/shaders/

build:
	$(CC) $(TARGET) -o $(EXEC) $(INCS) $(FLAGS)

run:
	./app

clean:
	rm app
