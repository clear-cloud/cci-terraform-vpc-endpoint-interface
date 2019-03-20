resource "aws_security_group" "endpoint" {
  name        = "${var.service_name} access in ${var.environment}"
  description = "Allows access to Interface type VPC Endpoints from ${var.vpc_cidr}"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
 tags {
    environment   = "${var.environment}"
    orchestration = "${var.orchestration}"
  }
}
