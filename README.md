# Image-build-Job

This will build an customized image ( Mediawiki image ) through packer
Below are the softwares installed:
1. PHP 8.0
2. Apache2
3. MySQL 5.7
4. Mediawiki source code

The above mentioned softwares are installed through shell script.
The customized image is encrypted through the AWS KMS key

Packer version: 1.6.6

Further improvements:
1. Installing and configuring the database in separate instance or using RDS.
2. Using Ansible to deploy the mediawiki configuration part.
3. The Database secrets can be stored in AWS secrets manager or third part tools.
