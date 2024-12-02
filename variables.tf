variable "arg_location"{
  type=string
  default="South India"
}

variable "n_count"{
  type=number
  default=2
}

variable "n_size"{
  type=string
  default="Standard_B2s"
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
  default="react"
}

variable "c_image"{
  type=string
  default="salmanmirza331/react:latest"
}

variable "c_port"{
  type=number
  default=3000
}

variable "t_port"{
  type=number
  default=3000
}
