variable "p_az_clientID"{
  type=string
  default="def80782-17cc-44be-a66f-0449f651d052"
}

variable "p_az_secret"{
  type=string
  default="eAU8Q~u_Gb3i5XF~8QLPuIFjz7dyFCkwkZdf.c0o" 
}

variable "p_az_tenantID"{
  type=string
  default="b8284ad9-043c-44a3-8d63-5ce64a7a4970" 
}

variable "p_az_subscriptionID"{
  type=string
  default="29e23d23-aa38-4ea4-8036-d50a5b2c964c"
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