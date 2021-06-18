variable "ami_id" {
  type        = string
  default     = "ami-"
  description = "ID of the AMI in a format 'ami-1z2x3c4v5b6m'"

}
variable "default_instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Default instance type"

}
// KEYS
variable "key" {
  type = string
  default = "robot-key"
}
variable "public_key" {
  type =string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBA5bOtGszwUKhwag6LJ2isPQYlsLQWy/ELy/bgSwZQJ5qg9kfzaqe/+fMmljAeCTy86iynRdNBogZkPOtzOieLPA8WKWSirqo/eZkivY4yvk6ULG5yws/JvczHXNTP885ywon2npIomVP3g+dI+WMb9LpcIALUQI7uEjYKV/vKqywNhlsKFME6B+skQTJhJtcQukYypUhpc/WT2qLigxQmyPGyTNAfVwYO7mHsHa5wtbXkrqXhJ4mmiD7CYp5ThO6YS7+XYgALZpbCPuK5iy0diNea6ptsq5WVBeQoxlY9ZGna2gzhPevBfDuMQ4LJb///CENtAVkqN5B5A8Gjk1H ilia@ilia-k"
}


variable "eip_attach" {
  type        = bool
  default     = false
  description = "Selector for ElasticIP: true == create and attach"
}