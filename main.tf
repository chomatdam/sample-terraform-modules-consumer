module "greeting" {
  source = "git::ssh://git@github.com/chomatdam/sample-terraform-modules.git//modules/greeting?ref=greeting-v0.1.1"

  name = "world"
}

module "naming" {
  source = "git::ssh://git@github.com/chomatdam/sample-terraform-modules.git//modules/naming?ref=naming-v0.1.0"

  project     = "sample"
  environment = "dev"
}
