## 🚀 About Me
I'm a junior DevOps engineer with some expertise in BackEnd development using Java and Node.js; scripting skills with Python, Bash and JavaScript; besides CI/CD and cloud knowledge of AWS and Azure DevOps tools ...

<p align="center">
<img src="https://c4.wallpaperflare.com/wallpaper/694/164/1000/digital-art-animals-eagle-bird-of-prey-birds-hd-wallpaper-preview.jpg" alt="Logo" width="400" height="230">
</p>

![linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![javascript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![nodejs](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white)
![mysql](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![jenkins](https://img.shields.io/badge/Jenkins-D24939?style=for-the-badge&logo=Jenkins&logoColor=white)
![aws](https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![azuredevops](https://img.shields.io/badge/Azure_DevOps-0078D7?style=for-the-badge&logo=azure-devops&logoColor=white)

## 🔗 Portfolio
[![portfolio](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/RecursiveDeveloper)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/jhoan-jesus-ortiz-sandoval-a66152198/)

# Install and set up a Minikube cluster with Ansible

Set up and provision your own local multi virtual machine environment using Vagrant to deploy three Ubuntu VMs with two main roles:
- 1 master node
- 2 worker nodes

Ansible is already installed inside the master node along with a playbook specifying what tasks to perform and an inventory file with the IP addresses and data needed to connecto to the worker nodes.

Within the two worker nodes we can find the public key from the master node, already added to authorized_keys file in order to allow ssh communication among these. If you need to add more worker nodes, just copy and paste the block of code you will find inside Vagrantfile or follow vagrant's documentation [vagrant multi-machine](https://developer.hashicorp.com/vagrant/docs/multi-machine).

![Simple_Ansible-lab-multi-vm_diagram](https://raw.githubusercontent.com/RecursiveDeveloper/static-media-content/refs/heads/main/Simple_Ansible-lab-multi-vm_diagram.png)

## Tech Stack 

- **Client:** ---
- **Server:** ---
- **Database:** ---
- **Cloud provider:** ---
- **Tools:** Vagrant, Ansible

## Installation

1. Install VirtualBox as your virtual machine provider [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Install Vagrant according to your operating system [Install Vagrant
](https://developer.hashicorp.com/vagrant/downloads)

## Deployment

To deploy this project run

```bash
  vagrant up
```

Then SSH into vagrant master node
```bash
  vagrant ssh master
```

Navigate to /vagrant_data/playbooks folder
```bash
  cd /vagrant_data/playbooks
```

And finally execute
```bash
  ansible-playbook -i inventory.yml playbook.yml
```

For more informations about vagrant commands check [vagrant-cheat-sheet](https://gist.github.com/wpscholar/a49594e2e2b918f4d0c4)

If needed, you can modify playbook tasks to include all the tools you want to. Besides, requirements yaml file contains all the roles that will be installed, therefore if you plan to add or remove any role, erase the corresponding line both in requirements yaml file and in the playbook file.

## Authors

- [@RecursiveDeveloper](https://github.com/RecursiveDeveloper)

## License

[MIT](https://choosealicense.com/licenses/mit/)