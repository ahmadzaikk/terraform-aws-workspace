variable "aws_region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "us-west-2"
}

variable "bundle_id" {
  description = "The identifier of the bundle for the WorkSpace."
  type        = string
}

variable "directory_id" {
  description = "The identifier of the AWS Directory Service directory for the WorkSpace."
  type        = string
}

variable "user_name" {
  description = "The user name for the WorkSpace."
  type        = string
}

variable "root_volume_encryption_enabled" {
  description = "Specifies whether the root volume is encrypted."
  type        = bool
  default     = false
}

variable "user_volume_encryption_enabled" {
  description = "Specifies whether the user volume is encrypted."
  type        = bool
  default     = false
}

variable "volume_encryption_key" {
  description = "The ARN of the AWS KMS key used to encrypt the volumes."
  type        = string
  default     = ""
}

variable "compute_type_name" {
  description = "The compute type of the WorkSpace."
  type        = string
  default     = "VALUE"
}

variable "root_volume_size_gib" {
  description = "The size of the root volume."
  type        = number
  default     = 80
}

variable "running_mode" {
  description = "The running mode of the WorkSpace."
  type        = string
  default     = "AUTO_STOP"
}

variable "running_mode_auto_stop_timeout_in_minutes" {
  description = "The time after a user logs off when WorkSpaces are automatically stopped."
  type        = number
  default     = 60
}

variable "user_volume_size_gib" {
  description = "The size of the user storage."
  type        = number
  default     = 50
}

variable "tags" {
  description = "Tags to apply to the WorkSpace."
  type        = map(string)
  default     = {}
}
