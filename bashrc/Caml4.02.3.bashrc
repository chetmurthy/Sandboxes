export OCAMLRUNPARAM="b=1"
export PATH=$CAMLROOT/bin:$CAMLROOT/.opam/system/bin:$PATH
export OPAMROOT=$CAMLROOT/.opam
export LD_LIBRARY_PATH=$CAMLROOT/lib/ocaml/stublibs:$LD_LIBRARY_PATH
eval `opam config env`
ulimit -s 16000
