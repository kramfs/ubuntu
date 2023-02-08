# DISTROBOX
alias ds="distrobox"
alias dse="distrobox enter"
alias dsc="distrobox create"
alias dsl="distrobox list"
alias dsrm="distrobox rm"
alias dss="distrobox stop"
alias dsu="distrobox upgrade --all"

# RPM-OSTREE
alias ros="rpm-ostree"
alias rosv="rpm-ostree status -v"
alias rosu="rpm-ostree upgrade"
alias rosc="rpm-ostree cleanup -p"

# PODMAN
alias pm="podman"
alias pmps="podman ps -a"
alias pml="podman ls"
alias pmi="podman image"
alias pmil="podman image ls"
alias pmirm="podman rmi"
alias pmv="podman volume"
alias pmvl="podman volume ls"
alias pms="podman stop"
alias pmrm="podman rm"

alias pm.pull="podman pull"
alias pm.push="podman push"
alias pm.prune="podman system prune"

# MINIKUBE
alias m="minikube"
alias m.stop="minikube stop"
alias m.start="minikube start"
alias m.status='minikube status'
alias m.delete='minikube delete'
alias m.logs='minikube logs -f'

alias k="minikube kubectl --"
alias kw="minikube kubectl -- -o wide"
alias k.pods="minikube kubectl -- get pods -A"
alias k.podsw="minikube kubectl -- get pods -A -o wide"
alias k.nodes="minikube kubectl -- get nodes"
alias k.cluster="minikube kubectl -- cluster-info"

########
# KIND #
########
alias kind.create="kind create cluster --config multi-2-ha.yaml --image kindest/node:v1.19.1"
alias kind.delete="kind delete cluster"

# kubectl krew path
export PATH="${PATH}:${HOME}/.krew/bin"

#############
# Terraform #
#############
alias tf="terraform"
alias tfp="terraform plan"
alias tfpc="terraform plan -compact-warnings"
alias tfpr="terraform plan -refresh-only"
alias tfv="terraform validate"
alias tfa="terraform apply"
alias tfaa="terraform apply --auto-approve"
alias tfar="terraform apply -refresh-only"
alias tfaar="terraform apply --auto-approve -refresh-only"
alias tfd="terraform destroy"
alias tfs="terraform show"
alias tfo="terraform output"
alias tfw="terraform workspace"

alias tfgraph="terraform plan -out=/tmp/plan.out && terraform show -json /tmp/plan.out > /tmp/plan.json && cd $(mktemp -d) && terraform-visual --plan /tmp/plan.json && open ./terraform-visual-report/index.html"

# RUST CLI Utilities
alias z="zellij"

############
# TELEPORT #
############
alias t="tsh"
alias tssh="tsh ssh"
alias tapps="tsh apps"
alias tdb="tsh db"
alias tk="tsh kube"

# FLATPAK
alias code="flatpak run com.visualstudio.code"

#################
# BTO Azure CLI #
#################
alias bto_azure="az account set --subscription BTO_Azure && az account show --query '{name:name, state:state}' -o tsv"
alias bto_test="az account set --subscription BTO_Test && az account show --query '{name:name, state:state}' -o tsv"
alias bto_test_nld="az account set --subscription BTO_NLD_Test && az account show --query '{name:name, state:state}' -o tsv"
alias bto_us="az account set --subscription BTO_US && az account show --query '{name:name, state:state}' -o tsv"
alias bto_nld_eu="az account set --subscription BTO_NLD && az account show --query '{name:name, state:state}' -o tsv"