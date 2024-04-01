output "apacheurl" {
  value = format("http://%s", aws_instance.myinstance.public_ip)
}