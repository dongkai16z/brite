# BRITE

The *Boston University Representative Internet Topology Generator (BRITE)* is a network topology generator developed by Alberto Medina, Anukool Lakhina, Ibrahim Matta and John Byers.
This repository hosts the latest version (v.2.1) of BRITE with minimal modification to compile in a modern environment.
For the original documentation please see the [original README file](https://github.com/unly/brite/blob/master/README "README File"), the [user manual](https://www.cs.bu.edu/brite/publications/usermanual.pdf "User Manual") and the [web site](https://www.cs.bu.edu/brite/docs.html "Documentation").

## Build

BRITE is available in Java and c++.
The GUI is only available in Java.
To build BRITE navigate to the directory and use the makefile to compile.
Run `make buildc++` to build the c++ algorithm and the Java GUI, `make buildjava` to build the Java algorithm and GUI, `make buildgui` to only build the GUI or simply `make` to build all components.
The makefile also generates a *brite* file which can be used by `./brite` to start the BRITE GUI.

