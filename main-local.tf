provider "local" {
    #
}

locals {
    my_string = "hello, Terraformer"
}

output "print_my_string" {
    value = local.my_string
}
