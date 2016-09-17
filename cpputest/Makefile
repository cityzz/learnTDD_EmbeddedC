CPPUTEST_DIR=../../cpputest_build
INC=-I$(CPPUTEST_DIR)/include
LIB=-lCppUTest -lCppUTestExt
LIBS=-L$(CPPUTEST_DIR)/lib

CC=g++
CFLAGS=-g -Wall -std=c++1y
CFLAGS += -include $(CPPUTEST_DIR)/include/CppUTest/MemoryLeakDetectorMallocMacros.h

LDFLAGS=-L$(CPPUTEST_DIR)/lib -lCppUTest -static

SRCS = SprintfTest.cpp Alltests.cpp
TARGET=AllTests

all: clean AllTests

AllTests: $(SRCS)
		$(CC) -o $(TARGET) $(CFLAGS) $(INC) $(SRCS) $(LDFLAGS)
		./$(TARGET) -v

clean:
		rm -f $(TARGET) *.o
