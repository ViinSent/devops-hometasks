resource "kubernetes_service" "wcg_service_tf" {
  metadata {
    name = var.service_name
  }

  spec {
    selector = {
      app = var.container_name
    }

    port {
      port        = var.wcg_container_port
      target_port = var.wcg_service_port
    }
  }
}