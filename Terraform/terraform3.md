N-Tier Application
------------------

* Consider the following architecture of a typical web application (ticket booking)
* To realize this application on AWS, the high level overview is as shown below
*  To realize this application on Azure, the high level overview is as shown below
[refer here](https://directdevops.blog/2019/04/02/test-kitchen-setup-with-aws/) for the official docs of test-kitchen setup with aws.


WOW (Ways of Working)
---------------------
* Lets realize the architecture manually, make a note of 
    * resource 
    * inputs
    * outputs
* Find resources in Terraform to achive the above manual steps


Configuring a Provider in Terraform
-----------------------------------
### Install Terraform on a linux machine
 
* Create a linux vm and ssh into it and execute the steps based on your distrubtion from here
```
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```


### AWS Provider

* Terraform aws provider uses the AWS APIs to get the infra created.
* To Create infrastructure in your AWS Account, it needs AWS programmatic credentilas (Secret key and access key)

```
provider "aws" {
    region = "us-west-2"
    access_key = ""
    secret_key = ""
}
```

* This is not a great way as we are having sensitive informatin in the text format.
* Best way is to install aws cli on the machine with terraform and terraform will automatically pickup credentials from there.
* Installing aws cli
* Now your provider