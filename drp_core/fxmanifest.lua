--[[
   Scripted By: Darkzy
--]]

resource_type 'gametype' { name = 'DRP' }

fx_version 'adamant'
games { 'rdr3', 'gta5' }

dependencies {
    "externalsql"
}

ui_page "ui/index.html"

files {
    "ui/libraries/axios.min.js",
    "ui/libraries/vue.min.js",
    "ui/libraries/vuetify.js",
    "ui/libraries/vuetify.css",
    "ui/index.html",
    "ui/style.css",
    "ui/script.js",
    "ui/sounds/admin_chat_notification.ogg"
}

-- Shared Scripts
shared_script "shared.lua"
shared_script "sync/config.lua"
shared_script "config.lua"
shared_script "managers/networkcallbacks.lua"

-- Client Scripts
client_script "fivem.lua"
client_script "client.lua"
client_script "managers/voip.lua"
client_script "managers/managers.lua"
client_script "managers/vehicle_managers.lua"
client_script "sync/client.lua"
client_script "admin/client.lua"
client_script "admin/debugMenu.lua"

-- Server Scripts
server_script "managers/server_managers.lua"
server_script "server.lua"
server_script "sync/server.lua"
server_script "admin/server.lua"
server_script "admin/commands.lua"

-- Client Exports
export "drawText"
export "GetPlayers"

-- Server Exports
server_export "GetPlayerData"