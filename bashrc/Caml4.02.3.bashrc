export OCAMLRUNPARAM="bt=1"
export PATH=$CAMLROOT/bin:$PATH
export OPAMROOT=$CAMLROOT/.opam
export LD_LIBRARY_PATH=$CAMLROOT/lib/ocaml/stublibs:$LD_LIBRARY_PATH
eval `opam config env`
