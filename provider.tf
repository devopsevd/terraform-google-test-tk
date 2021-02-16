provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = file("${var.path}/${var.cred_file}")
}