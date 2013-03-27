export OCAMLRUNPARAM="bt=1"
export PATH=$CAMLROOT/sbin:$PATH
export PATH=$CAMLROOT/bin:$PATH
export OPAMROOT=$CAMLROOT/.opam
export http_proxy=http://localhost:3143/
eval `opam config env`
