-- Turkish Police Job System
local QBCore = exports['qb-core']:GetCoreObject()

local policeActive = false
local onDuty = false

local policeStations = {
    {name = 'Polis Karakolu - Taksim', x = 430.0, y = -950.0, z = 25.0},
    {name = 'Polis Karakolu - Eminönü', x = -510.0, y = -1010.0, z = 22.0},
    {name = 'Polis Karakolu - Kadıköy', x = 1100.0, y = -800.0, z = 57.0},
}

function GoOnDuty()
    onDuty = true
    GiveWeaponToPed(PlayerPedId(), GetHashKey('weapon_pistol'), 120, false, true)
    TriggerEvent('chat:addMessage', {
        args = {'Polis', 'Görevde oldunuz! Düzeni sağlayın.'}
    })
end

function GoOffDuty()
    onDuty = false
    RemoveAllPedWeapons(PlayerPedId(), false)
    TriggerEvent('chat:addMessage', {
        args = {'Polis', 'Görevden ayrıldınız.'}
    })
end

function ArrestPed(targetPed)
    if onDuty then
        TriggerEvent('chat:addMessage', {
            args = {'Polis', 'Kişi tutuklandı!'}
        })
    end
end

RegisterCommand('polis_duty', function()
    GoOnDuty()
end)

RegisterCommand('polis_offduty', function()
    GoOffDuty()
end)

print('^2[Turkish Police Job] Yüklendi!^7')