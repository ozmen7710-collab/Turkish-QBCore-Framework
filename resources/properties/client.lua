-- Turkish Property & Business System
local QBCore = exports['qb-core']:GetCoreObject()

local properties = {
    {
        id = 1,
        name = 'Taksim Dairesi',
        coords = {x = 425.0, y = -980.0, z = 29.0},
        price = 450000,
        type = 'apartment'
    },
    {
        id = 2,
        name = 'Eminönü Restoran',
        coords = {x = -520.0, y = -1020.0, z = 22.0},
        price = 650000,
        type = 'business'
    },
    {
        id = 3,
        name = 'Kadıköy Şirket',
        coords = {x = 1150.0, y = -800.0, z = 57.0},
        price = 850000,
        type = 'business'
    },
    {
        id = 4,
        name = 'Beşiktaş Villa',
        coords = {x = 250.0, y = -850.0, z = 50.0},
        price = 1200000,
        type = 'house'
    },
}

function BuyProperty(propertyId)
    local property = properties[propertyId]
    if property then
        TriggerServerEvent('property:buy', propertyId, property.price)
    end
end

function GetPropertyInfo(propertyId)
    return properties[propertyId]
end

function ListProperties()
    for i, prop in ipairs(properties) do
        print(i .. '. ' .. prop.name .. ' - Fiyat: $' .. prop.price)
    end
end

RegisterCommand('properties', function()
    ListProperties()
end)

print('^2[Turkish Property System] Yüklendi!^7')