variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2"
}

variable "key_name" {
  type        = string
  description = "Key pair name for SSH access"
}
