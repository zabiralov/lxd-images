terraform {
	required_providers {
		lxd = {
			source = "terraform-lxd/lxd"
		}
	}
}

provider "lxd" {
	accept_remote_certificate = ""
	generate_client_certificates = ""
}

resource "lxd_container" "focal1" {
	name      = "focal1"
	image     = "focal_mod"
	ephemeral = false

	config = {
		"boot.autostart" = false
	}

	limits = {
		cpu = 2
	}
}
