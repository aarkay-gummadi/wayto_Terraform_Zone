Problem with Backends
----------------------
* If we use the backends using same template for managing different environment will be tricky.
* When user 1 tries update Dev it should not stop user 2 to update  QA environment
* The basic idea is to use the same template across environments


Terraform has workspaces
------------------------

* Terraform by default assumes the current workspace is default
* Lets create a workspace called as dev by user 1
* 

### Interpolation in terraform 

* Interpolation can be acheived by using format function or `${var}` expression
