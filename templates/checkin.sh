shopt -s expand_aliases
alias run="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)/run.sh"
alias build="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)/build.sh"
alias install="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)/install.sh"

alias checkout="source $(cd $(dirname "${BASH_SOURCE[0]}") && pwd)/checkout.sh"
