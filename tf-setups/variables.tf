variable "project_name" {
  type        = string
  description = "Globally used project name for this example"
  default     = "terraform-registry"
}
variable "region" {
  type        = string
  description = "AWS US-based Region that will be used in this demo."
  default     = "us-west-2"
}
variable "cidr" {
  type        = string
  description = "The CIDR block to use for this demo"
  default     = "10.0.0.0/16"
}
variable "cluster-version" {
    type = string
    description = "kubernetes version for the cluster"
    default     = "1.27"
}
variable "cluster_instance_type" {
  type        = string
  description = "EC2 instance type for the EKS autoscaling group."
  default     = "m5.medium"
}
variable "cluster_asg_desired_capacity" {
  type        = number
  description = "The default number of EC2 instances our EKS cluster runs."
  default     = 2
}
variable "cluster_asg_max_size" {
  type        = number
  description = "The maximum number of EC2 instances our EKS cluster will have."
  default     = 4
}
variable "cluster_enabled_log_types" {
  type        = list(string)
  description = "The Kubernetes log types that will be enabled for the EKS cluster."
  default     = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
}
variable "cluster_write_kubeconfig" {
  type        = bool
  description = "Specify if Terraform should output the Kubernetes configuration file. "
  default     = false
}