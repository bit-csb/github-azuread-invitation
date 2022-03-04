variable "map_name" {
  type = string
  description = "Name of the property containing the users within the map"
  default = "group_map"  
}

variable "property_name" {
  type = string
  description = "Name of the property containing the users within the map"
  default = "members"
}