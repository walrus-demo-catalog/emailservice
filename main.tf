terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
}

data "kubectl_path_documents" "manifest" {
  pattern = "${path.module}/emailservice.yaml"
  vars = {
    namespace        = local.namespace 
    image_registry   = var.image_registry
    image_repository = var.image_repository
    image_version    = var.image_version
  }
}

resource "kubectl_manifest" "manifest" {
  wait_for_rollout = false
  depends_on = [kubectl_manifest.namespace]

  count     = length(data.kubectl_path_documents.manifest.documents)
  yaml_body = element(data.kubectl_path_documents.manifest.documents, count.index)
}

data "kubernetes_service" "emailservice" {
  depends_on = [kubectl_manifest.manifest]

  metadata {
    name      = local.emailservice_service_name
    namespace = local.namespace
  }
}

locals {
  name                      = coalesce(var.name, "${var.walrus_metadata_service_name}")
  namespace                 = coalesce(var.namespace, var.walrus_metadata_namespace_name)
  emailservice_service_name = var.emailservice_service_name
}
