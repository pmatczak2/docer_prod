# provider block 
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami = "" # choose which os you wasnt to use
  instance_type = "t2.micro"
  availability_zone = "us-west-2"
  key_name = "" # create a .pem keypair

  tags = {
    Name = "MyTerraformInstance"
  }
}

# Provides an EC2 instance state resource. This allows managing an instance power state.
resource "aws_ec2_instance_state" "app_server" {
  instance_id = aws_instance.app_server.id
  state       = "stopped"
}




