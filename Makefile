# Time-stamp: <2021-06-26 21:27:28 azabiralov>

SHELL = /bin/bash
BUILDER = distrobuilder --debug --cleanup=false
BUILD_TYPE = --type=unified
BUILD_COMPRESSION = --compression=bzip2
CACHE_DIR = ./cache/
IMAGES_DIR = ./images/

.PHONY: clean ls img


$(d):
	@echo '-----------------------'
	@echo 'Build $(d) image ...'
	@echo '-----------------------'
	sudo $(BUILDER) --cache-dir $(CACHE_DIR) build-lxd $(BUILD_TYPE) $(BUILD_COMPRESSION) src/$(d).yml $(IMAGES_DIR)
	@echo '-----------------------'
	@echo 'Build $(d) complete!'
	@echo '-----------------------'


$(i):
	lxc image import $(IMAGES_DIR)/*-$(i)-*.tar.bz2 --alias $(i)_mod


$(r):
	lxc image delete $(r)_mod


ls:
	ls -lh images/*.tar*


img:
	lxc image list


clean:
	rm -f images/*.tar*
