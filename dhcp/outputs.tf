output "dhcp_id" {
  value = "${aws_vpc_dhcp_options.foo.id}"
}