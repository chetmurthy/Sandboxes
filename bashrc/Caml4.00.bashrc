export OCAMLRUNPARAM="bt=1"
export PATH=$CAMLROOT/sbin:$PATH
export PATH=$CAMLROOT/bin:$PATH
export OPAMROOT=$CAMLROOT/.opam
export http_proxy=http://localhost:3143/
export LD_LIBRARY_PATH=$CAMLROOT/lib/ocaml/stublibs:$LD_LIBRARY_PATH
eval `opam config env`
