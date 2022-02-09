fx_version "cerulean"
game "gta5"

author "InZidiuZ & Andyyy#7666"
description "Legacy Fuel"
version "1.4"
--Edited by Resq#1317 to work with updated Money_Script using oxmysql exports.

-- What to run
client_scripts {
	"functions.lua",
	"client.lua",
}
shared_scripts {
    "config.lua",
}
server_scripts {
    "server.lua",
}
exports {
	"GetFuel", -- GetFuel(vehicle)
	"SetFuel" -- SetFuel(vehicle, fuel)
}
