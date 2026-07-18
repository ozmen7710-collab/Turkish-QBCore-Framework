-- Turkish Taxi Job System
local QBCore = exports['qb-core']:GetCoreObject()

local taxiActive = false
local currentRoute = nil
local passengerCoords = nil
local destinationCoords = nil
local fare = 0

local taxiLocations = {
    {name = 'Taksi Durağı - Taksim', x = 425.5, y = -980.2, z = 28.4},
    {name = 'Taksi Durağı - Eminönü', x = -520.5, y = -1020.3, z = 22.0},
    {name = 'Taksi Durağı - Kadıköy', x = 1150.0, y = -800.0, z = 57.6},
}

function StartTaxiJob()
    taxiActive = true
    TriggerEvent('chat:addMessage', {
        args = {'Taksi', 'Taksi işi başladı! Yolcu bekliyorsunuz...'}
    })
end

function EndTaxiJob()
    taxiActive = false
    currentRoute = nil
    TriggerEvent('chat:addMessage', {
        args = {'Taksi', 'Taksi işi bitti.'}
    })
end

function CalculateFare(distance)
    return math.floor(distance * 2.5) + 50
end

RegisterCommand('taksi_start', function()
    StartTaxiJob()
end)

RegisterCommand('taksi_end', function()
    EndTaxiJob()
end)

print('^2[Turkish Taxi Job] Yüklendi!^7')