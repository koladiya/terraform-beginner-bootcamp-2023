# Terraform Beginner Bootcamp 2023



## Terraform Basics

Terraform is an open-source infrastructure as code (IaC) tool used in the field of cloud computing and IT infrastructure management. It allows users to define and manage their infrastructure, including servers, networks, and databases, using code. With Terraform, you can specify the desired state of your infrastructure in configuration files, and then Terraform will automatically create, update, or delete resources to match that desired state. This approach makes it easier to manage and automate the provisioning and configuration of complex infrastructure in a consistent and repeatable manner, whether in the cloud or on-premises.

### Terraform Registry
[registry.terraform.io](https://registry.terraform.io/)

- **Providers** : In the context of Terraform, a "provider" is a plugin or interface that allows Terraform to interact with and manage a specific cloud or infrastructure platform. Each provider is responsible for translating Terraform configurations into the actions and _API calls_ needed to create, update, or delete resources within its respective platform.

- **Modules**: In Terraform, a "module" is a reusable and encapsulated unit of configuration that allows you to define, organize, and package infrastructure resources and configurations. Modules are like building blocks that help you create and manage infrastructure more efficiently and maintainably. 

[Random provider](https://registry.terraform.io/providers/hashicorp/random/latest/docs) 


#### Terraform Init
```terraform init``` is a command to prepare your Terraform environment by downloading necessary plugins and setting up the backend for storing infrastructure state. It's typically the first step when using Terraform in a new project or after making significant changes to your configuration.

#### Terraform Plan & Apply
``terraform plan`` is a Terraform command used to preview the changes that Terraform will make to your infrastructure. It analyzes your configuration files and shows you what resources will be created, modified, or deleted when you apply your Terraform configuration using ``terraform apply``. This allows you to review and verify the expected changes before making them to ensure they align with your intentions and expectations.

#### Terraform Destroy
`terraform destroy` is a Terrafrom command used to delete the reources.


#### Terraform Lock files
The ``.terraform.lock.hcl`` file is used in Terraform to lock the versions of required provider plugins to ensure consistency and reproducibility of your Terraform configurations. It is a part of Terraform's dependency management system.


#### Terraform state file
The Terraform state file (usually named ``terraform.tfstate``) keeps track of the current status of your infrastructure resources. It's essential for Terraform to understand what changes are needed when you run commands like terraform plan or terraform apply. Storing it securely is crucial for reliable and collaborative infrastructure management.

- Dont't store on version control (e.g. github)
- This file can contain sensentive data.