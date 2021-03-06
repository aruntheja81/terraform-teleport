variable "auth_server" {
  type        = string
  description = "Auth server that this node will connect to, including the port number"
}

variable "auth_token" {
  type        = string
  description = "Auth token that this node will present to the auth server. **Note** that this should be the bare token, without the type prefix. See the official [documentation on static tokens](https://gravitational.com/teleport/docs/2.3/admin-guide/#static-tokens) for more info"
}

variable "function" {
  type        = string
  description = "Function that this node performs, will be the first part of the node name"
}

variable "project" {
  type        = string
  description = "Project where this node belongs to, will be the second part of the node name"
  default     = ""
}

variable "environment" {
  type        = string
  description = "Environment where this node belongs to, will be the third part of the node name"
  default     = ""
}

variable "include_instance_id" {
  type        = bool
  description = "If running in EC2, also include the instance ID in the node name. This is needed in autoscaled environments, so nodes don't collide with each other if they get recycled/autoscaled"
  default     = true
}

variable "additional_labels" {
  type        = list(string)
  description = "List of additional labels to add to the Teleport node. Every list item represents a label, with its key and value. Example: `[\"k8s_version: 1.10.10\", \"instance_type: t2.medium\"]`"
  default     = []
}
