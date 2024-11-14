provider "azurerm" {
  features {}
  client_id  = var.p_az_clientID
  client_secret   =   var.p_az_secret
  tenant_id       =   var.p_az_tenantID
  subscription_id = var.p_az_subscriptionID
}
provider "kubernetes" {   
    host                   =    azurerm_kubernetes_cluster.example.kube_config.0.host
    cluster_ca_certificate =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.cluster_ca_certificate)
    client_certificate     =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.client_certificate)
    client_key             =    base64decode(azurerm_kubernetes_cluster.example.kube_config.0.client_key)
    }
