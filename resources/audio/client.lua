-- Turkish Audio & Music System
local QBCore = exports['qb-core']:GetCoreObject()

local turkishMusic = {
    {
        id = 1,
        name = 'Türkçe Pop',
        url = 'https://example.com/turkish-pop.mp3',
        artist = 'Türk Sanatçı'
    },
    {
        id = 2,
        name = 'Arabesk Klasik',
        url = 'https://example.com/arabesk.mp3',
        artist = 'Arabesk Sanatçı'
    },
    {
        id = 3,
        name = 'Türk Halk Müziği',
        url = 'https://example.com/folk.mp3',
        artist = 'Halk Müzisyeni'
    },
    {
        id = 4,
        name = 'Türkçe Hip-Hop',
        url = 'https://example.com/hiphop.mp3',
        artist = 'Türk Rapçi'
    },
}

local soundEffects = {
    police_siren = 'https://example.com/siren.mp3',
    ambulance_siren = 'https://example.com/ambulance.mp3',
    car_horn = 'https://example.com/horn.mp3',
    door_knock = 'https://example.com/knock.mp3',
    notification = 'https://example.com/notification.mp3',
}

function PlayMusic(musicId)
    local music = turkishMusic[musicId]
    if music then
        TriggerEvent('chat:addMessage', {
            args = {'Müzik', 'Şimdi çalıyor: ' .. music.name .. ' - ' .. music.artist}
        })
    end
end

function PlaySoundEffect(effectName)
    if soundEffects[effectName] then
        TriggerEvent('chat:addMessage', {
            args = {'Ses', 'Ses efekti çalındı.'}
        })
    end
end

function GetMusicList()
    return turkishMusic
end

RegisterCommand('music', function(args)
    local musicId = tonumber(args[1]) or 1
    PlayMusic(musicId)
end)

print('^2[Turkish Audio System] Yüklendi!^7')