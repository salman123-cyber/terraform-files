provider "azurerm" {
  features {}
  client_id  = "def80782-17cc-44be-a66f-0449f651d052"
  client_secret   =   "eAU8Q~u_Gb3i5XF~8QLPuIFjz7dyFCkwkZdf.c0o"
  tenant_id       =   "def80782-17cc-44be-a66f-0449f651d052"
  subscription_id = "29e23d23-aa38-4ea4-8036-d50a5b2c964c"
}
provider "kubernetes" {   
    host                   =    azurerm_kubernetes_cluster.example.kube_config.0.host
    cluster_ca_certificate =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.cluster_ca_certificate)
    client_certificate     =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.client_certificate)
    client_key             =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.client_key)
    }
