provider "aws" {
  region = var.aws_region
}

resource "aws_workspaces_workspace" "example" {
  bundle_id                    = var.bundle_id
  directory_id                 = var.directory_id
  #user_name                    = var.user_name
  root_volume_encryption_enabled = var.root_volume_encryption_enabled
  user_volume_encryption_enabled = var.user_volume_encryption_enabled
  volume_encryption_key         = var.volume_encryption_key
  workspace_properties {
    compute_type_name          = var.compute_type_name
    root_volume_size_gib       = var.root_volume_size_gib
    running_mode               = var.running_mode
    running_mode_auto_stop_timeout_in_minutes = var.running_mode_auto_stop_timeout_in_minutes
    user_volume_size_gib       = var.user_volume_size_gib
  }
  tags = var.tags
}
