INC=-I../../allinone
LIB=
LIBS=

CC=gcc
CFLAGS=$(INC) -fPIC -g
LDFLAGS=-Wl,-rpath=./ -Os -Wall -Wl,--gc-sections
SRCS=../../allinone/unity.c ../../allinone/unity_fixture.c ./SprintfTest.c ./SprintfTestRunner.c
OBJS=$(SRCS:.c=.o)

AllTests: AllTests.o $(OBJS)
		$(CC) -o $@ $(CFLAGS) $(LDFLAGS) $^ $(LIB) $(LIBS)

all: AllTests

clean:
		rm -f sprintfTest *.o $(OBJS)
