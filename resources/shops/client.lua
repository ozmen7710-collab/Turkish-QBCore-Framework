-- Turkish Shops & Commerce System
local QBCore = exports['qb-core']:GetCoreObject()

local turkishShops = {
    {
        id = 1,
        name = '24/7 Market - Taksim',
        coords = {x = 428.0, y = -985.0, z = 29.0},
        type = 'market',
        inventory = {
            {item = 'bread', label = 'Ekmek', price = 25},
            {item = 'milk', label = 'Süt', price = 35},
            {item = 'water', label = 'Su', price = 15},
            {item = 'coffee', label = 'Kahve', price = 45},
        }
    },
    {
        id = 2,
        name = 'Döner Dükkanı - Eminönü',
        coords = {x = -515.0, y = -1025.0, z = 22.0},
        type = 'restaurant',
        inventory = {
            {item = 'doner', label = 'Döner', price = 85},
            {item = 'kebab', label = 'Kebab', price = 120},
            {item = 'ayran', label = 'Ayran', price = 20},
        }
    },
    {
        id = 3,
        name = 'Giyim Mağazası - Kadıköy',
        coords = {x = 1155.0, y = -795.0, z = 57.0},
        type = 'clothing',
        inventory = {
            {item = 'shirt', label = 'Gömlek', price = 150},
            {item = 'pants', label = 'Pantolon', price = 200},
            {item = 'shoes', label = 'Ayakkabı', price = 180},
        }
    },
}

function BuyItem(shopId, itemName, quantity)
    local shop = turkishShops[shopId]
    if shop then
        TriggerServerEvent('shop:buyItem', shopId, itemName, quantity)
    end
end

function GetShopInventory(shopId)
    local shop = turkishShops[shopId]
    if shop then
        return shop.inventory
    end
end

function ListShops()
    for i, shop in ipairs(turkishShops) do
        print(i .. '. ' .. shop.name .. ' (' .. shop.type .. ')')
    end
end

RegisterCommand('shops', function()
    ListShops()
end)

print('^2[Turkish Shops System] Yüklendi!^7')