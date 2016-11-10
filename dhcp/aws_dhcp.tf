resource "aws_vpc_dhcp_options" "foo" {
  domain_name = "service.consul"
  domain_name_servers = ["127.0.0.1", "169.254.169.253"]
  ntp_servers = ["127.0.0.1"]
  netbios_name_servers = ["127.0.0.1"]
  netbios_node_type = 2
  vpc

  tags {
    Name = "${var.name}"
  }
}