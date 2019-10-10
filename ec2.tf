# Bastion EC2 Instance. Could be ASG/ELB combination, but EC2/EIP to save cost.

resource "aws_instance" "bastion" {
  ami             = "${var.bastion_ami_id}"
  instance_type   = "${var.bastion_instance_type}"
  key_name        = "${var.bastion_ssh_key_name}"
  subnet_id       = "${var.bastion_subnet_id}"

  vpc_security_group_ids = ["${aws_security_group.bastion.id}"]

  tags = {
    Name = "${var.bastion_tag_environment}-bastion"
  }
}


resource "aws_eip" "bastion" {
  instance  = "${aws_instance.bastion.id}"
  vpc       = true
}
