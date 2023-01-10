terraform {
  
}

variable "hello" {
  type = string
}

# using interpolation and output block to get the "Hello ___" string combining the variable and the tfvars file
output "hw_out" {
  value = "Hello ${var.hello}"
}

# if statement that states if the hello variable is equal to the string "barsoon" it will print out "Mars", if it does not then it will print "World"
output "barsoon_if"{
    value = "Hello %{if var.hello == "barsoon"}Mars%{else}World%{endif}"
}
