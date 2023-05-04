runcmd:
  - export DEBIAN_FRONTEND=noninteractive
  - curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
  - apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  - apt-get install -y awscli
  - curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  - echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  - apt-get update
  - apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
packages_update: true  