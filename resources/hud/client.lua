-- Turkish HUD & UI System
local QBCore = exports['qb-core']:GetCoreObject()

local PlayerData = {}
local hudActive = true

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    TriggerEvent('hud:client:UpdateNeeded')
end)

RegisterNetEvent('hud:client:UpdateHealth')
AddEventHandler('hud:client:UpdateHealth', function()
    local ped = PlayerPedId()
    local health = GetEntityHealth(ped)
    SendNUIMessage({
        type = 'updateHealth',
        value = health
    })
end)

RegisterNetEvent('hud:client:UpdateHunger')
AddEventHandler('hud:client:UpdateHunger', function(hunger)
    SendNUIMessage({
        type = 'updateHunger',
        value = hunger
    })
end)

RegisterNetEvent('hud:client:UpdateThirst')
AddEventHandler('hud:client:UpdateThirst', function(thirst)
    SendNUIMessage({
        type = 'updateThirst',
        value = thirst
    })
end)

CreateThread(function()
    while true do
        Wait(100)
        if hudActive then
            TriggerEvent('hud:client:UpdateHealth')
        end
    end
end)

print('^2[Turkish HUD] Yüklendi!^7')