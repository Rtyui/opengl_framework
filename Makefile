CC=g++
EXEC=app
FLAGS=-lsfml-window -lsfml-system -lGL

build:
	$(CC) main.cpp -o $(EXEC) $(FLAGS)

run:
	./app

clean:
	rm app
