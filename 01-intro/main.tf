provider "local" {}

resource "local_file" "foo" {
  content  = "Hello World"
  filename = "/tmp/foo.bar"
}

# Normal Variable
variable "x" {
  default = 10
}

# List variable

variable "y" {
  default = [ 1, "abc", 0.3, false]
}
# list can have a combination of types also

variable "z" {
  default = {
    name = "JOhn"
    age = 20

    name = "sonu"
        age = 30

  }
}

## Print variable on output
output "x" {
  value = var.x
}

# if our value is just variable then var.x , if it is combination of strings then "${var.x}"
output "x1" {
  value = "Value of x - ${var.x}"
}

output "y1" {
  value = var.y[0]
}

output "z" {
  value = "Name - ${var.z["name"]}, Age - ${var.z.age}"
}


