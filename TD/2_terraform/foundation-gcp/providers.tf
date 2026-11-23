terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.12.0"
    }
  }
}

provider "google" {
  project = "esirem"
  region = "europe-west1"
  access_token = "nimporte-quoi"
}