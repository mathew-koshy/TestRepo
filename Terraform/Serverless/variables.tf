variable "memory_size" {
  type = map(number)
  default = {
    mem = 2
  }
}

variable "timeout" {
  type = map(number)
  default = {
    time = 2
  }
}

variable "provisioned_concurrency" {
  type = number
  default = 5
}

variable "reserved_concurrency" {
  type = number
  default = 0
}
