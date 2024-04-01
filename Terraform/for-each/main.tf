resource "local_file" "problem" {
  for_each = toset(var.filenames)
  content  = "hello"
  filename = each.key
}