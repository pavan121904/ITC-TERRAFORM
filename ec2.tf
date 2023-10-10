# Specify the AWS provider configuration.
provider "aws" {
  region = "eu-north-1"  # Set your desired AWS region.
}

# Define the EC2 instance.
resource "aws_instance" "myec2" {
  ami           = "ami-071df4a41c6f9ee2e"  # Replace with your desired AMI ID.
  instance_type = "t2.micro"              # Set the instance type.
  key_name      = "test-1"    # Replace with your key pair name if needed.
  tags = {
    Name = "auto-instance"             # Specify a name for your instance.
  }
}
