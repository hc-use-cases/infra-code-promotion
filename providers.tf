provider "aws" {
  region = lookup(var.regions, var.env)
}