# sbase version
VERSION = 1.1

# paths
PREFIX = /usr/
MANPREFIX = $(PREFIX)/share/man

# tools
CC = musl-gcc
LD = $(CC)
CPPFLAGS =
#AR =
RANLIB = ranlib

# -lrt might be needed on some systems
CFLAGS = -static -Os -fPIE -pipe -Wextra -Wall
LDFLAGS = -s -static -static-pie



