data "aws_ip_ranges" "us_east_ip_range" {
  regions = [ "us-east-1","us-east-2" ]
  services = [ "ec2" ]
}

resource "aws_security_group" "security_custom_us_east" {
  name = "secuirty_custom_us_east"

  ingress {
    cidr_blocks = slice(data.aws_ip_ranges.us_east_ip_range.cidr_blocks, 0, 20)
    from_port = "443"
    protocol = "tcp"
    to_port = "443"
  }

  tags = {
    CreateDate = data.aws_ip_ranges.us_east_ip_range.create_date
    SyncToken = data.aws_ip_ranges.us_east_ip_range.sync_token
  }
}