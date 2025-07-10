
SRC=$(wildcard src/*.valk)
VERSION=0.0.1
DEFS=--def "VERSION=$(VERSION)"
vc=/opt/valk/0.0.2/valk

vpkg: $(SRC)
	$(vc) build src/*.valk -o vpkg $(DEFS)

dev: $(SRC)
	$(vc) build src/*.valk -o vpkg $(DEFS) --def "DEV=1"


# Build dists

dist-linux-x64:
	mkdir -p ./dists/linux-x64
	$(vc) build src/*.valk -o ./dists/linux-x64/vpkg $(DEFS) --target linux-x64

dist-macos-x64:
	mkdir -p ./dists/macos-x64
	$(vc) build src/*.valk -o ./dists/macos-x64/vpkg $(DEFS) --target macos-x64

dist-macos-arm64:
	mkdir -p ./dists/macos-arm64
	$(vc) build src/*.valk -o ./dists/macos-arm64/vpkg $(DEFS) --target macos-arm64

dist-win:
	mkdir -p ./dists/win-x64
	$(vc) build src/*.valk -o ./dists/win-x64/vpkg $(DEFS) --target win-x64

dist-all: dist-linux-x64 dist-macos-x64 dist-macos-arm64 dist-win
	curl -o ./dists/win-x64/cacert.pem https://curl.se/ca/cacert.pem
