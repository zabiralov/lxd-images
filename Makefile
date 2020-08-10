#

BUILDER='distrobuilder'
BUILD_FLAGS='--type=unified'
CACHE_DIR='./cache/'
IMAGES_DIR='./images/'

build-centos-7:
		sudo $(BUILDER) --cache-dir $(CACHE_DIR) build-lxd $(BUILD_FLAGS) src/centos-7x.current.yml $(IMAGES_DIR)

all:
		build-centos-7:

.PHONY: clean

clean:
	echo "clean"
