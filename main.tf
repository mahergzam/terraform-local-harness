provider "local" {
  # No configuration required
}

resource "local_file" "example" {
  filename = "${path.module}/example.txt"
  content  = "This is a sample file created by Terraform."
}

resource "null_resource" "example_command" {
  provisioner "local-exec" {
    command = "echo 'Terraform has created this file and executed this command!'"
  }
}
