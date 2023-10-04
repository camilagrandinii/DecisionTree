CXX = g++ # Ou o compilador que você está usando
CXXFLAGS = -std=c++11 -fopenmp # Outras opções de compilação, se necessário

all: dt.exe

dt.exe: decision_tree.o
	$(CXX) $(CXXFLAGS) -o dt.exe decision_tree.o

decision_tree.o: decision_tree.cpp
	$(CXX) $(CXXFLAGS) -c -o decision_tree.o decision_tree.cpp

clean:
	rm -f dt.exe decision_tree.o
