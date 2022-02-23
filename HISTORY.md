# 22/02

- Created all the iac/prerequisites files

    - iac/prerequisites/main.tf
    - iac/prerequisites/variables.tf
    - iac/prerequisites/locals.tf
    - iac/prerequisites/versions.tf

- TODO:

    1) Configure git. How to handle multiple Github accounts in the same machine?

    2) Terraform will not have access to AWS api. Export secret and access keys that you get from AWS after the user with programmatic access is created:

    ```
    # replace ******** with appropriate values
    export AWS_SECRET_ACCESS_KEY=********
    export AWS_ACCESS_KEY_ID=********
    ```

    3) cd iac/prerequisites

    ```
    # initialise terraform project
    terraform init

    # plan deployment, should output:
    # Plan: 2 to add, 0 to change, 0 to destroy.
    terraform plan

    # deploy, should output:
    # Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
    terraform apply -auto-approve
    ```
