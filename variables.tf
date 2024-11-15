variable "arg_location"{
  type=string
  default="East Us"
}

variable "n_count"{
  type=number
  default=2
}

variable "n_size"{
  type=string
  default="standard_d4pds_v5"
}

variable "n_disk_size"{
  type=number
  default=30
}

variable "n_max_pods"{
  type=number
  default=110
}

variable "c_name"{
  type=string
  default="getting-started"
}

variable "c_image"{
  type=string
  default="salmanmirza331/getting-started:latest"
}

variable "c_port"{
  type=number
  default=3000
}

variable "t_port"{
  type=number
  default=3000
}
