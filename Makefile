SOURCES := dumpasn1.c
OBJS := $(SOURCES:.c=.o)
BIN := dumpasn1

.PHONY: all
all: $(BIN)

.PHONY: clean
clean:
	rm -f $(BIN) $(OBJS)

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(OBJS)

.c.o:
	$(CC) $(CFLAGS) -c $<
