-- Turkish Vehicle System
local QBCore = exports['qb-core']:GetCoreObject()

local spawnedVehicles = {}

local turkishVehicles = {
    {model = 'adder', label = 'Adder Spor Araba', price = 95000},
    {model = 'oracle', label = 'Oracle Spor Araba', price = 82000},
    {model = 'fugitive', label = 'Fugitive Sedan', price = 48000},
    {model = 'tailgater', label = 'Tailgater Luxury', price = 52000},
    {model = 'baller', label = 'Baller SUV', price = 72000},
    {model = 'granger', label = 'Granger Araba', price = 35000},
    {model = 'oracle80', label = 'Oracle 80s', price = 65000},
    {model = 'sultanrs', label = 'Sultan RS', price = 42000},
    {model = 'blista', label = 'Blista Compact', price = 18000},
    {model = 'issi2', label = 'ISSI Sport', price = 15000},
}

function SpawnVehicle(model, coords)
    local modelHash = GetHashKey(model)
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(100)
    end
    
    local vehicle = CreateVehicle(modelHash, coords.x, coords.y, coords.z, coords.h, true, false)
    SetVehicleAsNoLongerNeeded(vehicle)
    
    table.insert(spawnedVehicles, vehicle)
    return vehicle
end

function DeleteVehicle(vehicle)
    if DoesEntityExist(vehicle) then
        DeleteEntity(vehicle)
    end
end

RegisterCommand('car', function(args)
    local carModel = args[1] or 'adder'
    local playerCoords = GetEntityCoords(PlayerPedId())
    SpawnVehicle(carModel, {x = playerCoords.x + 2, y = playerCoords.y, z = playerCoords.z, h = 0.0})
end)

print('^2[Turkish Vehicle System] Yüklendi!^7')