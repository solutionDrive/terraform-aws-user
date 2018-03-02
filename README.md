# Terraform-AWS-User-Module
Module for creating Users in an AWS-Account.

## Usage
```hcl-terraform
module "user_john_doe" {
  source = "git::ssh://git@github.com/solutionDrive/terraform-aws-user?ref=add-necessary-terrform-elements"
  user_name = "john.doe"
  gpg_key = "${base64encode(file("location/of/the/public/key/john_doe.pub"))}"
}

output "john_doe_password" {
  value = "${module.user_john_doe.password}"
}
```
The module needs only 2 parameters.
 - ```user_name```: The name of the user that will be created
 - ```gpg_key```: base64 encoded string that contains the public gpg-Key of the user. This key is used to encrypt the
 password, so the password can only be decrypted by the user.
 
 The module will generate the following outputs which can be used in other parts of your terraform code.
 
 - ```arn```: Outputs the ARN for the User, which identifies the user in the AWS
 - ```password```: outputs the base64-encoded representation of the encrypted password
 - ```unique_id```: outputs the unique_id of the user
 - ```user_name```: outputs the name of the user
 
 
 ```hcl-terraform
 some_variable = "${module.user_john_doe.name_of_the_output}"
```
