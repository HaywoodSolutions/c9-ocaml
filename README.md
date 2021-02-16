c9-ocaml
========

This repo contains a script to install [OCaml](http://ocaml.org/) and [OPAM](http://opam.ocamlpro.com/) inside [Cloud9 IDE](https://c9.io/) workspaces, enabling collaborative editing, compiling, and testing of OCaml programs "in the cloud." Also installs ocamlfind and ocamlbuild.

In any workspace, enter into the terminal pane:

````
curl -L https://raw.github.com/HaywoodSolutions/c9-ocaml/master/c9-ocaml.sh | bash -ex
eval $(opam config env)
git clone https://git.cs.kent.ac.uk/sao/example-compiler.git
````

The OCaml toolchain and OPAM will then be ready for use!
