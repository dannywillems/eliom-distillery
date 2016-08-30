all: native

byte:
	ocamlfind ocamlc -o eliom-distillery -package findlib -package str -package unix -linkpkg utils.ml distillery.ml

native:
	ocamlfind ocamlopt -o eliom-distillery -package findlib -package str -package unix -linkpkg utils.ml distillery.ml

clean:
	$(RM) distillery.cmo distillery.cmi utils.cmi utils.cmo utils.cmx utils.o distillery.cmx distillery.o

fclean: clean
	$(RM) eliom-distillery

.PHONY: byte native all clean fclean
