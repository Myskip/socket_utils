LIB=socket_utils.a

export UTILS_DIR=/home/myskip/codes/application/utils

.PHONY:all clean

all:
	$(MAKE)	-C src DBG=$(DBG)

lib:
	$(AR) r $(LIB) $(wildcard src/*.o)

clean:
	$(MAKE) -C src clean
	$(RM) $(LIB)