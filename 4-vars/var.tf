variable "sample"{
    
    default = "hello world"
}

output "sample"{
    
    value = var.sample
}

variable "sample1" {}

output "sample1" {
    value = var.sample1
}

variable "cli" {}

output "cli" {
    value = var.cli
}

#share environmental variable is like export in shell
variable "input" {}

variable "sample6" {
    
    default = "hello varialbe types"
}

variable "sample7" {
    
    default = [
    100,
    true,
    "hello7"
    
    ]
}

variable "sample8" {
    
    default = {
        string = "hello",
        number = 1000,
        boolean = true
    }
}


output "types" {
    
     value = "Variable sample6 - ${var.sample6}, Variabe of List Sample7 - ${var.sample7[0]}, Variable of Map Sample8 = ${var.sample8["boolean"]}"
    
}



