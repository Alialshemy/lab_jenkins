variable "vpc_cidr" {
  type = string
}
variable "public_subnet" {
  type = list(any)
}

variable "region" {
  type = string
}

variable "public_avaibility_zone" {
  type = list(any)

}
variable "key" {
  type = string
  default = "./ali.pem"
  
}