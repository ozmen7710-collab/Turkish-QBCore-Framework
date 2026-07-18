-- Turkish Banking System
local QBCore = exports['qb-core']:GetCoreObject()

local banks = {
    {
        id = 1,
        name = 'Ziraat Bankası - Taksim',
        coords = {x = 430.0, y = -975.0, z = 29.0},
        blip = {sprite = 108, color = 2}
    },
    {
        id = 2,
        name = 'İş Bankası - Eminönü',
        coords = {x = -510.0, y = -1015.0, z = 22.0},
        blip = {sprite = 108, color = 2}
    },
    {
        id = 3,
        name = 'Akbank - Kadıköy',
        coords = {x = 1145.0, y = -805.0, z = 57.0},
        blip = {sprite = 108, color = 2}
    },
}

function DepositMoney(amount)
    TriggerServerEvent('bank:deposit', amount)
    TriggerEvent('chat:addMessage', {
        args = {'Banka', 'Paranız banka hesabına yatırıldı: $' .. amount}
    })
end

function WithdrawMoney(amount)
    TriggerServerEvent('bank:withdraw', amount)
    TriggerEvent('chat:addMessage', {
        args = {'Banka', 'Paranız çekildi: $' .. amount}
    })
end

function TransferMoney(targetPlayer, amount)
    TriggerServerEvent('bank:transfer', targetPlayer, amount)
end

function GetBankBalance()
    TriggerServerEvent('bank:getBalance')
end

RegisterCommand('deposit', function(args)
    local amount = tonumber(args[1]) or 100
    DepositMoney(amount)
end)

RegisterCommand('withdraw', function(args)
    local amount = tonumber(args[1]) or 100
    WithdrawMoney(amount)
end)

print('^2[Turkish Banking System] Yüklendi!^7')