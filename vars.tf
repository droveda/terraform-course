variable "amis" {
  type = map

  default = {
      us-east-1 = "ami-0747bdcabd34c712a"
      us-east-2 = "ami-0443305dabd4be2bc"
  }
}

variable "cdirs_acesso_remoto" {
  type = list

  default = ["168.181.48.36/32"]
}

variable "key_name" {
  default = "terraform-aws"
}