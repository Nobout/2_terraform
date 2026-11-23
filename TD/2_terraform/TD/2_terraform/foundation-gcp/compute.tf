resource "google_compute_instance" "vm_instance" {
  name = "td-vm-europe"
  machine_type = "e2-micro"
  zone = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.id
    subnetwork = google_compute_subnetwork.subnet_europe.id
  }
}