output "bastion_eip_public_ip" {
  description = "The Public Elastic IP assigned to the Bastion instance"
  value = "${aws_eip.bastion.public_ip}"
}

output "sg_id" {
  description = "The Bastion Security Group ID"
  value = "${aws_security_group.bastion.id}"
}
