export OCAMLRUNPARAM="b=1"
ulimit -s 16000
function refresh_switch {
 eval $(opam env)
}
