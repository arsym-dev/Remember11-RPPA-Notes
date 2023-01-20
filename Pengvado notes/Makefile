CFLAGS=-O2 -g -Wall -Wno-pointer-sign
EXES=compressbip decompressbip repack_scene repack_afs
CHAPTERS:=$(wildcard www/*.txt)
CHAPTERS:=$(CHAPTERS:www/%.txt=%)

.PHONY: clean distclean export
.DELETE_ON_ERROR: R11.exe
# single thread because (a) I want to see messages in order, and (b) I can't figure out how to make $(EXES) work in the en/%.BIP rule
.NOTPARALLEL: run

run: exes mac.afs R11.exe init.bin

exes: $(EXES)

# how do I make one rule that generates multiple output files?
ja/PR_01.BIP: repack_afs mac.orig.afs
	mkdir -p ja/ en/
	./repack_afs mac.orig.afs /dev/null /dev/null ja/

en/%.BIP: $(EXES) extract_en.pl www/%.txt ja/PR_01.BIP
	@echo $*.BIP
	@./decompressbip ja/$*.BIP ja/$*.scn
	@./extract_en.pl www/$*.txt > en/$*.txt
	@./repack_scene ja/$*.scn en/$*.txt en/$*.scn
	@./compressbip en/$*.scn en/$*.BIP

ifneq ($(CHAPTER),)
.PHONY: mac.afs
endif

mac.afs: repack_afs mac.orig.afs $(CHAPTERS:%=en/%.BIP)
ifneq ($(CHAPTER),)
	cp en/$(CHAPTER).BIP en/PR_01.BIP
	touch -r mac.orig.afs en/PR_01.BIP # make sure it will be rebuilt next time
endif
	./repack_afs mac.orig.afs mac.afs en/

R11.exe: R11.orig.exe insert_asm.pl patch*.asm patch_render_buffer.pl insert_options.pl strings/options_en.txt insert_bin.pl resources/patch.*
	cp R11.orig.exe R11.exe
	./insert_asm.pl R11.exe patch*.asm
	./patch_render_buffer.pl R11.exe
	./insert_options.pl R11.exe < strings/options_en.txt
	for i in resources/patch.* ; do ./insert_bin.pl -if $$i -of R11.exe -seek 0x$${i#*.} ; done

init.bin: decompressbip compressbip init.orig.bin
	./decompressbip init.orig.bin init.dec
	./compressbip init.dec init.bin

clean:
	rm -f $(EXES)
	rm -f $(EXES:%=%.exe)
	rm -f *.o
	rm -f {*,*/*}{~,.orig,.rej,.[0-9]}
	rm -rf en/ ja/
	rm -f init.dec

distclean: clean
	rm -f mac.afs R11.exe init.bin

export: run
	+make clean
	rm -f ../r11_tr.7z
	cd .. ; 7z a -mx=9 r11_tr.7z r11_tr/*
