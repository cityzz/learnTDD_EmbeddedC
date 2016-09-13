UNITY_DIR=../allinone
INC=-I$(UNITY_DIR)
LIB=
LIBS=

CC=gcc
CFLAGS=-std=c99 -DUNITY_FIXTURES
LDFLAGS=
SRCS=$(UNITY_DIR)/unity.c $(UNITY_DIR)/unity_fixture.c SprintfTest.c SprintfTestRunner.c AllTests.c
TARGET = AllTests

AllTests:
		$(CC)  $(CFLAGS) $(INC) $(LDFLAGS) $(SRCS) -o $(TARGET)
		./$(TARGET) -v

all: AllTests

clean:
		rm -f $(TARGET) *.o
