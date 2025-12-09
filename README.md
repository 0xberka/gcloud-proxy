# gcloud-proxy

A small script setup for running a proxy inside Google Cloud Shell using `tinyproxy`.

## Usage

Clone the repo:

```shell
git clone https://github.com/0xberka/gcloud-proxy
cd gcloud-proxy
```

Install and start the proxy:
```shell
./autorun
```

Notes:
+ Suitable for simple HTTP(S) proxying.
+ Minimal tinyproxy configuration for Cloud-Shell.
+ Default listener: `127.0.0.1:8888`

> Use this address in your tools, or configure it in your browser using FoxyProxy for quick on/off switching.
