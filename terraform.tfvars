vms_resources = {
  web = {
    cores         = 2
    memory        = 2
    core_fraction = 20
  },
  db = {
    cores         = 2
    memory        = 1
    core_fraction = 20
  }
}

metadata = {
  serial-port-enable = "1"
  ssh-keys           = "ubuntu:ssh-ed25519 AAAAB3NzaC1yc2EAAAADAQABAAABgQDx9oCPIqXE2zcOCLRk6b9417l2SvLIS2CH7GpuMycED60Lyyy7Zre9Lmcqw7PGtc25NPag5F+/hpNX55dt4CjeYkRYuDEQdPYk1SC7JbDWSJqjEZUaUnI+Pvysfn2WmpGVvmtPyxkBrCDPB11oBk4VZyGcOYi9fVPQYe2UsYaGH/6aD9U8dFRNxjvx/LZLOx9wdY51h23yElJPIAiCtzUQ880i1n1vhB1pK243GTO8SK4ussOS9U4wtslkzscIFoQQ9JOVMqmOOMAVasLAd+hHDZgUewII8/KLZ2544SaS4tXtuscTQiC7VnWq388K+OgTpG1jql4rfLzeI9KRXKrUb9z5PLSUWy4B53dHUj4oaYuooCrrjLMgw72TZ+dII8x0xzEntWoxocb53VBBFpVF4MqTfG4diLVG8rhThPkKuThUOmny3L3aOVfuYrXmH+54sDwAUaxlqfyrkGAjz2C4S7ezJP9M9oi8D31zgVFVG0ms0qvPwRI+y7nIVif/+qU= terraform@ansible"
}
