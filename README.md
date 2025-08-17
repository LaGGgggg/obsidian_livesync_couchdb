### What is it?
This project is a simple setup to run [CouchDB](https://couchdb.apache.org/) with ssl certificates to use it with [Self-hosted LiveSync plugin](https://github.com/vrtmrz/obsidian-livesync).
You need just to configure environment variables, setup your own domain (to issue ssl certificates), run docker compose and get your setup uri for Obsidian

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

    # nginx variables:
    CERTBOT_EMAIL=<your_email>
    ```
2. Set up `user_conf.d/nginx.conf`: replace all `<domain.com>` with your domain name in the config
3. Run docker compose: `docker compose up -d --build`
4. Check is all ok: `docker compose logs -f`
5. Generate setup uri
    4.1. If you do not have installed `7z` or `unzip`, install it: `sudo apt-get install unzip -y`
    4.2. If you do not have installed deno, install it: `curl -fsSL https://deno.land/install.sh | sh`
    4.3. Run generator script: `chmod +x generate-setup-uri.sh && ./generate-setup-uri.sh`
6. Save passphrase and use setup uri in Obsidian app
