
# terraform {
#   backend "s3" {
#     bucket         = "terraform-statefile-storagebucket"            # 🔁 Replace with your actual S3 bucket name
#     key            = "terraform/ec2/terraform.tfstate" # Path inside the bucket
#     region         = "us-east-1"
#     encrypt        = true
#     # dynamodb_table = "your-lock-table-name"           # 🔁 Optional, for state locking
#   }
# }

# provider "aws" {
#   region = "us-east-1"
# }

# module "ec2_instance" {
#   source        = "./EC2"
#   instance_type = "t2.micro"
#   ami_id        = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI for us-east-1
#   key_name      = "ec2-key-pair"          # 🔁 Replace with your actual key pair name
# }


terraform {
  backend "s3" {
    bucket         = "terraform-statefile-storagebucket"
    key            = "terraform/ec2/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    # dynamodb_table = "terraform-lock-table" # Optional: Enable for state locking
  }
}

provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source        = "./EC2"
  instance_type = "t2.micro"
  ami_id        = "ami-0c02fb55956c7d316"
  key_name      = "ec2-key-pair"
}

