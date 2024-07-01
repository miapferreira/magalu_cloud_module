module "projeto_mg" {
  source              = "git::https://github.com/miapferreira/magalu_cloud_module.git"
  name                = "projeto-mg"
  environment         = "dev"
  ssh_key_name        = "magalu"
  associate_public_ip = true
  password            = "password"
  user                = "user"
}