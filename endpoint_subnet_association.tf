resource "aws_vpc_endpoint_subnet_association" "association" {
  count           = "${length(split(",", var.subnet_id))}"
  vpc_endpoint_id = "${aws_vpc_endpoint.endpoint.id}"
  subnet_id       = "${element(split(",", var.subnet_id), count.index)}"
}
