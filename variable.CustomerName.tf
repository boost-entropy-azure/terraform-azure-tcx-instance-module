variable "CustomerName" {
  type = string
}

variable "AdminUsername" {
  type = string
}

variable "AdminPublicKey" {
  type = string
}

variable "CustomerSubdomain" {
  type = string
}

variable "VendorDomainName" {
  type = string
}

variable "AzureResourceGroupLocation" {
  type        = string
  description = "The location where the resource group will be created."
}

variable "AzureVirtualMachineSize" {
  type = string
}

variable "cloudflare_zone_id" {
  type = string
}

variable "cloudflare_email" {
  type = string
}

variable "cloudflare_api_key" {
  type = string
}

variable "file_share_quota_size" {
  type = string
}