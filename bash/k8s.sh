#!/bin/bash
echo "creating k8s shortcuts"

display_help() {
  echo "Usage: $0 [option...] {bash|zsh}" >&2
  echo
  exit 1
}

dest=${1:bash}
case ${dest} in
  "bash")
    CONFIG=".bashrc"
    ;;
  "zsh")
    CONFIG=".zshrc"
    ;;
  *)
    display_help
    exit 0
    ;;  
esac

tee  -a "~/${CONFIG}" > /dev/null <<EOT
alias k=kubectl
# typing the entire dry-run flag can be tiring — especially when you run it multiple times during the day. A simple alias like the one below can make your life so much easier:
alias kdr='kubectl --dry-run=client -o yaml'
# Now you can merely kdr your YAML files away:
# > kdr run nginx --image=nginx > nginx.yaml
alias kap='kubectl apply'
alias kd='kubectl delete'
# Smoke test with busybox
alias kbb='kubectl run busybox-test --image=busybox -it --rm --restart=Never --'

alias kdb='kubectl describe'
alias kl='kubectl logs'
alias ke='kubectl exec -it'
# k explain pod.spec.containers.resources - shows online docs
# Use Bash Autocomplete for kubectl 
source <(kubectl completion ${dest})
EOT

echo "..done"
