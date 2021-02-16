c9-ocaml
========

This repo contains a script to install [OCaml](http://ocaml.org/) and [OPAM](http://opam.ocamlpro.com/) inside [Cloud9 IDE](https://c9.io/) workspaces, enabling collaborative editing, compiling, and testing of OCaml programs "in the cloud." Built for [CO658](https://www.kent.ac.uk/courses/modules/module/CO658) Assessment involving pair programming.

## Starting up with [AWS Cloud9](https://aws.amazon.com/cloud9/)

[Get Started](https://console.aws.amazon.com/cloud9/home/product)

Region
- Ensure your in a valid region, `Europe (London) eu-west-2` is perfect.

### Configure Settings

Environment type
- Select `Create a new EC2 instance for environment (direct access)`

Instance type
- Select `t2.micro (1 GiB RAM + 1 vCPU)`

Platform
- Select `Amazon Linux 2 (recommended)`

Proceed through the steps

Open workspace, enter into the terminal pane:

````
curl -L https://raw.github.com/HaywoodSolutions/c9-ocaml/master/c9-ocaml.sh | bash -ex
opam install ocamlfind
opam install ocamlbuild
eval $(opam config env)
git clone https://git.cs.kent.ac.uk/sao/example-compiler.git
````

The OCaml toolchain and OPAM will then be ready for use!

Dont forget to delete you Cloud9 instance to avoid over billing!