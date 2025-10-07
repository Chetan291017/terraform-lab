provider "local" {}

resource "local_file" "demo_file" {
  filename = "/home/admino/github_terraform_demo.txt"
  content  = "Hello from Chetan to Terraform world! This is first file executed via GitHub Actions!"
}
