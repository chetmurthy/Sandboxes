export OCAMLRUNPARAM="b=1"
export LANG=en_US.UTF-8
ulimit -s 32768
function refresh_switch {
 eval $(opam env)
}
