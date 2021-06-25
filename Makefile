# Time-stamp: <2021-06-25 11:52:59 azabiralov>

SHELL = /bin/bash
BUILDER = distrobuilder --debug --cleanup=false
BUILD_TYPE = --type=unified
BUILD_COMPRESSION = --compression=bzip2
CACHE_DIR = ./cache/
IMAGES_DIR = ./images/

.PHONY: clean ls img


$(D):
	@echo '-----------------------'
	@echo 'Build $(D) image ...'
	@echo '-----------------------'
	sudo $(BUILDER) --cache-dir $(CACHE_DIR) build-lxd $(BUILD_TYPE) $(BUILD_COMPRESSION) src/$(D).yml $(IMAGES_DIR)
	@echo '-----------------------'
	@echo 'Build $(D) complete!'
	@echo '-----------------------'


$(DI):
	lxc image import $(IMAGES_DIR)/*-$(DI)-*.tar.bz2 --alias $(DI)_mod


ls:
	ls -lh images/*.tar*


img:
	lxc image list


clean:
	rm -f images/*.tar*
