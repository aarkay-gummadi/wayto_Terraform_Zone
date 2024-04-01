Terraform Contd...
----------------------

Hashicorp Configuration Language (HCL) for  Terraform
-----------------------------------------------------

### Parametrizing Terraform

#### Input Variables

* For inputs terraform supports the following types
   * number
   * string
   * boolean
   * list(<TYPE>)
   * set(<TYPE>)
   * map(<TYPE>)
   * object({<ATTR NAME> = <TYPE>..})
   * tuple([<TYPE>, ...])


* To pass variables while executing commands we have two options 
   * -var
    * -var-file