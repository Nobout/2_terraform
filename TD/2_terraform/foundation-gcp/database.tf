resource "google_sql_database_instance" "db_instance" {
  name = "td-db-europe"
  database_version = "POSTGRES_15"
  region = "europe-west1"

  settings {
    tier = "db-f1-micro"

    ip_configuration {
      ipv4_enabled = false
      private_network = google_compute_network.vpc_network.id
    }
  }

  deletion_protection = false
}