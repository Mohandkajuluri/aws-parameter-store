
variable "parameters" {
  default = [
    { name = "test", type = "String", value = "test" },
    { name = "dev.rds.username", type = "String", value = "admin1" },
    { name = "dev.rds.password", type = "SecureString", value = "ExpenseApp123" }
  ]
}