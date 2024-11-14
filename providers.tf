provider "azurerm" {
  features {}
  client_id  = var.azure_client_id
  client_secret   =   var.azure_client_secret
  tenant_id       =   var.azure_tenent_id
  subscription_id = "29e23d23-aa38-4ea4-8036-d50a5b2c964c"
}
provider "kubernetes" {   
    host                   =    azurerm_kubernetes_cluster.example.kube_config.0.host
    cluster_ca_certificate =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.cluster_ca_certificate)
    client_certificate     =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.client_certificate)
    client_key             =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.client_key)
    }
