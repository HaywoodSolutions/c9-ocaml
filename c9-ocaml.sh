#!/bin/bash -e
# Install OCaml and OPAM inside a Cloud9 IDE workspace.
# Run this script inside the workspace terminal, then eval $(opam config env)

OCAML_URL=http://caml.inria.fr/pub/distrib/ocaml-4.07/ocaml-4.07.0.tar.gz

# create a scratch directory
D=$(mktemp --tmpdir -d c9-ocaml-XXX)
pushd $D

# download & extract OCaml
wget -c $OCAML_URL
tar zxf ocaml-*tar.gz
rm ocaml-*.tar.gz
cd ocaml-*

# build bytecode ocaml and camlp4 and install to $HOME
./configure -no-graph -no-curses -prefix $HOME
make world
make install

# download & install opam
wget https://raw.githubusercontent.com/ocaml/opam/master/shell/opam_installer.sh
yes '' | sh ./opam_installer.sh $HOME/bin system

# clean up
popd
rm -rf $D

opam update
opam upgrade