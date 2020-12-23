# Onset_Maps

Simple Maps Manager.

## Installation

- Download Maps [Industrial](https://drive.google.com/file/d/1yiOlCoFcgF6DrnPpLUJM2OYeDVZS0pha/view), [Factory](https://drive.google.com/file/d/1RURd-hWnmtnVvZPpWn1zRG69Th4GcIUS/view).
- Put this 2 maps inside directory named "maps".

```json
"packages": [
  "Onset_Maps"
],
```

## Default Configuration
```lua
Server_Password = "" -- if server requires password for connection

Maps_List = {
    {
        name = "Industrial",
        mapName = "industrial_area",
        spawn = {2400,-540,195},
        pak = {
            name = "Industrial_Area",
            path = "/Industrial_Area/industrial_area/Maps/industrial_area"
        }
    },
    {
        name = "Factory",
        mapName = "Main_Warehouse_02",
        spawn = {67,236,201},
        pak = {
            name = "Factory",
            path = "/Factory/AbandonedFactory/Maps/Warehouse_02_night/Main_Warehouse_02"
        }
    }
}
```

## Add new Map
- Put your map.pak inside directory named "maps".
- Open package.json and add your file in "files" category :
```json
{
  "author": "Weon Fry",
  "version": "1.0",
  "client_scripts": [
    "client.lua",
    "config.lua"
  ],
  "files": [
    "maps/Your_Map.pak" -- Exemple !
  ]
}
```

- Open config.lua and add your map information :
```lua
Server_Password = ""

Maps_List = {
    {
        name = "Your map name",
        mapName = "Unreal map name",
        spawn = {2400,-540,195}, -- Default spawn position (x, y, z).
        pak = {
            name = "Your map file name", -- Exemple (Industrial_Area)
            path = "Map Path" -- Exemple (/Industrial_Area/industrial_area/Maps/industrial_area)
        }
    }
}
```
### If you have problème with Map directory :
- [Onset Wiki LoadPak](https://dev.playonset.com/wiki/LoadPak)
- [Onset Wiki Modding](https://dev.playonset.com/wiki/Modding)
- [Onset Wiki Custom Maps](https://dev.playonset.com/wiki/Custom_Maps)

# Commands
```
/maplist -- return list of maps
/map (id) -- load map by id
```

## Made with ❤ by

- Philip J. Fry#2883


## License
[MIT](https://choosealicense.com/licenses/mit/)
