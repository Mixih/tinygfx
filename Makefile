SHELL=/bin/bash
.SHELLFLAGS=-O extglob -O globstar -O nullglob -c
BUILDIR := build

.DEFAULT_GOAL := all
.PHONY: all
all: tinygfx

# general targets
.PHONY: tinygfx
tinygfx: $(BUILDIR)/Makefile | $(BUILDIR)
	cd build/ && $(MAKE) tinygfx

$(BUILDIR)/Makefile: | $(BUILDIR)
	cd build/ && cmake ..

.PHONY: format
format:
	@echo "Running clang-format";clang-format -i --verbose src/**/*.{c,cpp,h,hpp} include/**/*.{h,hpp}

# clean targets
.PHONY: clean
clean:
	cd build/ && $(MAKE) clean

.PHONY: cleanall
cleanall: cleanbuild cleanvendor

.PHONY: cleanbuild
buildclean:
	rm -rf build/

.PHONY: cleanvendor
cleanvendor:
	rm -rf vendor/*/

# pre-req targets
$(BUILDIR):
	@mkdir -p $@
