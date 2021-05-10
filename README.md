### 😎 Config Project

<br>

## Terraform # Cloudfront # S3

<img style="margin-right: 50px;" width="100px" src="https://i.pinimg.com/originals/28/ec/74/28ec7440a57536eebad2931517aa1cce.png">

<img style="margin-right: 50px;" width="100px" src="https://cdn.worldvectorlogo.com/logos/aws-cloudfront.svg">

<img style="margin-right: 50px;" width="100px" src="https://snapshooter.io/assets/img/marketing/providers/aws-s3.svg">

##### ✅ Put credentials AWS User in your .zshrc or .bash_profile to easily your life

```
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=
```

##### ✅ Put name of bucket in destroy.sh

```
AWS_CONFIG_FILE=.aws/config aws s3 rm s3://NAME_OF_BUCKET_HERE --recursive
```

##### ✅ Put credentials of AWS User in main.tf in provider

```
provider "aws" {
  region = ""
  access_key = ""
  secret_key = ""
}
```

##### ✅ Put name of bucket in main.tf

```
variable "www_domain_name" {
  default = "NAME_OF_BUCKET_HERE"
}
```

##### ✅ Put path name folder of website in main.tf

```
resource "null_resource" "remove_and_upload_to_s3" {
  provisioner "local-exec" {
    command = "AWS_CONFIG_FILE=${path.module}/.aws/config aws s3 sync ${path.module}/NAME_OF_FOLDER_HERE s3://${aws_s3_bucket.www.id}"
  }
}
```
