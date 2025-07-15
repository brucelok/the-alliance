# the-alliance

This repo showcases the integration of Terraform and Ansible within a GitHub-driven CI/CD workflow for the automated deployment and configuration of EC2 instances.

This demo contains three main files:
* main.tf
* demo_ec2.yaml
* deploy.yml

The Terraform config in [main.tf](https://github.com/brucelok/the-alliance/blob/main/main.tf) spins up a bunch of EC2 instances on AWS. Then, the Ansible playbook [demo_ec2.yaml](https://github.com/brucelok/the-alliance/blob/main/demo_ec2.yaml) takes over to set them up just right. The GitHub Actions workflow in [deploy.yml](https://github.com/brucelok/the-alliance/blob/main/.github/workflows/deploy.yml) ties it all together in the CI/CD workflow, making everything run smoothly without any manual hassle. One key thing is that Terraform creates an [inventory file](https://github.com/brucelok/the-alliance/blob/main/main.tf#L27-L30) with the public DNS names of the EC2 instances, so Ansible knows exactly where to go to configure the hosts.
