Terraform contd
----------------

Azure Provider
-------------
* To install azure cli
* To authenticate azure cli

```
az login
az group list
mkdir helloaztf
cd helloaztf
vi main.tf
terraform init
terraform apply
terraform destroy
```

```
provider "azurerm" {
    features {            }
}

resource "azurerm_resource_group" "example" {
    name     = "example-resources"
}
```

Providers and resources
--------------------------

* In terraform to create any resource we need to configure provider
* Every provider has a specific structure

```
provider "<name>" {
    <ARGUMENT-1> = <VALUE-1>
    ..
    ..
    ..
    <ARGUMENT-N> = <VALUE-N>

}
```
* AWS Provider argument reference
* Azure Provider argument reference
* Resource: The syntax or structure of resource in terraform template is
```
resource <type of rsource> <name> {
    <ARGUMENT-1> = <VALUE-1>
    ..
    ..
    ..
    <ARGUMENT-N> = <VALUE-N>

}
```

* The type of resource will be in the form of `<provider>_<resource_type>


### Manual Steps of VPC Creation
* Steps: Lets create a simple vpc 
* Lets search for terraform aws vpc [refer here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) for the official docs.
* Now look at arguments
* Create the template as
* 