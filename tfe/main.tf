resource "tfe_workspace" "dev" {
  name         = "infra-code-promotion-dev"
  organization = "popa-org"
}

resource "tfe_workspace" "qa" {
  name         = "infra-code-promotion-qa"
  organization = "popa-org"
}

resource "tfe_workspace" "prod" {
  name         = "infra-code-promotion-prod"
  organization = "popa-org"
}

// dev
resource "tfe_variable" "dev_env" {
  key          = "env"
  value        = "dev"
  category     = "terraform"
  workspace_id = tfe_workspace.dev.id
  description  = "ENV type - dev"
}

resource "tfe_variable" "dev_az" {
  key          = "availability_zones"
  value        = "[\"ap-south-1a\", \"ap-south-1b\", \"ap-south-1c\"]"
  hcl          = true
  category     = "terraform"
  workspace_id = tfe_workspace.dev.id
  description  = "list of availability zones for DEV"
}

// dev env
resource "tfe_variable" "dev_aws_key" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.dev.id
  description  = "aws access key"
}

resource "tfe_variable" "dev_aws_secret" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.dev.id
  description  = "aws secret key"
}

resource "tfe_variable" "dev_aws_token" {
  key          = "AWS_SESSION_TOKEN"
  value        = var.aws_session_token
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.dev.id
  description  = "aws session token"
}

resource "tfe_variable" "dev_aws_region" {
  key          = "AWS_DEFAULT_REGION"
  value        = "ap-south-1"
  category     = "env"
  workspace_id = tfe_workspace.dev.id
  description  = "aws region for DEV"
}

// qa
resource "tfe_variable" "qa_env" {
  key          = "env"
  value        = "qa"
  category     = "terraform"
  workspace_id = tfe_workspace.qa.id
  description  = "ENV for QA"
}

resource "tfe_variable" "qa_az" {
  key          = "availability_zones"
  value        = "[\"eu-north-1a\", \"eu-north-1b\", \"eu-north-1c\"]"
  hcl          = true
  category     = "terraform"
  workspace_id = tfe_workspace.qa.id
  description  = "list of availability zones for QA"
}

// qa env
resource "tfe_variable" "qa_aws_key" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.qa.id
  description  = "aws access key"
}

resource "tfe_variable" "qa_aws_secret" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.qa.id
  description  = "aws secret key"
}

resource "tfe_variable" "qa_aws_token" {
  key          = "AWS_SESSION_TOKEN"
  value        = var.aws_session_token
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.qa.id
  description  = "aws session token"
}

resource "tfe_variable" "qa_aws_region" {
  key          = "AWS_DEFAULT_REGION"
  value        = "eu-north-1"
  category     = "env"
  workspace_id = tfe_workspace.qa.id
  description  = "aws region for QA"
}

// prod
resource "tfe_variable" "prod_env" {
  key          = "env"
  value        = "prod"
  category     = "terraform"
  workspace_id = tfe_workspace.prod.id
  description  = "ENV for PROD"
}

resource "tfe_variable" "prod_az" {
  key          = "availability_zones"
  value        = "[\"eu-west-3a\", \"eu-west-3b\", \"eu-west-3c\"]"
  hcl          = true
  category     = "terraform"
  workspace_id = tfe_workspace.prod.id
  description  = "list of availability zones for PROD"
}

// prod env
resource "tfe_variable" "prod_aws_key" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.prod.id
  description  = "aws access key"
}

resource "tfe_variable" "prod_aws_secret" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.prod.id
  description  = "aws secret key"
}

resource "tfe_variable" "prod_aws_token" {
  key          = "AWS_SESSION_TOKEN"
  value        = var.aws_session_token
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.prod.id
  description  = "aws session token"
}

resource "tfe_variable" "prod_aws_region" {
  key          = "AWS_DEFAULT_REGION"
  value        = "eu-west-3"
  category     = "env"
  workspace_id = tfe_workspace.prod.id
  description  = "aws region for PROD"
}