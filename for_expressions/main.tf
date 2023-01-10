terraform {
  
}

variable "worlds" {
  type = list
}

# using for loop, it made all the characters in the var file uppercase within the "Worlds" list
output "hw_out" {
  value = [for w in var.worlds : upper(w)]
}

variable "worlds_map" {
  type = map
}

# using for loop, we traversed over the map and referenced the key:value pair in the loop.  Then made all upercase letters for the keys in the output block "worlds_map_uppercase_keys", then made uppercase letters for the values in the output block "worlds_map_uppercase_values"
output "worlds_map_uppercase_keys" {
  value = [for k,v in var.worlds_map : upper(k)]
}
output "worlds_map_uppercase_values" {
  value = [for k,v in var.worlds_map : upper(v)]
}

# using for loop, traverse over "worlds" object and print out the index and value for each thing in the list, also captilize each character 
output "world_map_locationprint" {
    value = {for i,w in var.worlds : "${i}" => upper(w)}
}
