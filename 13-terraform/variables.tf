variable "wcg_service_port" {
  description = "The port of the service"
  type        = number
  default     = 8888
}

variable "wcg_container_port" {
  description = "The port of the container"
  type        = number
  default     = 80
}

variable "wcg_image" {
  description = "The name and path of the image"
  type        = string
  default     = "ghcr.io/viinsent/wcg:latest"
}

variable "container_name" {
  description = "The name of the container"
  type        = string
  default     = "word-cloud-generator"
}

variable "replicas" {
  description = "The number of replicas"
  type        = number
  default     = 1
}

variable "app_name" {
  description = "The name of the application"
  type        = string
  default     = "wcg-deployment-tf"
}

variable "ingress_name" {
  description = "The name of the ingress"
  type        = string
  default     = "wcg-ingress-tf"
}

variable "service_name" {
  description = "The name of the service"
  type        = string
  default     = "wcg-service-tf"
}

variable "ingress_host_name" {
  description = "The name of the host name"
  type        = string
  default     = "word-cloud-generator.test.local"
}

variable "tf_token" {
  sensitive = true
  type      = string
  default   = "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"
}

variable "files" {
  default = [
    "ingress.tf",
    "service.tf",
    "variables.tf",
    "versions.tf",
    "wcg-deploy.tf",
    "repo.tf"
  ]
}
