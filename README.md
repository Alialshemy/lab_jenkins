# lab_jenkins
# Jenkins Lab

DBMS is a Bash script DataBase Management System

# installation & Run
Use the version control tool [git](https://git-scm.com/) to clone the project.

    https://github.com/Alialshemy/lab_jenkins.git
    trraform init 
    terraform  apply -var-file dev.tfvar 

Or press "<span style="color:green">Code</span>" button then chose "Download ZIP"
## Our Features

- Terraform Create infrastructure 
- terraform run  ansible to configure two ec2 machine
- ansible configure two machine

## terraform

- create network in aws
- create two ubuntu machine
- run ansible


## ansible

- intall jenkins in the first ubuntu ec2 
- intall docker in the first ubuntu ec2  agent container and public key in docker
- add public key of jenkins machine in the second ubuntu ec2(agent)
- intall package  needed by jenkins in ubuntu  agent
---


