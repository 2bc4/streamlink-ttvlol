# streamlink-ttvlol
## About
This is a modified twitch.py file to work with the [ttv.lol](https://github.com/TTV-LOL/extensions) API or with the [luminous-ttv](https://github.com/AlyoshaVasilieva/luminous-ttv) server. This proxies the m3u8 request to a country where Twitch does not serve ads.

## Should you block ads?
Blocking ads is your choice. I lean more to the opinion of this [video](https://youtu.be/oV3s_sESnmE). If you enjoy the creator you're watching. Ensure you support them through direct donation or other means. 👍

## Installation

Download the file [here](https://github.com/2bc4/streamlink-ttvlol/releases/download/20221206/twitch.py). 
### Windows
#### Automatically
Extract the release zip, and open the "streamlink-ttvlol_install.bat". This will require administrator prvileges since streamlink is by default installed in the Program Files directory. **Keep in mind, this will only work if streamlink was installed with [streamlinks installer](https://github.com/streamlink/windows-builds).**
#### Manually
Open windows explorer, and navigate to the following directory.
```
C:\Program Files\Streamlink\pkgs\streamlink\plugins
```
Copy the twitch.py file you downloaded. Press "Replace the file in the destination".
### Linux
For Linux users it may be easiest to run 
```
find /usr -name twitch.py 
```
By default it should be located at `/usr/lib/python[PYTHON VERSION]/site-packages/streamlink/plugins/twitch.py`

Once the modified file is in the correct location. You will need to set the flags based on which proxy you wish to use. 

## Flags
If you're using streamlink with no front end. The following flags work for ttv.lol and luminous-ttv.
### ttv.lol
```
--twitch-ttvlol
```
This is an alias for `--twitch-proxy-m3u8=https://api.ttv.lol`. No additional configuration is required.
### luminous-ttv
```
--twitch-proxy-m3u8=http://localhost:9595
```
If you're running luminous-ttv server on a different computer other than the one you're watching on. You will need to pass the ```--address 0.0.0.0``` Flag when launching luminous. As well as change localhost to the address of the computer the luminous server is running on. As well as, **ensure you're running the ```luminous-ttv.exe``` server before you open and while you're watching a stream. Else you will receive a "```Unable to open URL```" error.** 

## streamlink-twitch-gui
If you're using [streamlink-twitch-gui](https://github.com/streamlink/streamlink-twitch-gui) then you'll need to check the "Enable advanced settings and features" box on the Main tab of settings. You can then add the above flag of your choosing to the "Custom parameters" box.
