variable "aws_region" {
  description = "value of aws region"
  default     = "eu-west-1"
}

variable "ami_id" {
  description = "value of AMI"
  default     = "ami-06468be052a4195a6"
}

variable "instance_type" {
  description = "value of Intance type"
  default     = "t2.micro"
}