terraform {
  required_providers {
    sdwan = {
      source = "CiscoDevNet/sdwan"
    }
  }
}

provider "sdwan" {
  username = "username"
  password = "password"
  url      = "https://sdwan-manager.url"
}

module "sdwan" {
  source           = "netascode/nac-sdwan/sdwan"
  version          = "1.2.0"
  yaml_directories = ["data"]
}
