#the public subnet with two avaibility zone
resource "aws_subnet" "public" {
  count="${length(var.public_subnet)}"
  vpc_id     = aws_vpc.website.id
  cidr_block = "${var.public_subnet[count.index]}"
  availability_zone="${var.public_avaibility_zone[count.index]}"
  map_public_ip_on_launch="true"

  tags = {
    Name = "public"
  }
}

