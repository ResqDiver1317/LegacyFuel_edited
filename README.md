# NOTE FROM RESQ#1317: I take no credit for the original work for LegacyFuel or for the Money Script/Framework done by Andyyy7666. I've simply taken Andyyy7666's forked version of LegacyFuel and made the needed edits so it's compatible with the newer version of Andyyy's money script and/or framework as well as added functionality to not charge for fueling emergency vehicles if desired.

# About Resq#1317's edits.
This edit of Legacy fuel is an updated version of Andyyy7666's version to work with his updated money script. In addition to making the needed edits so this works properly with Andyyy7666's money script, I have also added code to support use with his framework as well. I also added functionality to NOT charge for fueling emergency vehicles as realistically, emergency personnel would not pay out of pocket for fuel in department vehicles. Instead of being charged, they are shown a message that says "Your department was billed for your fuel."

The selection between just using Andyyy's money script by itself vs using his full framework as well as the ability to choose if you charge for fuel in emergency vehicles or not are both in the config.lua so be sure to open the config.lua and make the changes as needed for your needs and setup. The config.lua is commented to reflect the options available.


# About Fork:
This edit of Legacy fuel is to support the [money system](https://github.com/Andyyy7666/Currency-System), as well as a couple more features like adding a nozle to the players hand when refueling and a changed the hud to a bar instead of a number. View pictures below

![Nozle](https://user-images.githubusercontent.com/86536434/139972186-a9871d8f-4905-43f2-88d1-09a39b078d45.png)
![Fuelbar HUD](https://user-images.githubusercontent.com/86536434/139972204-53da3e11-0b31-491b-9890-b9467f371746.png)

# Need Support?
[![Need Support?](https://i.imgur.com/fqKYWeV.png)](https://discord.gg/Z9Mxu72zZ6)


### About original Legacy Fuel
Started off as my first script, and for whatever reason, I decided to release it. As it was pretty badly created, I felt like I should rewrite it and make a better version, so ended up spending a few hours doing so.

### Installation
1) Download the latest version in the "code" tab on GitHub.
2) Drag & drop the folder into your `resources` server folder.
3) Configure the config file to your liking.
4) Add `start LegacyFuel` to your server config.

### Exports
There are currently two (client-sided) exports available, which should help you control the fuel level for vehicles whenever needed.

```
SetFuel(vehicle --[[ Vehicle ]], value --[[ Number: (0-100) ]])
GetFuel(vehicle --[[ Vehicle ]]) -- Returns the vehicle's fuel level.
```

**Example usage:**
```
function SpawnVehicle(modelHash)
    local vehicle = CreateVehicle(modelHash, coords.x, coords.y, coords.z, true, false)

    exports["LegacyFuel"]:SetFuel(vehicle, 100)
end

function StoreVehicleInGarage(vehicle)
    local plate = GetVehicleNumberPlateText(vehicle)
    local fuelLevel = exports["LegacyFuel"]:GetFuel(vehicle)

    TriggerServerEvent('vehiclesStored', plate, fuelLevel)
end
```
