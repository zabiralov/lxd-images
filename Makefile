# 

# Time-stamp: <2021-06-12 00:43:54 azabiralov>

SHELL = /bin/bash
BUILDER = distrobuilder
BUILD_TYPE = --type=unified
BUILD_COMPRESSION = --compression=bzip2
CACHE_DIR = ./cache/
IMAGES_DIR = ./images/

.PHONY: clean centos ubuntu


centos-7:
		@echo '------------------------'
		@echo 'Build Centos 7 image ...'
		@echo '------------------------'
		sudo $(BUILDER) --cache-dir $(CACHE_DIR) build-lxd $(BUILD_TYPE) $(BUILD_COMPRESSION) src/centos-7x.current.yml $(IMAGES_DIR)
		@echo '---------------'
		@echo 'Build complete!'
		@echo '---------------'


centos-8:
		@echo '------------------------'
		@echo 'Build Centos 8 image ...'
		@echo '------------------------'
		sudo $(BUILDER) --cache-dir $(CACHE_DIR) build-lxd $(BUILD_TYPE) $(BUILD_COMPRESSION) src/centos-8x.current.yml $(IMAGES_DIR)
		@echo '---------------'
		@echo 'Build complete!'
		@echo '---------------'


focal:
		@echo '----------------------------'
		@echo 'Build Ubuntu Focal image ...'
		@echo '----------------------------'
		sudo $(BUILDER) --cache-dir $(CACHE_DIR) build-lxd $(BUILD_TYPE) $(BUILD_COMPRESSION) src/ubuntu-focal.current.yml $(IMAGES_DIR)
		@echo '---------------'
		@echo 'Build complete!'
		@echo '---------------'


centos: centos-7 centos-8

ubuntu: focal

clean:
	rm -f images/*.tar*
