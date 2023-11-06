variable "memory_size" {
  type = map(number)
  default = {
    mem = 2
  }
}

variable "timeout" {
  type = number
  default = 15
}

variable "provisioned_concurrency" {
  type = number
  default = 5
}

variable "reserved_concurrency" {
  type = number
  default = 0
}
