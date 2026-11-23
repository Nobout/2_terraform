resource "google_compute_network" "vpc_network" {
  name = "td-vpc-europe"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet_europe" {
  name = "td-subnet-europe"
  ip_cidr_range = "10.0.1.0/24"
  region = "europe-west1"
  network = google_compute_network.vpc_network.id
}