variable "name" {
  type = string
}

variable "cidr" {
  type = string
}

variable "az_count" {
  type = number
}

variable "single_nat_gateway" {
  type = bool
}

variable "tags" {
  type    = map(string)
  default = {}
}