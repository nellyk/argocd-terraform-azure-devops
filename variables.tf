variable "kubernetes_cluster_name" {
  type        = string
  default     = "myAks"
  description = "The name of the Kubernetes cluster."
}

variable "location" {
  type        = string
  default     = "East US 2"
  description = "The location of the resources."
  
}
variable "git_public_ssh_key" {
  description = "A custom ssh key to control access to the AKS workload cluster(s). This should a string containing the key and not a filepath to the key."
  type        = string
  default     = ""
}
# Addons Git
variable "gitops_addons_org" {
  description = "Specifies the Git repository org/user contains for addons."
  type        = string
  default     = "https://github.com/azure-samples"
}
variable "gitops_addons_repo" {
  description = "Specifies the Git repository contains for addons."
  type        = string
  default     = "aks-platform-engineering"
}
variable "gitops_addons_revision" {
  description = "Specifies the Git repository revision/branch/ref for addons."
  type        = string
  default     = "main"
}
variable "gitops_addons_basepath" {
  description = "Specifies the Git repository base path for addons."
  type        = string
  default     = "gitops/" # ending slash is important!
}
variable "gitops_addons_path" {
  description = "Specifies the Git repository path for addons."
  type        = string
  default     = "bootstrap/control-plane/addons"
}
variable "tags" {
  description = "Specifies tags for all the resources."
  default = {
    createdWith = "Terraform"
    pattern     = "GitOpsBridge"
  }
}