# lab_jenkins
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
- intall docker in the first ubuntu ec2  and run agent container  docker
- add public key of jenkins machine in the second ubuntu ec2(agent)
- intall package  needed by jenkins in ubuntu  agent
---
## configure jenkins
-  add container agent and ec2 agent to jenkins 
-  <img src="https://github.com/Alialshemy/lab_jenkins/blob/main/image/Screenshot from 2022-10-16 19-43-13.png" />
-  build and deploy app
-   <img src="https://github.com/Alialshemy/lab_jenkins/blob/main/image/Screenshot from 2022-10-16 22-12-31.png" />
-   simple multi-branch echo the branch name
-   <img src="https://github.com/Alialshemy/lab_jenkins/blob/main/image/Screenshot from 2022-10-17 22-40-40.png" />
-   <img src="https://github.com/Alialshemy/lab_jenkins/blob/main/image/Screenshot from 2022-10-17 22-41-07.png" />
-   <img src="https://github.com/Alialshemy/lab_jenkins/blob/main/image/Screenshot from 2022-10-17 22-36-13.png" />
-   
-   configure slack 
-   <img src="https://github.com/Alialshemy/lab_jenkins/blob/main/image/Screenshot from 2022-10-17 19-53-15.png" />
-   credations 
-    <img src="https://github.com/Alialshemy/lab_jenkins/blob/main/image/Screenshot from 2022-10-17 22-13-06.png" />
    configure Webhoock in github
-    <img src="https://github.com/Alialshemy/lab_jenkins/blob/main/image/Screenshot from 2022-10-20 09-18-14.png" />
    configure Webhoock in jenkins
-    <img src="https://github.com/Alialshemy/lab_jenkins/blob/main/image/Screenshot from 2022-10-20 09-22-30.png" />
   
-    
-   




