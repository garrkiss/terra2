###cloud vars


variable "cloud_id" {
  type        = string
  default = "b1gmp732qvpuau20khcd"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1g6412mmf48r5cbi2jt"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDx9oCPIqXE2zcOCLRk6b9417l2SvLIS2CH7GpuMycED60Lyyy7Zre9Lmcqw7PGtc25NPag5F+/hpNX55dt4CjeYkRYuDEQdPYk1SC7JbDWSJqjEZUaUnI+Pvysfn2WmpGVvmtPyxkBrCDPB11oBk4VZyGcOYi9fVPQYe2UsYaGH/6aD9U8dFRNxjvx/LZLOx9wdY51h23yElJPIAiCtzUQ880i1n1vhB1pK243GTO8SK4ussOS9U4wtslkzscIFoQQ9JOVMqmOOMAVasLAd+hHDZgUewII8/KLZ2544SaS4tXtuscTQiC7VnWq388K+OgTpG1jql4rfLzeI9KRXKrUb9z5PLSUWy4B53dHUj4oaYuooCrrjLMgw72TZ+dII8x0xzEntWoxocb53VBBFpVF4MqTfG4diLVG8rhThPkKuThUOmny3L3aOVfuYrXmH+54sDwAUaxlqfyrkGAjz2C4S7ezJP9M9oi8D31zgVFVG0ms0qvPwRI+y7nIVif/+qU= terraform@ansible"
  description = "ssh-keygen -t ed25519"
}


#2
variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "yandex compute image family"
}


variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "yandex compute instance name"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "yandex compute instance platform id"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "yandex compute instance resources cores"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "yandex compute instance resources memory"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 20
  description = "yandex compute instance resources core-fraction"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "yandex compute instance scheduling policy preemptible"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "yandex compute instance network interface nat"
}

variable "vm_web_serial_port_enable" {
  type        = number
  default     = 1
  description = "yandex compute instance metadata serial-port-enable"
}

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  description = "Ресурсы для каждой ВМ"
}

variable "metadata" {
  type = map(string)
  description = "Метаданные для всех ВМ"
}
