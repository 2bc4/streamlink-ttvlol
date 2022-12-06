# streamlink-ttvlol
## About
This is a modified twitch.py file to work with [ttv.lol's](https://github.com/TTV-LOL/extensions) api or with [luminous-ttv](https://github.com/AlyoshaVasilieva/luminous-ttv) server. This proxies the m3u8 request to a country where Twitch does not serve ads.

## Installation

Download the file [here](https://github.com/2bc4/streamlink-ttvlol/releases/download/20221206/twitch.py). 
### Windows
Open up windows explorer, and navigate to the following dir.
```
C:\Program Files\Streamlink\pkgs\streamlink\plugins
```
Extract the twitch.py file from the zip you downloaded. Press "Replace the file in the destination".
### Linux
For Linux users it may be easiest to run 
```
find /usr -name twitch.py 
```
By default it should be located at /usr/lib/python[PYTHON VERSION]/site-packages/streamlink/plugins/twitch.py

Once the modified file is in the correct location. You will still need to set the Flags based on which Proxy you wish to use. 

## Flags
If you're using streamlink with no front end. The following Flags work for ttv.lol's api and luminous-ttv.
### ttv.lol
```
--twitch-proxy-m3u8=https://api.ttv.lol
```
No additional configuration is required.
### luminous-ttv
```
--twitch-proxy-m3u8=http://localhost:9595
```
Note. If you're running luminous-ttv server on a different computer other than the one you're watching on. You will need to pass the ```--address 0.0.0.0``` Flag when launching luminous. As well as change localhost to the address of the computer the luminous server is running on.

## streamlink-twitch-gui
If you're using [streamlink-twitch-gui](https://github.com/streamlink/streamlink-twitch-gui) then you'll need to check the "Enable advanced settings and features" box on the Main tab of settings. You can then add the above Flag of your choosing to the "Custom parameters" box.
