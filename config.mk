# sbase version
VERSION = 1.1

# paths
PREFIX = /usr/
MANPREFIX = $(PREFIX)/share/man

# tools
CC = musl-gcc
#AR = ar
LD = $(CC)
CPPFLAGS = -D_FILE_OFFSET_BITS=64 -D_XOPEN_SOURCE=700 -D_GNU_SOURCE
RANLIB = ranlib

# -lrt might be needed on some systems
CFLAGS = -std=c99 -static -Os -fPIE -pipe -Wextra -Wall
LDFLAGS = -s -static -static-pie
LDLIBS   = -lcrypt



