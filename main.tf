terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

provider "null" {}

resource "null_resource" "create_file" {
  connection {
    type        = "ssh"
    host        = var.target_host
    user        = var.ssh_user
    private_key = file(var.private_key_path)
  }

  provisioner "remote-exec" {
    inline = [
      "echo '✅ File created by Terraform CI/CD workflow' | sudo tee /tmp/terraform_ci_test.txt",
      "hostname",
      "ls -l /tmp/terraform_ci_test.txt"
    ]
  }
}
