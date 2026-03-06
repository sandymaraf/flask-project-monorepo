terraform {
  required_version = ">= 1.5"
}

provider "null" {}

resource "null_resource" "kind_cluster" {

  provisioner "local-exec" {
    command = "kind create cluster --name devops-lab"
  }

}