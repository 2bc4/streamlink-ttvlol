# streamlink-ttvlol
## About

[Streamlink](https://streamlink.github.io) Twitch plugin modified to work with the [TTV.LOL](https://github.com/TTV-LOL/extensions) API. This proxies the playlist request to a country where Twitch does not serve ads. Note that TTV.LOL can still rarely return a playlist with ads, if this happens you'll need to restart streamlink to get a different playlist.

Currently not compatible with TTV-LOL-PRO v2 proxies.

## Installation
***Follow the instructions below for your specific operating system.***

[Windows](#windows), [Linux](#linux), [MacOS](#macos).

If you wish to install manually, you can get the latest release [here](https://github.com/2bc4/streamlink-ttvlol/releases/latest/download/twitch.py).

After installation you will need to point Streamlink at a playlist proxy server with [plugin arguments](#arguments).

More info on Streamlink plugin sideloading [here](https://streamlink.github.io/latest/cli/plugin-sideloading.html).

## Windows
### Automatically

Copy the command below and paste it into powershell. ***Do not run powershell as admin.*** 

If you don't know how to open powershell. Press windows key + r and type `powershell` into the box and press enter. Copy the contents of the box below and then right click in the powershell window and press enter:

```powershell
$null= New-Item -ItemType Directory -Path .\AppData\Roaming\streamlink\plugins -Force; iwr -Uri 'https://github.com/2bc4/streamlink-ttvlol/releases/latest/download/twitch.py' -OutFile .\AppData\Roaming\streamlink\plugins\twitch.py

```

**NOTE:** If you cannot resolve the URL (receive an error), this is likely due to your TLS version. Run the command below to set your TLS version to 1.2 and re-run the above command:

```powershell
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
```

### Manually
Navigate to:

```
C:\Users\%username%\AppData\Roaming\streamlink
```

Then create the `plugins` folder and drop the `twitch.py` inside of it.

## Linux
### Automatically

Run the below command in a terminal:

```sh
INSTALL_DIR="${XDG_DATA_HOME:-${HOME}/.local/share}/streamlink/plugins"; mkdir -p "$INSTALL_DIR"; curl -L -o "$INSTALL_DIR"/twitch.py 'https://github.com/2bc4/streamlink-ttvlol/releases/latest/download/twitch.py'
```

### Manually
Copy the `twitch.py` file to:

```
~/.local/share/streamlink/plugins
```

## MacOS
### Automatically

Run the below command in terminal:

```sh
INSTALL_DIR="${HOME}/Library/Application Support/streamlink/plugins"; mkdir -p "$INSTALL_DIR"; curl -L -o "$INSTALL_DIR"/twitch.py 'https://github.com/2bc4/streamlink-ttvlol/releases/latest/download/twitch.py'
```

### Manually
Copy the `twitch.py` file to:

```
${HOME}/Library/Application Support/streamlink/plugins
```

## Arguments
streamlink-ttvlol adds the following plugin arguments:

`--twitch-proxy-playlist`

Proxy playlist request through a server that supports the TTV.LOL API (or a server that doesn't with a custom URL, see [here](https://github.com/2bc4/streamlink-ttvlol/releases/tag/5.3.0-20230313)). It can also be pointed at multiple comma separated servers which will try each server in order until successful.

Example:

    --twitch-proxy-playlist=https://eu.luminous.dev,https://lb-eu.cdn-perfprod.com

---
`--twitch-proxy-playlist-exclude`

Can be used to exclude channels from being proxied (eg. you're subscribed to the channel and want to use your OAuth token to avoid ads instead)

Example:

    --twitch-proxy-playlist-exclude=forsen,twitch,twitchgaming

---
`--twitch-proxy-playlist-fallback`

Enable if Streamlink should fallback to Twitch servers if all requests to playlist proxies fail.

## Known compatible public proxy servers
Official [luminous-ttv](https://github.com/AlyoshaVasilieva/luminous-ttv) servers:
- `https://eu.luminous.dev` (Europe)
- `https://as.luminous.dev` (Asia)

Official [TTV-LOL-PRO](https://github.com/younesaassila/ttv-lol-pro/discussions/37#discussioncomment-5426032) v1 servers:
- `https://lb-eu.cdn-perfprod.com` (Europe)
- `https://lb-eu2.cdn-perfprod.com` (Europe 2)
- `https://lb-eu3.cdn-perfprod.com` (Europe 3)
- `https://lb-na.cdn-perfprod.com` (NA)
- `https://lb-as.cdn-perfprod.com` (Asia)

## streamlink-twitch-gui
If you're using [streamlink-twitch-gui](https://github.com/streamlink/streamlink-twitch-gui) then you'll need to check the "Enable advanced settings and features" box on the `Main` tab in settings. You can then add the above argument of your choosing to the "Custom parameters" box on the `Streaming` tab.

## Chatterino
If you're using [Chatterino](https://github.com/Chatterino/chatterino2) with Streamlink you'll need to add the above argument of your choosing to Settings -> External Tools -> Streamlink -> Additional options.
