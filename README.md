# GregicalitySkyblockEdition
The official modpack to the mod

## Building
You will need to have python3 and python requests (`pip3 install requests`) installed.
To build run `python build/main.py` in command line.

#### Note: updating external mods
To update external mods, you need to download the updated version and run `python build/getHash.py <mod location>` 
and copy the output to the `hash` field for the mod in `mainifest.json`