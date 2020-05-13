module "cloudd_hcloud" {
  source = "github.com/ingobecker/cloudd-hcloud"

  api_token = var.api_token
  name      = ""
  context   = ""

  user    = var.user
  ssh_key = var.ssh_key
}

variable "api_token" {
  type        = string
  description = "Primary user, mainly for debugging."
}

variable "user" {
  type        = string
  description = "Primary user, mainly for debugging."
  default     = ""
}

variable "ssh_key" {
  type        = string
  description = "Primary user, mainly for debugging."
  default     = ""
}

output "image_id" {
  value = module.cloudd_hcloud.image_id
}
