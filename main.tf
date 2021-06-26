terraform {
	required_providers {
		lxd = {
			source = "terraform-lxd/lxd"
		}
	}
}

provider "lxd" {
}

resource "lxd_container" "focal1" {
	name      = "focal1"
	image     = "focal_mod"
	ephemeral = false

	config = {
		"boot.autostart" = false
	}

	limits = {
		cpu = 1
		memory = "1GiB"
	}
}

resource "lxd_container" "bionic1" {
	name      = "bionic1"
	image     = "bionic_mod"
	ephemeral = false

	config = {
		"boot.autostart" = false
	}

	limits = {
		cpu = 1
		memory = "1GiB"
	}
}
