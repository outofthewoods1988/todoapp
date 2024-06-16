# main.tf
provider "google" {
  credentials = "infinite-zephyr-419603-707c097f18a5.json"
  project     = "My First Project"
  region      = "asia-east1"
}

resource "google_compute_instance" "default" {
  name         = "my-instance"
  machine_type = "e2-medium"
  zone         = "asia-east1-a"

  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20240611"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata_startup_script = <<-EOT
    #!/bin/bash
    echo "Hello, world!" > /var/www/html/index.html
    systemctl restart apache2
  EOT
}
