variable "project_id" {
  default = "restricted-management-infra"
}

variable "region" {
  default = "us-central1"
}

variable "service_account" {
  default = {
    email = "terraform-scripting@restricted-management-infra.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}

variable "subnetwork" {
  default = "default"
}

variable "num_instances" {
  default = 1
}

variable "hostname" {
  default = "instance-simple"
}