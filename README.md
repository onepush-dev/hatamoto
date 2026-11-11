# Hatamoto on Railway

[Hatamoto](https://github.com/Zen-Labs-Corp/hatamoto) is an open-source Go CMS with signed WASM plugins, an MCP server and built-in AI-crawler analytics. Deploy it on Railway with one click.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/GarVYe)

Independent community packaging of the official v1.2.1 image (Apache-2.0); not affiliated with or endorsed by Zen Labs. See upstream `TRADEMARKS.md`.

## What you get
- `hatamoto` (port 8090 behind Railway HTTPS) + `hatamoto-db` (Postgres 16), joined over private networking.
- One volume at `/data` holds releases, the generated server secret and media uploads; Postgres has its own volume.
- Generated per deploy: database password, admin address `HATAMOTO_ADMIN_PATH` and `HATAMOTO_SETUP_CODE`; the server secret is created on first boot under `/data/secrets`. No inputs needed.

## First use
Open `https://<your-domain><HATAMOTO_ADMIN_PATH>/setup` in a browser (both values are in the `hatamoto` service Variables tab; the server log also prints the full setup address) and enter `HATAMOTO_SETUP_CODE` to create the owner account. The admin answers 404 to non-browser requests by design.
