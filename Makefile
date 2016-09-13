INC=-I../../src -I../../extras/fixture/src
LIB=
LIBS=

CC=gcc
CFLAGS=-std=c99 -DUNITY_FIXTURES
LDFLAGS=
SRCS=../../src/unity.c ../../extras/fixture/src/unity_fixture.c SprintfTest.c SprintfTestRunner.c AllTests.c
TARGET = AllTests

AllTests:
		$(CC)  $(CFLAGS) $(INC) $(LDFLAGS) $(SRCS) -o $(TARGET)
		./$(TARGET) -v

all: AllTests

clean:
		rm -f $(TARGET) *.o
