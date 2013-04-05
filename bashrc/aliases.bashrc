function wn {
 echo -ne "\033]0;$*\007";
}

function xs {
  set noglob; eval `resize` ; unset noglob
}

function g {
  pushd "$1"
}

function b {
 popd
}

alias l='ls -FCa'

alias d='ls -la'

alias s='dirs'

function pushvar {
  eval "export $1=$2:\${$1}"
}

function pushvar. {
  pushvar $1 $PWD
}

function pushp {
  export PATH="$1:$PATH"
}

function pushp. {
  pushp $PWD
}

function pushldp {
  export LD_LIBRARY_PATH="$1:$LD_LIBRARY_PATH"
}

function pushldp. {
  pushldp $PWD
}

function j {
  jobs -l
}

function v {
  xterm -e "$*" &
}

function t {
  tail -f $*
}
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ("${ref#refs/heads/}")"
}
 
function parse_git_stash_size {
  lines=$(git stash list -n 100 2> /dev/null) || return
  if [ "${#lines}" -gt 0 ]
  then
    count=$(echo "$lines" | wc -l | sed 's/^[ \t]*//') # strip tabs
    echo " ["${count#}"]"
  fi
}
 
#example of use of the above two
#export PS1="[$red\u$NC@$green\t$NC] \h : $cyan\w $yellow\$(parse_git_branch) $RED\$(parse_git_stash_size)\n$NC\$ "

set -b
