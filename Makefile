
SRC=$(wildcard src/*.valk)
VERSION=0.0.1
DEFS=--def "VERSION=$(VERSION)"

vpkg: $(SRC)
	valk build src/*.valk -o vpkg $(DEFS)

run: vpkg
	./vpkg
