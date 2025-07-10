
SRC=$(wildcard src/*.valk)
VERSION=0.0.1
DEFS=--def "VERSION=$(VERSION)"
vc=/opt/valk/0.0.2/valk

vpkg: $(SRC)
	$(vc) build src/*.valk -o vpkg $(DEFS)

dev: $(SRC)
	$(vc) build src/*.valk -o vpkg $(DEFS) --def "DEV=1"

win: $(SRC)
	$(vc) build src/*.valk -o /mnt/c/www/vpkg.exe $(DEFS) --target win-x64

# Build dists

dist-linux-x64:
	mkdir -p ./dists/linux-x64
	$(vc) build src/*.valk -o ./dists/linux-x64/vpkg $(DEFS) --target linux-x64
	cd ./dists/linux-x64/ && tar -czf  ../vpkg-linux-x64.tar.gz vpkg

dist-macos-x64:
	mkdir -p ./dists/macos-x64
	$(vc) build src/*.valk -o ./dists/macos-x64/vpkg $(DEFS) --target macos-x64
	cd ./dists/macos-x64/ && tar -czf  ../vpkg-macos-x64.tar.gz vpkg

dist-macos-arm64:
	mkdir -p ./dists/macos-arm64
	$(vc) build src/*.valk -o ./dists/macos-arm64/vpkg $(DEFS) --target macos-arm64
	cd ./dists/macos-arm64/ && tar -czf  ../vpkg-macos-arm64.tar.gz vpkg

dist-win:
	mkdir -p ./dists/win-x64
	$(vc) build src/*.valk -o ./dists/win-x64/vpkg $(DEFS) --target win-x64
	curl -o ./dists/win-x64/cacert.pem https://curl.se/ca/cacert.pem
	cd ./dists/win-x64/ && tar -czf  ../vpkg-win-x64.tar.gz vpkg.exe cacert.pem

dist-all: dist-linux-x64 dist-macos-x64 dist-macos-arm64 dist-win
