# @group "Kubernetes Configuration"
# @label "命名空间"
variable "namespace" {
  description = "Namespace to deploy"
  type        = string 
}

# @group "Image Configuration"
# @label "镜像仓库地址"
variable "image_registry" {
  description = "Image registry"
  type        = string
  default     = "docker.io"
}


# @group "Image Configuration"
# @label "镜像仓库项目"
variable "image_repository" {
  description = "Image repository"
  type        = string
  default     = "liyinlin"
}


# @group "Image Configuration"
# @label "镜像版本"
variable "image_version" {
  description = "Image tag"
  type        = string
  default     = "v0.6.0"
}

# @hidden
variable "emailservice_service_name" {
  type        = string
  description = "Online Boutique emailservice service name"
  default     = "emailservice"
}

# @hidden
variable "walrus_metadata_service_name" {
  type        = string
  description = "Walrus metadata service name."
  default     = ""
}
# @hidden
variable "walrus_metadata_namespace_name" {
  type        = string
  description = "Walrus metadata namespace name."
  default     = ""
}
