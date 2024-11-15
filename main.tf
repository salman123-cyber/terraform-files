resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = var.arg_location
}
 
resource "azurerm_kubernetes_cluster" "example" {
  name                = "example-aks-cluster"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "exampleaks"
 
  default_node_pool {
    name       = "default"
    node_count = var.n_count
    vm_size    = var.n_size  # Minimum size
    os_disk_size_gb = var.n_disk_size  # Default disk size
    max_pods   = var.n_max_pods  # Adjust based on your needs
  }
 
  identity {
    type = "SystemAssigned"
  }
kubernetes_version = "1.28.14"  # Specify the Kubernetes version here
}

resource "kubernetes_deployment" "example" {
  metadata {
    name      = "example-deployment"
    namespace = "default"
  }
 
  spec {
    replicas = 1  # Single replica
 
    selector {
      match_labels = {
        app = "example"
      }
    }
 
    template {
      metadata {
        labels = {
          app = "example"
        }
      }
 
      spec {
        container {
          name  = var.c_name
          image = var.c_image
          port {
            container_port = var.c_port
          }
        }
      }
    }
  }
}
 
resource "kubernetes_service" "example" {
  metadata {
    name      = "example-service"
    namespace = "default"
  }
 
  spec {
    selector = {
      app = "example"
    }
 
    port {
      port        = var.c_port #service port
      target_port = var.t_port #target port
    }
 
    type = "LoadBalancer"
  }
}
