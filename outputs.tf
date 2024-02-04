output "ecr_repository_urls" {
  value = [for name, repository in module.repositories : repository.ecr_repository_url]
}

output "github_oidc_provider_arn" {
  value = aws_iam_openid_connect_provider.github.arn
}

output "github_oidc_provider_url" {
  value = aws_iam_openid_connect_provider.github.url
}

