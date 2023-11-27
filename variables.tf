variable "name" {
  type        = string
  description = "Name of the deployment resource. Auto-generated if empty."
  default     = ""
}

variable "namespace" {
  type        = string
  description = "Namespace to deploy. Auto-generated if empty."
  default     = ""
}

variable "replicas" {
  type        = number
  description = "Replicas to deploy"
  default     = 1
}

variable "image_registry" {
  description = "Image registry"
  type        = string
  default     = "docker.io"
}


variable "image_repository" {
  description = "Image repository"
  type        = string
  default     = "liyinlin"
}


variable "image_version" {
  description = "Image tag"
  type        = string
  default     = "v0.8.0"
}

variable "service_name" {
  type        = string
  description = "Service name"
  default     = "emailservice"
}

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}
