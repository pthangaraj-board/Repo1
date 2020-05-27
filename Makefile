  CC=g++
  
  CFLAGS=-c -wall
  
  all: hello
  
  hello: main.o func1.o func2.o
         $(CC) main.o func1.o func2.o -o hello
    
  main.o: main.cpp
          $(CC) $(FLAGS) main.cpp
          
  func1.o: func1.cpp
           $(CC) $(FLAGS) func1.cpp
           
  func2.o: func2.cpp
           $(CC) $(FLAGS) func2.cpp
           
  clean:
        rm -rf *o hello
           
