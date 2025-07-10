
file="./dists/win-x64/cacert.pem"

if [[ ! -e $file || $(find "$file" -mtime +14 -print) ]]; then
	echo "cacert.pem is older than 14 days -> Downloading new certificate"
	curl -o "$file" https://curl.se/ca/cacert.pem
fi
