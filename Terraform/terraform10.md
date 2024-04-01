* So far we have 


### Creating RDS DB Instance (db)
* Manual Steps:
   * DB Subnet Group: This is more than on e subnet where the database has to be created
   * Security Group:
      * mysql: open 3306 port with in vpc
  * Database Engine: mysql
  * size: db.t2.micro
  * credentials: username and password

* Create security group
* Create


### Activity

* Create a new folder and one tf file with local provider to create a text file anywhere in your system
* When you apply you get state file
    * copy the state file and store with name state_1.tfstate
* Now change the path to new directory and apply the changes
    * copy the state file and store with name state_2.tfstate
* Try adding a output in tf
    * copy the state file and store with name state_3.tfstate