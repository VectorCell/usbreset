PROGS = usbreset

CFLAGS = -O3 -Wall -Werror

all : $(PROGS)

usbreset : usbreset.o

$(PROGS) : % : Makefile
	gcc -o $@ $(filter-out Makefile,$^) $(CFLAGS)
	rm *.d *.o

%.o : %.c Makefile
	gcc -c -MD $(CFLAGS) $*.c

run : usbreset
	./usbreset

clean :
	rm -f *.o
	rm -f $(PROGS)
	rm -f *.d

-include *.d

