# 

# Time-stamp: <2020-08-14 00:33:30 azabiralov>

BUILDER = /home/azabiralov/Code/go/bin/distrobuilder
BUILD_TYPE = --type=unified
BUILD_COMPRESSION = --compression=bzip2
CACHE_DIR = ./cache/
IMAGES_DIR = ./images/

.PHONY: clean all


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


all: centos-7 centos-8


clean:
	rm -f images/*.tar*
