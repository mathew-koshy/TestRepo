variable "memory_size" {
  type    = number
  default = 128
}

variable "timeout" {
  type    = number
  default = 59
}

variable "provisioned_concurrency" {
  type    = number
  default = 0
}

variable "reserved_concurrency" {
  type    = number
  default = 0
}
