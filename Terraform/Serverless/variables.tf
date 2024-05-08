variable "memory_size" {
  type    = map(number)
  default = 512
}

variable "timeout" {
  type    = map(number)
  default = 15
}

variable "provisioned_concurrency" {
  type    = number
  default = 0
}

variable "reserved_concurrency" {
  type    = number
  default = 0
}
