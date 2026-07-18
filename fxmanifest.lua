fx_version 'cerulean'
game 'gta5'

author 'Turkish QBCore Community'
description 'Turkish Theme QBCore Server Framework - Kapsamlı Sunucu Altyapısı'
version '1.0.0'

shared_scripts {
    'config/config.lua',
    'resources/core/locales/tr.lua',
}

client_scripts {
    'resources/core/main.lua',
    'resources/hud/client.lua',
    'resources/jobs/taksi/client.lua',
    'resources/jobs/polis/client.lua',
    'resources/jobs/doktor/client.lua',
    'resources/jobs/itfaiye/client.lua',
    'resources/vehicles/client.lua',
    'resources/vehicles/showroom/client.lua',
    'resources/properties/client.lua',
    'resources/clothing/client.lua',
    'resources/npcs/client.lua',
    'resources/locations/client.lua',
    'resources/audio/client.lua',
    'resources/shops/client.lua',
    'resources/banking/client.lua',
}

server_scripts {
    'config/config.lua',
}

ui_page 'resources/hud/html/index.html'

files {
    'resources/hud/html/index.html',
    'resources/hud/html/style.css',
    'resources/hud/html/script.js',
}