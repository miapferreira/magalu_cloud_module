terraform {
  required_providers {
    mgc = {
      source  = "MagaluCloud/mgc"
      version = "0.19.3"
    }
  }
}

provider "mgc" {
  region = "br-ne1"
}