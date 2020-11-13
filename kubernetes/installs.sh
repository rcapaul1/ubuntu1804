#!/bin/bash
# install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl

# install helm
apt update && apt install snap zip unzip -y
snap install helm --classic

# install gscloud
wget https://github.com/gridscale/gscloud/releases/download/v0.3.0-beta/gscloud_0.3.0-beta_linux_amd64.zip
unzip gscloud_0.3.0-beta_linux_amd64.zip
mv gscloud_0.3.0-beta_linux_amd64 /usr/local/bin/gscloud
gscloud make-config

# edit config
vi .config/gscloud/config.yaml

apt install bash-completion -y
source /usr/share/bash-completion/bash_completion
echo 'source <(kubectl completion bash)' >>~/.bashrc
kubectl completion bash >/etc/bash_completion.d/kubectl
