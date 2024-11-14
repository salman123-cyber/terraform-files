variable "azure_client_id"{
type=string
default=""
}

variable "azure_client_secret"{
type=string
default=""
}

variable "azure_tenent_id"{
type=string
default=""
}

variable "azure_subscription_id"{
type=string
default="29e23d23-aa38-4ea4-8036-d50a5b2c964c"
}

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
