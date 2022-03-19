shopt -s expand_aliases
alias run="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)/run.sh"
alias build="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)/build.sh"
