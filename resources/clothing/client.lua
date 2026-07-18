-- Turkish Clothing & Character System
local QBCore = exports['qb-core']:GetCoreObject()

local turkishOutfits = {
    {
        id = 1,
        name = 'Şehirli Kıyafet',
        skin = {model = 'a_m_m_business_1'},
        outfits = {shirt = 15, pants = 11}
    },
    {
        id = 2,
        name = 'Polis Kıyafeti',
        skin = {model = 'a_m_m_business_1'},
        outfits = {shirt = 23, pants = 20}
    },
    {
        id = 3,
        name = 'Doktor Kıyafeti',
        skin = {model = 'a_m_m_business_1'},
        outfits = {shirt = 4, pants = 22}
    },
    {
        id = 4,
        name = 'Taksi Şoförü',
        skin = {model = 'a_m_m_business_1'},
        outfits = {shirt = 10, pants = 15}
    },
    {
        id = 5,
        name = 'Dönerci',
        skin = {model = 'a_m_m_business_1'},
        outfits = {shirt = 8, pants = 12}
    },
}

function ChangeClothing(outfitId)
    local outfit = turkishOutfits[outfitId]
    if outfit then
        local ped = PlayerPedId()
        SetPedComponentVariation(ped, 11, outfit.outfits.shirt, 0, 2)
        SetPedComponentVariation(ped, 4, outfit.outfits.pants, 0, 2)
        TriggerEvent('chat:addMessage', {
            args = {'Kıyafet', 'Kıyafet değiştirildi: ' .. outfit.name}
        })
    end
end

function GetOutfitList()
    return turkishOutfits
end

RegisterCommand('outfit', function(args)
    local outfitId = tonumber(args[1]) or 1
    ChangeClothing(outfitId)
end)

print('^2[Turkish Clothing System] Yüklendi!^7')