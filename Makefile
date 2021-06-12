# 

# Time-stamp: <2021-06-12 14:44:03 azabiralov>

SHELL = /bin/bash
BUILDER = distrobuilder --debug
BUILD_TYPE = --type=unified
BUILD_COMPRESSION = --compression=bzip2
CACHE_DIR = ./cache/
IMAGES_DIR = ./images/

.PHONY: clean ls


$(DIST):
		@echo '-----------------------'
		@echo 'Build $(DIST) image ...'
		@echo '-----------------------'
		sudo $(BUILDER) --cache-dir $(CACHE_DIR) build-lxd $(BUILD_TYPE) $(BUILD_COMPRESSION) src/$(DIST).yml $(IMAGES_DIR)
		@echo '-----------------------'
		@echo 'Build $(DIST) complete!'
		@echo '-----------------------'


ls:
	ls -lh images/*.tar*


clean:
	rm -f images/*.tar*
