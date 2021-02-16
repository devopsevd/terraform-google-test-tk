variable "path" {default = "/Users/ramanyala/Documents/train/terraform/credentials"}

provider "google" {
  project = "restricted-management-infra"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = file("${var.path}/terraform_scripting.json")

}