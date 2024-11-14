provider "azurerm" {
  features {}
  client_id  = credentials('client_id')
  client_secret   =   credentials('client_secret')
  tenant_id       =   credentials('tenant_id')
  subscription_id = credentials('subscription_id')
}
provider "kubernetes" {   
    host                   =    azurerm_kubernetes_cluster.example.kube_config.0.host
    cluster_ca_certificate =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.cluster_ca_certificate)
    client_certificate     =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.client_certificate)
    client_key             =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.client_key)
    }
