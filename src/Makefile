SRCS:=$(wildcard *.c)
OBJS:=$(patsubst %.c,%.o,$(SRCS))
override CFLAG+=-I ../include
ifeq ($(DBG), 1)
override CFLAG+=-g
endif

.PHONY:all clean dbg

all:$(OBJS)

$(OBJS):
	$(CC) -o $@ -c $(patsubst %.o,%.c,$@) $(CFLAGS) $(CFLAG) -I$(UTILS_DIR)/include -I ~/codes/application/ulist

clean:
	$(RM) $(OBJS)