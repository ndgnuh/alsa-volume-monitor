CC=gcc
LIBS=alsa dbus-1
CFLAGS=-std=gnu99 -Wall -pedantic -Wextra `pkg-config --cflags ${LIBS}`
LDFLAGS=`pkg-config --libs ${LIBS}`

all: main

main: main.o
	${CC} main.o -o alsa-volume-monitor ${LDFLAGS}

main.o:
	${CC} ${CFLAGS} -c main.c

clean:
	rm main.o
	rm alsa-volume-monitor
