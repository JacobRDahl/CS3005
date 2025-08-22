# Makefile

# Compiler and flags
CXX = g++
CXXFLAGS = -Wall -g

# Targets
TARGET = hello
OBJECT = hello.o

# Build rules
$(TARGET): $(OBJECT)
        $(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECT)

$(OBJECT): hello.cpp
        $(CXX) $(CXXFLAGS) -c hello.cpp

# Clean rule
clean:
        rm -f $(TARGET) $(OBJECT)

