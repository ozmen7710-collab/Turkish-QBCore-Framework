-- Turkish QBCore Framework Configuration

Config = {}

Config.Framework = {
    Name = 'Turkish QBCore Framework',
    Version = '1.0.0',
    Language = 'tr',
    MaxPlayers = 128,
    Timezone = 'Europe/Istanbul',
}

Config.Database = {
    Host = 'localhost',
    User = 'root',
    Password = '',
    Database = 'turkish_qbcore',
    Port = 3306,
}

Config.Jobs = {
    Unemployed = 'unemployed',
    Taxi = 'taxi',
    Police = 'police',
    Doctor = 'doctor',
    Firefighter = 'firefighter',
    Mechanic = 'mechanic',
    Builder = 'builder',
}

Config.Locations = {
    Spawn = {
        x = 425.5,
        y = -980.2,
        z = 28.4,
        h = 0.0,
    },
}

Config.Markets = {
    {
        Name = '24/7 Market',
        Coords = {x = 428.0, y = -985.0, z = 29.0},
    },
}

Config.Banks = {
    {
        Name = 'Ziraat Bankası',
        Coords = {x = 430.0, y = -975.0, z = 29.0},
    },
}

return Config