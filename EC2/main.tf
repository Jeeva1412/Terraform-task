resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "Terraform-EC2"
  }
}


# resource "aws_instance" "this" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   key_name      = var.key_name
#   monitoring    = true
#   ebs_optimized = true

#   metadata_options {
#     http_tokens   = "required"
#     http_endpoint = "enabled"
#   }

#   root_block_device {
#     encrypted = true
#   }

#   # Optional: attach an IAM role
#   iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

#   tags = {
#     Name = "Terraform-EC2"
#   }
# }

# # IAM Role & Profile (Optional but recommended)
# resource "aws_iam_role" "ec2_role" {
#   name = "ec2_instance_role"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Action = "sts:AssumeRole",
#         Effect = "Allow",
#         Principal = {
#           Service = "ec2.amazonaws.com"
#         }
#       }
#     ]
#   })
# }

# resource "aws_iam_instance_profile" "ec2_profile" {
#   name = "ec2_instance_profile"
#   role = aws_iam_role.ec2_role.name
# }
