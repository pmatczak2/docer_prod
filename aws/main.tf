# provider block 
provider "awa" {
  region = "us-west-2"
}

resource "aws_insrance" "app_server" {
  ami = "" # choose which os you wasnt to use
  instance_type = "t2.micro"
  availability_zone = "us-west-2"
  key_name = "" # create a .pem keypair

  tage = {
    Name = "MyTerraformInstance"
  }
}