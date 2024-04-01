Solving the problem with for-each
----------------------------------

Immutable Infrastructure
------------------------
* When there is any change needed to be done in infra change template not infra.
* Every change needs to be version controlled.
* 


Provisioners
-----------

* [refer here](https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax) for the official docs of provisioners
* Terraform recommends using cloud-init custom or user-data instead of provisioners
* 


### Terraform provisioners
* Terraform has two kinds of provisioners 
   * local-exec: This executes on the machine where terraform apply is executed
   * remote-exec: This executes on the remote machine generally the machine created
   * file provisioner: which is used to copy the file from local to remote
   * For remote provisioners and file provisioner


* To solve this problem use `null_resource`

resource "null_resource" "executor" {
    triggers = {
    cluster_instance_ids = join(",", aws_instance.cluster.*.id)
  }

}

Building Reusable templates in Terraform using Modules
---------------------------------------------------------

* Now we want to make that reusable
* Terraform modules has
   * inputs 
   * resources
   * outputs
