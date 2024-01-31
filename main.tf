terraform {
  backend "s3" {
    bucket = "myexp-terraform-state"
    key    = "parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "parameters" {
  default = [
    { name = "test", type = "string", value = "test" },
    { name = "test1", type = "string", value = "test1" }
  ]
}

resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
  overwrite = true
}