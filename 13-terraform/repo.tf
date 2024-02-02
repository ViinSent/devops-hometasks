resource "github_repository_file" "file" {

  for_each = {for file in var.files : file => file}

  repository = "devops-hometasks"
  branch     = "main"
  file       = "13-terraform/${each.value}"
  content    = file("${path.module}/${each.value}")

  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform User"
  commit_email        = "viinsent@gmail.com"
  overwrite_on_create = true
}