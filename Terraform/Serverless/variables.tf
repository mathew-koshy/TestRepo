variable "memory_size" {
  type = number
  default = 256
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
