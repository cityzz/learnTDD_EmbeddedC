CPPUTEST_DIR=../../cpputest_build
INC=-I$(CPPUTEST_DIR)/include
LIB=-lCppUTest -lCppUTestExt
LIBS=-L$(CPPUTEST_DIR)/lib

CC=g++
CFLAGS=-g -Wall
# CFLAGS += -include $(CPPUTEST_DIR)/include/CppUTest/MemoryLeakDetectorMallocMacros.h
# CFLAGS += -include $(CPPUTEST_DIR)/include/CppUTest/CommandLineTestRunner.h

LDFLAGS=-L$(CPPUTEST_DIR)/lib -lCppUTest -static
OBJ = SprintfTest.o Alltests.o

SRCS = $(OBJ:%.o=%.cpp)
TARGET=AllTests

all: clean AllTests

AllTests: $(SRCS)
		$(CC) -o $(TARGET) $(CFLAGS) $(INC) $(SRCS) $(LDFLAGS)
		./$(TARGET) -v

clean:
		rm -f $(TARGET) *.o
