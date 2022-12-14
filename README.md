# streamlink-ttvlol
## About
This is a modified twitch.py file to work with the [ttv.lol](https://github.com/TTV-LOL/extensions) API and [luminous-ttv](https://github.com/AlyoshaVasilieva/luminous-ttv). This proxies the playlist request to a country where Twitch does not serve ads. Note that ttv.lol and luminous can still rarely return a playlist with ads, if this happens you'll need to restart streamlink to get a different playlist.

## Should you block ads?
Blocking ads is your choice. I lean more to the opinion of this [video](https://youtu.be/oV3s_sESnmE). If you enjoy the creator you're watching consider supporting them through direct donation or other means. 👍

## Installation

Download the file [here](https://github.com/2bc4/streamlink-ttvlol/releases/latest/download/twitch.py) and copy it to the following directory (create the directory if it doesn't exist):

### Windows
```
C:\%APPDATA%\streamlink\plugins
```
### Linux
```
~/.local/share/streamlink/plugins
```
### Mac
```
${HOME}/Library/Application Support/streamlink/plugins
```

More info on Streamlink plugin sideloading [here](https://streamlink.github.io/latest/cli/plugin-sideloading.html).

Once the modified file is in the correct location you will need to set the flags based on which proxy you wish to use.

## Flags
streamlink-ttvlol adds the flag `--twitch-proxy-playlist=URL`, this can be pointed at any server that supports the ttv.lol API.
### ttv.lol
```
--twitch-ttvlol
```
This is an alias for `--twitch-proxy-playlist=https://api.ttv.lol`. No additional configuration is required.
### luminous-ttv
```
--twitch-proxy-playlist=http://localhost:9595
```
If you're running luminous-ttv server on a different computer other than the one you're watching on, you'll need to pass the ```--address 0.0.0.0``` flag when launching luminous. As well as change localhost to the address of the computer the luminous server is running on. **ensure you're running the ```luminous-ttv.exe``` server before you open and while you're watching a stream, or else you will receive a "```Unable to open URL```" error.**

## streamlink-twitch-gui
If you're using [streamlink-twitch-gui](https://github.com/streamlink/streamlink-twitch-gui) then you'll need to check the "Enable advanced settings and features" box on the Main tab of settings. You can then add the above flag of your choosing to the "Custom parameters" box.

## Chatterino
If you're using [Chatterino](https://github.com/Chatterino/chatterino2) with Streamlink you'll need to add the above flag of your choosing to Settings -> External Tools -> Streamlink -> Additional options.
