variable "d1" {
    
    default = 5
}

resource "null_resource" "nothing" {
    
    count = var.d1
}

variable "d2" {
    
    default = [ "guava", "cherry", "strawberry"]
}

resource "null_resource" "d2" {
    
    count = length(var.d2)
}

variable "d3" {
    
    default = {
        
        fruit = {
            name = "apple"
            count = 3
        }
        
        vegetalbe = {
            name = "lemon"
            count = 5
        }
    }
}


resource "null_resource" "d3" {
    
    for_each = var.d3
}

output