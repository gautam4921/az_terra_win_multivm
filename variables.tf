# Set the count of virtual machines you want
variable "vm_count" {
  default = 3
}

variable "resource_group_name" {
  default = "count-test-win"
}

variable "instances" {
  default = ["win-vm-1", "win-vm-2", "win-vm-3"]
}

variable "nb_disks_per_instance" {
  default = "2"
}

variable "disks" {
  description = "disk sizes"
  type        = list(number)
  default     = [10, 20]
}
