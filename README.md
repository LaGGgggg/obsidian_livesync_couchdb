### Setup guide
1. Set .env:
    ```dotenv
    COUCHDB_USER=<your_username>
    COUCHDB_PASSWORD=<your_password>
    COUCHDB_USER_DB_NAME=<your_database_name>
    COUCHDB_HOST=couchdb:5984  # docker compose host and port

    # setup uri script variables:
    COUCHDB_SETUP_URI_HOSTNAME=<your_server_domain_or_ip>
    COUCHDB_SETUP_URI_DB_NAME=<your_database_name>
    COUCHDB_SETUP_URI_PASSPHRASE=<your_passphrase>
    ```
2. Run docker compose: `docker compose up -d --build`
3. Check is all ok: `docker compose logs -f`
4. Generate setup uri
    4.1. If you do not have installed `7z` or `unzip`, install it: `sudo apt-get install unzip -y`
    4.2. If you do not have installed deno, install it: `curl -fsSL https://deno.land/install.sh | sh`
    4.3. Run generator script: `./generate-setup-uri.sh`
5. Save passphrase and use setup uri in Obsidian app
