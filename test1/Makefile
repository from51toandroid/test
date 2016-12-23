

all:hello.bin fun

fun: fun.c
	gcc $< 

hello.bin:hello.o
	ld $< -T test.ld -o hello.elf
	objcopy -j .text -O binary  hello.elf hello.bin

*.o:*.s
	as $< -o $@

.PHONY clean:
	-rm *.o *.bin *.elf

