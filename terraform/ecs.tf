resource "alicloud_instance" "terraform_ecs" {
  # cn-beijing
  availability_zone = "cn-beijing-a"
  security_groups   = alicloud_security_group.default.*.id
  # series III
  instance_type              = "ecs.n1.tiny"
  instance_charge_type       = "PostPaid"
  system_disk_category       = "cloud_efficiency"
  system_disk_size           = "20"
  image_id                   = "ubuntu_22_04_uefi_x64_20G_alibase_20230515.vhd"
  instance_name              = "headscale"
  vswitch_id                 = alicloud_vswitch.main.id
  internet_charge_type       = "PayByTraffic"
  internet_max_bandwidth_out = 10
  key_name                   = "txyu7_LiuYuboPC"
  dry_run                    = true
}
