# streamlink-ttvlol
## About
This is a modified twitch.py file to work with the [ttv.lol](https://github.com/TTV-LOL/extensions) API and [luminous-ttv](https://github.com/AlyoshaVasilieva/luminous-ttv). This proxies the playlist request to a country where Twitch does not serve ads. Note that ttv.lol and luminous can still rarely return a playlist with ads, if this happens you'll need to restart streamlink to get a different playlist.

## Should you block ads?
Blocking ads is your choice. I lean more to the opinion of this [video](https://youtu.be/oV3s_sESnmE). If you enjoy the creator you're watching consider supporting them through direct donation or other means. 👍

## Installation

***Follow the instructions below for your specific operating system.***

[Windows](#windows), [Linux](#linux) or [MacOS](#macos) .

If you wish to install manually, you can get the latest release [here](https://github.com/2bc4/streamlink-ttvlol/releases/latest/download/twitch.py).

### Windows:
#### Automatically
Copy the command below and paste it into powershell. ***Do not run powershell as admin.*** 

If you don't know how to open powershell. Press windows key + r and type ```powershell``` into the box and press enter. Copy the contents of the box below and then right click in the powershell window and press enter.
```
$null= New-Item -ItemType Directory -Path .\AppData\Roaming\streamlink\plugins -Force; iwr -Uri 'https://github.com/2bc4/streamlink-ttvlol/releases/latest/download/twitch.py' -OutFile .\AppData\Roaming\streamlink\plugins\twitch.py
```
#### Manually
Navigate to:
```
C:\Users\%username%\AppData\Roaming\streamlink
```
Then create the `plugins` folder and drop the twitch.py inside of it.
### Linux:
#### Automatically
Run the below command in terminal. 
```
INSTALL_DIR="${XDG_DATA_HOME:-${HOME}/.local/share}/streamlink/plugins"; mkdir -p "$INSTALL_DIR"; curl -L -o "$INSTALL_DIR"/twitch.py 'https://github.com/2bc4/streamlink-ttvlol/releases/latest/download/twitch.py'
```
#### Manually
Copy the `twitch.py` file to:
```
~/.local/share/streamlink/plugins
```
### MacOS:
#### Automatically
Run the below command in terminal.
```
INSTALL_DIR="${HOME}/Library/Application Support/streamlink/plugins"; mkdir -p "$INSTALL_DIR"; curl -L -o "$INSTALL_DIR"/twitch.py 'https://github.com/2bc4/streamlink-ttvlol/releases/latest/download/twitch.py'
```
#### Manually
Copy the `twitch.py` file to:
```
${HOME}/Library/Application Support/streamlink/plugins
```
### Summary:
More info on Streamlink plugin sideloading [here](https://streamlink.github.io/latest/cli/plugin-sideloading.html).

Once the `twitch.py` file is in the correct location you will need to set the flags based on which proxy you wish to use.

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
If you're using [streamlink-twitch-gui](https://github.com/streamlink/streamlink-twitch-gui) then you'll need to check the "Enable advanced settings and features" box on the `Main` tab in settings. You can then add the above flag of your choosing to the "Custom parameters" box on the `Streaming` tab.

## Chatterino
If you're using [Chatterino](https://github.com/Chatterino/chatterino2) with Streamlink you'll need to add the above flag of your choosing to Settings -> External Tools -> Streamlink -> Additional options.
