
SRC=$(wildcard src/*.valk)
VERSION=0.0.1
DEFS=--def "VERSION=$(VERSION)"
vc=/opt/valk/0.0.2/valk

vpkg: $(SRC)
	$(vc) build src/*.valk -o vpkg $(DEFS)

dev: $(SRC)
	$(vc) build src/*.valk -o vpkg $(DEFS) --def "DEV=1"
