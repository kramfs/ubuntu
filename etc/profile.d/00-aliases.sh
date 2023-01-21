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

alias k="minikube kubectl --"
alias kw="minikube kubectl -- -o wide"
alias k.pods="minikube kubectl -- get pods -A"
alias k.podsw="minikube kubectl -- get pods -A -o wide"
alias k.nodes="minikube kubectl -- get nodes"
alias k.cluster="minikube kubectl -- cluster-info"

# VS CODE
alias code="flatpak run com.visualstudio.code"
