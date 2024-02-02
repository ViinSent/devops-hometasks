resource "kubernetes_deployment" "wcg_deployment_tf" {
  metadata {
    name = var.app_name
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.container_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.container_name
        }
      }

      spec {
        container {
          name  = var.container_name
          image = var.wcg_image

          port {
            container_port = var.wcg_service_port
          }
        }
      }
    }
  }
}