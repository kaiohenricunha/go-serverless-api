# 22/02

- Created all the iac/prerequisites files

    - iac/prerequisites/main.tf
    - iac/prerequisites/variables.tf
    - iac/prerequisites/locals.tf
    - iac/prerequisites/versions.tf

- TODO:

    1) Configure git. How to handle multiple Github accounts in the same machine? - DONE

    2) Terraform will not have access to AWS api. Export secret and access keys that you get from AWS after the user with programmatic access is created:

        ```
        # replace ******** with appropriate values
        export AWS_SECRET_ACCESS_KEY=********
        export AWS_ACCESS_KEY_ID=********
        ```

    3) Ensure I have full access rights to S3, DynamoDB, API Gateway and Lambda. Do this on the console.

    4) cd iac/prerequisites

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

    5) Check if the resources were created on AWS Console.

    6) Destroy and recreate the stack to make sure everything is in right order:

        ```
        # destroy the stack
        # should print out: Destroy complete! Resources: 2 destroyed.
        terraform destroy -auto-approve

        # plan the stack
        terraform plan

        # deploy the stack
        terraform apply -auto-approve
        ```

    7) Create configuration for API infrastructure.