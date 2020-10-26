terraform {
  backend "remote" {
    organization = "popa-org"

    workspaces {
      prefix = "infra-code-promotion-"
    }
  }
}
