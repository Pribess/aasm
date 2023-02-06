# SPDX-License-Identifier: MIT
# Copyright (C) 2022 Pribess (Heewon Cho)
# Makefile

CC = cc

CFLAGS = -Wall
LDFLAGS =

TARGET = as

SOURCES = $(shell find ./src -name "*.c")
OBJECTS = $(SOURCES:.c=.o)

.PHONY: all
all : $(TARGET)


$(TARGET) : $(OBJECTS)
	$(CC) $(notdir $^) $(LDFLAGS) -o $@

%.o : %.c
	$(CC) $(INCLUDEDIR) -c $(CFLAGS) $< -o $(notdir $@)


.PHONY: clean

clean:
	rm -f $(TARGET) *.o