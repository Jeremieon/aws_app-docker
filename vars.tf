variable "region" {
  description = "aws Region"
  type = string
  default = "us-east-1"
}
variable "ami" {
  description = "The AMI-ID for EC2 Instances"
  type = string
}

variable "instance_type" {
    description = "Ec2 instance type"
    default = "t2.micro"
}
variable "user_data" {
  description = "User data to be applied after instance is created"
  type = string
}

variable "my_ip" {
  description = "Your public IP address"
  default     = "91.130.2.122" 
}

variable "ssh_key_path" {
  description = "Path to the SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}


variable "instance_name" {
  description = "Unique name for resources create"
  type = string
}