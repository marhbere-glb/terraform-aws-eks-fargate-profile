variable "region" {
  type        = string
  description = "AWS Region"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
}

variable "vpc_cidr_block" {
  type        = string
  description = "VPC CIDR block"
}

variable "namespace" {
  type        = string
  description = "Namespace, which could be your organization name, e.g. 'eg' or 'cp'"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT'"
}

variable "stage" {
  type        = string
  description = "Stage, e.g. 'prod', 'staging', 'dev' or 'testing'"
}

variable "name" {
  type        = string
  description = "Solution name, e.g. 'app' or 'cluster'"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `name`, `namespace`, `stage`, etc."
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit`,`XYZ`)"
}

variable "kubernetes_version" {
  type        = string
  default     = null
  description = "Desired Kubernetes master version. If you do not specify a value, the latest available version is used"
}

variable "oidc_provider_enabled" {
  type        = bool
  default     = false
  description = "Create an IAM OIDC identity provider for the cluster, then you can create IAM roles to associate with a service account in the cluster, instead of using kiam or kube2iam. For more information, see https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html"
}

variable "kubernetes_namespace" {
  type        = string
  description = "Kubernetes namespace for selection"
}

variable "kubernetes_labels" {
  type        = map(string)
  description = "Key-value mapping of Kubernetes labels for selection"
}

variable "desired_size" {
  type        = number
  description = "Desired number of worker nodes"
}

variable "max_size" {
  type        = number
  description = "The maximum size of the AutoScaling Group"
}

variable "min_size" {
  type        = number
  description = "The minimum size of the AutoScaling Group"
}

variable "disk_size" {
  type        = number
  description = "Disk size in GiB for worker nodes. Defaults to 20. Terraform will only perform drift detection if a configuration value is provided"
}

variable "instance_types" {
  type        = list(string)
  description = "Set of instance types associated with the EKS Node Group. Defaults to [\"t3.medium\"]. Terraform will only perform drift detection if a configuration value is provided"
}
