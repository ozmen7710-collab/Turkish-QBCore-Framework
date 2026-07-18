-- Turkish Doctor Job System
local QBCore = exports['qb-core']:GetCoreObject()

local doctorActive = false
local onDuty = false

local hospitals = {
    {name = 'Hastane - Taksim', x = 350.0, y = -900.0, z = 29.0},
    {name = 'Hastane - Eminönü', x = -450.0, y = -950.0, z = 22.0},
}

function HealPlayer(targetPed)
    if onDuty then
        local health = GetEntityHealth(targetPed)
        if health < 200 then
            ApplyDamageToPed(targetPed, -health + 200, false)
            TriggerEvent('chat:addMessage', {
                args = {'Doktor', 'Hasta tedavi edildi!'}
            })
        end
    end
end

function GoOnDuty()
    onDuty = true
    TriggerEvent('chat:addMessage', {
        args = {'Doktor', 'Hastanede görevde başladınız!'}
    })
end

function GoOffDuty()
    onDuty = false
    TriggerEvent('chat:addMessage', {
        args = {'Doktor', 'Hastaneden ayrıldınız.'}
    })
end

RegisterCommand('doktor_duty', function()
    GoOnDuty()
end)

RegisterCommand('doktor_offduty', function()
    GoOffDuty()
end)

print('^2[Turkish Doctor Job] Yüklendi!^7')