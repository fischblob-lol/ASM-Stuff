build:
        as hello.s -o hello.o
        ld hello.o -o hello -lSystem -syslibroot $(shell xcrun -sdk macosx --show-sdk-path) -e _mai$

clean:
        rm -f hello.o hello
