CC = g++
CFLAGS = -std=c++11 -fno-stack-protector -rdynamic -O2

_OBJ = cap-lang.o \
	   cap-interfaces.o \
	   cap-keyword.o \
	main.o 
	
_DEPS = cap-interfaces.hpp \
		cap-lang.hpp \
		cap-utility.hpp

ODIR = bin
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

IDIR = includes
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

$(ODIR)/%.o : %.cpp  $(DEPS)
	 @mkdir $(ODIR) -p
	 @$(CC) -c -o $@ $< $(CFLAGS)

cap : $(OBJ)
	@$(CC) -o $@ $^ $(CFLAGS)
	@cp ./cap ./bin/cap

.PHONY : clean rebuild

all : cap

clean : 
	@rm -rf $(ODIR)

install : cap
	@sudo cp ./cap /usr/bin/cap

rebuild : clean cap
