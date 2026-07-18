-- Turkish Vehicle Showroom System
local QBCore = exports['qb-core']:GetCoreObject()

local showrooms = {
    {
        name = 'Taksim Araç Showroom',
        coords = {x = 450.0, y = -950.0, z = 30.0},
        heading = 180.0
    },
    {
        name = 'Eminönü Araç Showroom',
        coords = {x = -500.0, y = -1000.0, z = 25.0},
        heading = 90.0
    },
    {
        name = 'Kadıköy Araç Showroom',
        coords = {x = 1100.0, y = -800.0, z = 57.0},
        heading = 270.0
    }
}

local vehicles = {
    {model = 'adder', price = 95000, label = 'Adder'},
    {model = 'oracle', price = 82000, label = 'Oracle'},
    {model = 'fugitive', price = 48000, label = 'Fugitive'},
    {model = 'tailgater', price = 52000, label = 'Tailgater'},
    {model = 'baller', price = 72000, label = 'Baller'},
}

function BuyVehicle(vehicleModel, price)
    local playerMoney = QBCore.Functions.GetPlayerData().money.cash
    if playerMoney >= price then
        TriggerServerEvent('vehicles:buy', vehicleModel, price)
        TriggerEvent('chat:addMessage', {
            args = {'Showroom', 'Araç satın alındı!'}
        })
    else
        TriggerEvent('chat:addMessage', {
            args = {'Showroom', 'Yeterli paranız yok!'}
        })
    end
end

print('^2[Turkish Vehicle Showroom] Yüklendi!^7')