# Create a 3-tier-architecture on AWS using Terraform

## Prerequisites
---

1. Configure AWS credentials

- Type in `aws configure` in your terminal
- It will ask you for access key, secret access key, default region and default format
- Create the access key on the AWS console and copy in the details into the prompts below

```
AWS Access Key ID [****************XXXX]:
AWS Secret Access Key [****************XXXX]:
Default region name [us-east-1]:
Default output format [json]:
```

2. Fork this repo and pull it down


## How to create the resources using Terraform.
---

To use terraform, you have to install and initialize your working directory with the required plugins. You need to meke use of the terraform workflow whenever you want to use Terraform.

1. Navigate to the `./code/` directory in this repo which will contain all the files (modules, resources, providers, variables etc) - take some time to read the code to understand what it is doing

2. `terraform init`: You run this command first thing when you want to start using terraform. It initializes your code to download the requirements mentioned in your code

3. `terraform validate`: This command validates the syntax in the configuration files in a directory

4. `terraform plan`: Once you are happy with the files and the configuration, you can run a dry-run of the resources that the configuration will create

5. `terraform apply`: If you are happy with what the plan is going to create, you can go ahead and apply your configuration. You will be prompted to approve the apply; you can type `yes`

## Cleanup

---

Once you are happy, and have verified that everything has been created successfully, you can now run `terraform destroy -auto-approve` to take down all resources previously created

## Add your own twist
---

The code provided uses datasources to fetch the ami of the ec2 instance in the `eu-west-2` region. Challenge yourself to create the resources in another region of your choice, and fetching the ami for the chosen region.

> What part of the configuration will you need to change

> How would the prerequisited be affected

> Anything else you can think of?

