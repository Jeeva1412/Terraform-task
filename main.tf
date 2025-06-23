provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source        = "./EC2"
  instance_type = "t2.micro"
  ami_id        = "ami-0c02fb55956c7d316" # Amazon Linux 2 for us-east-1
  key_name      = "ec2-key-pair"         # Replace with your EC2 key pair
}
