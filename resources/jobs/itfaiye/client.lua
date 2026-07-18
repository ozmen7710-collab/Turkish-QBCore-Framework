-- Turkish Firefighter Job System
local QBCore = exports['qb-core']:GetCoreObject()

local firefighterActive = false
local onDuty = false

local fireStations = {
    {name = 'İtfaiye Karakolu - Taksim', x = 400.0, y = -920.0, z = 29.0},
    {name = 'İtfaiye Karakolu - Eminönü', x = -480.0, y = -980.0, z = 22.0},
}

function ExtinguishFire(fireCoords)
    if onDuty then
        SmashVehicleWindow(GetVehiclePedIsIn(PlayerPedId()), 0)
        TriggerEvent('chat:addMessage', {
            args = {'İtfaiye', 'Yangın söndürüldü!'}
        })
    end
end

function GoOnDuty()
    onDuty = true
    GiveWeaponToPed(PlayerPedId(), GetHashKey('weapon_fireextinguisher'), 120, false, true)
    TriggerEvent('chat:addMessage', {
        args = {'İtfaiye', 'İtfaiye görevinde oldunuz!'}
    })
end

function GoOffDuty()
    onDuty = false
    RemoveAllPedWeapons(PlayerPedId(), false)
    TriggerEvent('chat:addMessage', {
        args = {'İtfaiye', 'Görevden ayrıldınız.'}
    })
end

RegisterCommand('itfaiye_duty', function()
    GoOnDuty()
end)

RegisterCommand('itfaiye_offduty', function()
    GoOffDuty()
end)

print('^2[Turkish Firefighter Job] Yüklendi!^7')