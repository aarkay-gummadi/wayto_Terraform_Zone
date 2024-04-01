
* Now Asquare info systems needs to have an apporach to deploy the iECommerce application into Customers Cloud/Virtual Environments
* Architecture of iECommerce
* Infra for iECommerce
    * Two networks with connectivity b/w them (same building, different buildings, cities, countries)
    * In Each network
        * Two Databases
           * mysql




* Solution:
   * InfraProvisioning: This represents using Infrastructure as a Code and deploy to target environment




Understanding InfraProvisioning
-------------------------------

* Analogy
* We using InfraProvisioning tools where we express our desired state about infrastructure as code.
* Terraform: Can create infra in almost all the virtual environments
* ARM Templates: Can create infra in Azure
* Cloudformation: Can create infra in AWS
* InfraProvisioning tools use IaC which are generally idempotent
* Idempotance is the property which states execution one time or multiple times leads to the same result.
* Reusability is extreemely simple and terraform can also handle multiple environments (Developer, QA, UAT/Staging/Production).