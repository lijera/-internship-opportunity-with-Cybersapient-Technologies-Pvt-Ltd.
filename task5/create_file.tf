# create_file.tf

# Create a local file
resource "local_file" "hello_terraform" {
  content  = "Hello, Terraform"
  filename = "output.txt"
}

# Output a success message
output "success_message" {
  value = "File 'output.txt' created successfully with content: Hello, Terraform"
}
