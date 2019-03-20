resource "aws_vpc_endpoint_subnet_association" "association" {
  depends_on = ["aws_vpc_endpoint.endpoint"]

  count           = "${length(split(",", var.service_name))}"
  vpc_endpoint_id = "${aws_vpc_endpoint.endpoint.id}"
  subnet_id       = "${element(split(",", var.subnet_id), count.index)}"
}
