-- Turkish NPC System
local QBCore = exports['qb-core']:GetCoreObject()

local turkishNPCs = {
    {
        name = 'Ahmet Dede',
        model = 'a_m_m_business_1',
        coords = {x = 425.0, y = -980.0, z = 29.0, h = 180.0},
        scenario = 'WORLD_HUMAN_STUPOR',
        dialog = 'Merhaba, hoş geldin!'
    },
    {
        name = 'Fatma Teyze',
        model = 'a_f_m_business_1',
        coords = {x = -520.0, y = -1020.0, z = 22.0, h = 90.0},
        scenario = 'WORLD_HUMAN_STUPOR',
        dialog = 'Çay ister misin?'
    },
    {
        name = 'Mehmet Abi',
        model = 'a_m_m_business_2',
        coords = {x = 1150.0, y = -800.0, z = 57.0, h = 270.0},
        scenario = 'WORLD_HUMAN_STUPOR',
        dialog = 'Nerden geldin sen?'
    },
}

function SpawnNPC(npcData)
    local modelHash = GetHashKey(npcData.model)
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(100)
    end
    
    local npc = CreatePed(4, modelHash, npcData.coords.x, npcData.coords.y, npcData.coords.z, npcData.coords.h, true, false)
    SetBlockingOfNonTemporaryEvents(npc, true)
    TaskStartScenarioInPlace(npc, npcData.scenario, 0, true)
    
    return npc
end

function SpawnAllNPCs()
    for i, npc in ipairs(turkishNPCs) do
        SpawnNPC(npc)
    end
end

CreateThread(function()
    Wait(1000)
    SpawnAllNPCs()
end)

print('^2[Turkish NPC System] Yüklendi!^7')