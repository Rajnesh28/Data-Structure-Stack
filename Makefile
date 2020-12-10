#compile and link the application
all: main

#run the application
run: main
	./main

#link main.o and stack.o to executable main
main: main.o Stack.o
	g++ -g -o main main.o Stack.o -std=c++11

#compile the main.cpp to main.o
main.o: main.cpp
	g++ -g -c main.cpp -std=c++11

#compile the stack.cpp to stack.o
Stack.o: Stack.cpp
	g++ -g -c Stack.cpp -std=c++11

#remove built files
clean:
	rm -rf main main.o Stack.o *~
