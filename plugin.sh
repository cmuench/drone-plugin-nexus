#!/bin/sh

raw_repository() {
    curl -v -u ${PLUGIN_USERNAME}:${PLUGIN_PASSWORD} \
        POST "${PLUGIN_URL}/service/rest/v1/components?repository=${PLUGIN_REPOSITORY}" \
        -F "raw.directory=${PLUGIN_REMOTE_PATH}" \
        -F "raw.asset1=@${PLUGIN_ASSET_FILE}" \
        -F "raw.asset1.filename=${PLUGIN_REMOTE_FILENAME}"
}

if [ $PLUGIN_REPOSITORY = 'raw' ]; then
    raw_repository
fi
