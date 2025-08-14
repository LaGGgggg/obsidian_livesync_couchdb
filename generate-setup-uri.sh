#!/bin/bash

export hostname=${COUCHDB_SETUP_URI_HOSTNAME}
export database=${COUCHDB_SETUP_URI_DB_NAME}
export passphrase=${COUCHDB_SETUP_URI_PASSPHRASE}
export username=${COUCHDB_USER}
export password=${COUCHDB_PASSWORD}

deno run -A https://raw.githubusercontent.com/vrtmrz/obsidian-livesync/main/utils/flyio/generate_setupuri.ts
