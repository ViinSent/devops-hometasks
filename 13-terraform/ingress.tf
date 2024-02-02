resource "kubernetes_ingress_v1" "wcg_ingress_tf" {
  metadata {
    name = var.ingress_name
  }

  spec {
    default_backend {
        service {
            name = kubernetes_service.wcg_service_tf.metadata[0].name
            port {
                number = kubernetes_service.wcg_service_tf.spec[0].port[0].port
            }
        }
    }
    rule {
      host = var.ingress_host_name
      http {
        path {
          backend {
            service {
              name = kubernetes_service.wcg_service_tf.metadata[0].name
              port {
                  number = kubernetes_service.wcg_service_tf.spec[0].port[0].target_port
              }
            }
          }

          path = "/"
        }
      }
    }
  }
}