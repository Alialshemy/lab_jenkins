
variable "instances" {
  type = list(object({

    ami = string
    instance_type= string
    security_group = string
    subnet = string
    key_name=string
    tags= string
  }))
}
variable "ansible" {
  type=list
  default = [  "jenkins.yml","agent.yml"]
}
variable "key" {
  type = string
  default = "ali.pem"
  
}

