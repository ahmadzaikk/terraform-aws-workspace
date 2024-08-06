output "workspace_id" {
  description = "The ID of the WorkSpace."
  value       = aws_workspaces_workspace.example.id
}

output "workspace_state" {
  description = "The state of the WorkSpace."
  value       = aws_workspaces_workspace.example.state
}
