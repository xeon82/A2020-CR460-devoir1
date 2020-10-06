provider "google" {
  project = "cr460-291623"
  credentials = "account.json"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "InternalProd" {
  name         = "fermier"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config {
    }
  }
}