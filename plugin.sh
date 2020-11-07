#!/bin/sh

# Try to detect the mime type of the file
if [ -z "$PLUGIN_ASSET_MIMETYPE" ]; then
    PLUGIN_ASSET_MIMETYPE=`file --brief --mime-type ${PLUGIN_ASSET_FILE}`
fi

# set default if mime type is not set
if [ -z "$PLUGIN_ASSET_MIMETYPE" ]; then
    PLUGIN_ASSET_MIMETYPE="application/octet-stream"
fi

raw_repository() {
    curl ${PLUGIN_CURL_OPTIONS} -u ${PLUGIN_USERNAME}:${PLUGIN_PASSWORD} \
        "${PLUGIN_URL}/service/rest/v1/components?repository=${PLUGIN_REPOSITORY}" \
        -H "accept: application/json" \
        -H "Content-Type: multipart/form-data" \
        -F "raw.directory=${PLUGIN_REMOTE_PATH}" \
        -F "raw.asset1=@${PLUGIN_ASSET_FILE};type=${PLUGIN_ASSET_MIMETYPE}" \
        -F "raw.asset1.filename=${PLUGIN_REMOTE_FILENAME}"
}

if [ $PLUGIN_REPOSITORY_TYPE = 'raw' ]; then
    raw_repository
fi
