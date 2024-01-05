# Iggy Homebrew Formula

This repo contains a formula for installing iggy server/cli binaries through the Homebrew package manager.

## Usage

```
$ brew tap armanm/iggy
$ brew install iggy
```

You should get this output

```
==> Fetching armanm/iggy/iggy
==> Downloading https://github.com/iggy-rs/iggy/archive/refs/tags/server-0.1.7.tar.gz
Already downloaded: /Users/arman-mini/Library/Caches/Homebrew/downloads/927da063af2139f331b042a46338e81a5e2b7031be12a5b3e98e0935ed6cded5--iggy-server-0.1.7.tar.gz
==> Installing iggy from armanm/iggy
==> cargo install --path=server
==> cargo install --path=cli
==> Caveats
By default, iggy server configuration file is loaded from the current working directory.
You can specify the path to your custom configuration file by setting IGGY_CONFIG_PATH
environment variable, for example:

  export IGGY_CONFIG_PATH=configs/server.json

Alternatively you may want to choose to use the default server configuration like this:

  export IGGY_CONFIG_PATH=/opt/homebrew/etc/iggy/configs/server.json
==> Summary
🍺  /opt/homebrew/Cellar/iggy/0.1.7: 8 files, 18.9MB, built in 3 minutes 54 seconds
```
