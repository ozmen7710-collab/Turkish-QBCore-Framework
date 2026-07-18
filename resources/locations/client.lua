-- Turkish Locations & Map System
local QBCore = exports['qb-core']:GetCoreObject()

local turkishLocations = {
    {
        id = 1,
        name = 'Taksim Meydanı',
        coords = {x = 425.0, y = -980.0, z = 29.0},
        type = 'landmark',
        blip = {sprite = 227, color = 2}
    },
    {
        id = 2,
        name = 'Eminönü İskele',
        coords = {x = -520.0, y = -1020.0, z = 22.0},
        type = 'landmark',
        blip = {sprite = 358, color = 5}
    },
    {
        id = 3,
        name = 'Kadıköy Rıhtım',
        coords = {x = 1150.0, y = -800.0, z = 57.0},
        type = 'landmark',
        blip = {sprite = 227, color = 4}
    },
    {
        id = 4,
        name = 'Beşiktaş',
        coords = {x = 250.0, y = -850.0, z = 50.0},
        type = 'district',
        blip = {sprite = 227, color = 3}
    },
    {
        id = 5,
        name = 'Sultanahmet',
        coords = {x = 300.0, y = -900.0, z = 35.0},
        type = 'district',
        blip = {sprite = 227, color = 3}
    },
}

function CreateLocationBlips()
    for i, location in ipairs(turkishLocations) do
        local blip = AddBlipForCoord(location.coords.x, location.coords.y, location.coords.z)
        SetBlipRoute(blip, false)
        SetBlipAsShortRoute(blip, false)
        SetBlipSprite(blip, location.blip.sprite)
        SetBlipColor(blip, location.blip.color)
        AddTextComponentString(location.name)
        AddBlipNameFromTextComponent(blip)
    end
end

function GetLocation(locationId)
    return turkishLocations[locationId]
end

function ListLocations()
    for i, loc in ipairs(turkishLocations) do
        print(i .. '. ' .. loc.name .. ' (' .. loc.type .. ')')
    end
end

CreateThread(function()
    Wait(500)
    CreateLocationBlips()
end)

RegisterCommand('locations', function()
    ListLocations()
end)

print('^2[Turkish Locations System] Yüklendi!^7')