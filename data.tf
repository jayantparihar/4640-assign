data "digitalocean_ssh_key" "ACIT-4640" {
  name = "ACIT-4640"
}

data "digitalocean_project" "lab_project" {
  name = "first-project"
}
