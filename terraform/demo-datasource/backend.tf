terraform {
  backend "s3" {
      bucket = "thesct22-whythough"
      key = "development/terrafrom_state"
      region = "us-east-2"
  }
}