build:
	docker build -t cmuench/drone-plugin-nexus .

test:
	docker run --rm \
	    -e PLUGIN_USERNAME=admin \
		-e PLUGIN_PASSWORD=admin \
	    -e PLUGIN_REPOSITORY=raw \
		-e PLUGIN_URL=http://example.com \
		-e PLUGIN_ASSET_FILE=foo.txt \
		-e PLUGIN_REMOTE_PATH=example \
		-e PLUIGN_REMOTE_FILENAME=bar.txt \
		cmuench/drone-plugin-nexus;
