
module "vm_instance_template" {
  source  = "terraform-google-modules/vm/google//modules/instance_template"
  version = "6.0.0"
  region = var.region
  project_id = var.project_id
  subnetwork = var.subnetwork
  service_account = var.service_account

}

module "vm_compute_instance" {
  source  = "terraform-google-modules/vm/google//modules/compute_instance"
  version = "6.0.0"
  region = var.region
  subnetwork = var.subnetwork
  num_instances = var.num_instances
  hostname = var.hostname
  instance_template = module.vm_instance_template.self_link
  access_config = []

}