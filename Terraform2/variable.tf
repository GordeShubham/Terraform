variable "vpc_cidr" {
    default = "192.168.0.0/16"
}

variable "private_subnet_cidr" {
    default = "192.168.0.0/20"
}

variable "public_subnet_cidr" {
    default = "192.168.16.0/20"
}

variable "project" {
    default = "demo"
}

variable "env" {
    default = "dev"
}

variable "image_id" {
    default = "ami-089c89a80285075f7"
}
variable "instance_type" {
    default = "t2.micro"
}
variable "key_pair" {
    default = "shubham"
}