terraform {
  required_version = ">= 1.3.0"
  required_providers {
    kubernetes = { source = "hashicorp/kubernetes", version = "~> 2.25" }
  }
}

provider "kubernetes" { config_path = "~/.kube/config" }

resource "kubernetes_namespace" "core"  { metadata { name = "app-core"  } }
resource "kubernetes_namespace" "prod"  { metadata { name = "app-prod"  } }
resource "kubernetes_namespace" "tests" { metadata { name = "app-tests" } }
