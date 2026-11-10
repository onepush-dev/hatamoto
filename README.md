# Hatamoto on Railway

[Hatamoto](https://github.com/Zen-Labs-Corp/hatamoto) is an open-source Go CMS with signed WASM plugins, an MCP server and built-in AI-crawler analytics. Deploy it on Railway with one click.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template?template=https://github.com/onepush-dev/hatamoto)

Independent community packaging of the official v1.2.1 image (Apache-2.0); not affiliated with or endorsed by Zen Labs. See upstream `TRADEMARKS.md`.

## What you get
- `hatamoto` (port 8090 behind Railway HTTPS) + `hatamoto-db` (Postgres 16), joined over private networking.
- One volume at `/data` holds releases, the generated server secret and media uploads; Postgres has its own volume.
- Generated secrets: database password, `HATAMOTO_SECRET`, `HATAMOTO_SETUP_CODE`. No inputs needed.

## First use
Open the app URL and follow the redirect to the admin setup wizard. Enter `HATAMOTO_SETUP_CODE` (service Variables tab) to create the owner account. The admin lives at a private address; the server log prints the full setup address.
