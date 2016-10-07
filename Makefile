CXX= g++
CFLAGS= -Wall -g -Werror

hello: hello.o
	$(CXX) $(CLAGS) -o hello hello.o

hello.o: hello.cpp consts.h calculations.o
	$(CXX) $(CFLAGS) -c hello.cpp

calculations.o: calculations.cpp
	$(CXX) $(CFLAGS) -c calculations.cpp

clean:
	rm -f *.o hello