variable "instance_type" {
  type        = map(string)
  description = "EC2 instance type for dev/qa/prod"
  default = {
    dev  = "t2.micro"
    qa   = "t3.micro"
    prod = "m5.xlarge"
  }
}

variable "instance_ami" {
  type        = map(string)
  description = "Ubuntu Server 20.04 LTS for different regions"
  default = {
    dev  = "ami-0cda377a1b884a1bc" // ap-south-1 - Mumbai
    qa   = "ami-008dea09a148cea39" // eu-north-1 - Stockholm
    prod = "ami-078db6d55a16afc82" // eu-west-3 - Paris
  }
}

variable "regions" {
  type        = map(string)
  description = "regions based on destination"
  default = {
    dev  = "ap-south-1"
    qa   = "eu-north-1"
    prod = "eu-west-3"
  }
}

variable "env" {
  type        = string
  description = "ENV to deploy infrastructure dev/qa/prod"
  default     = "dev"
}

variable "availability_zones" {
  type        = list(string)
  description = "az"
  default     = []
}