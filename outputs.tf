output "dev5" {
  value = "${aws_instance.dev5.public_ip}"
}

output "dev4" {
  value = "${aws_instance.dev4.public_ip}"
}