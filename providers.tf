terraform {
  required_version = ">= 1.0.0"
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.0.0"
    }
  }
}

provider "helm" {
  kubernetes {
    # Points to your local kubeconfig. 
    # Modify the path if yours is located elsewhere (e.g., Minikube or Kind)
    config_path = "~/.kube/config"
  }
}