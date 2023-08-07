data "alicloud_images" "ubuntu" {
#  most_recent = true
  name_regex  = "^ubuntu_22.*"
}
output "this_information" {
  value       = data.alicloud_images.ubuntu
}
