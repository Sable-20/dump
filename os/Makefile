64bit_asm_src := $(shell find src/x86_64 -name *.asm)
64bit_asm_obj := $(patsubst src/x86_64/%.asm, build/x86_64/%.asm.o , $(64bit_asm_src))

$(64bit_asm_obj): build/x86_64/%.asm.o : src/x86_64/%.asm
	@mkdir -p $(dir $@)
	nasm -f elf64 $(patsubst build/x86_64/%.asm.o, src/x86_64/%.asm, $@) -o $@

.PHONY: build-x86_64
build-x86_64: $(64bit_asm_obj)
	@mkdir -p dist/x86_64 
	x86_64-elf-ld -n -o dist/x86_64/kernel.bin -T target/x86_64/linker.ld $(64bit_asm_obj)
	cp dist/x86_64/kernel.bin target/x86_64/iso/boot/kernel.bin
	grub-mkrescue --xorriso=/usr/bin/xorriso -o dist/x86_64/toos.iso target/x86_64/iso