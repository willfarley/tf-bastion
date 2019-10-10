# Bastion EC2 Security Group

resource "aws_security_group" "bastion" {
  name        = "bastion-ec2-${var.bastion_tag_environment}"
  description = "Security Group for the Bastion EC2 Instance"
  vpc_id      = "${var.bastion_vpc_id}"
}

# Allow Bastion SSH ingress from trusted CIDR

resource "aws_security_group_rule" "bastion_allow_ssh_ingress_trusted" {
  security_group_id = "${aws_security_group.bastion.id}"
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["${var.bastion_ssh_ingress_cidr}"]
}

# Allow Bastion egress for all

resource "aws_security_group_rule" "bastion_allow_egress_all" {
  security_group_id = "${aws_security_group.bastion.id}"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}
