RegisterNetEvent('vehicleTheft')
AddEventHandler('vehicleTheft', function(vehicle)
    -- Get player information using cd_dispatch export
    local src = source
    local data = exports['cd_dispatch']:GetPlayerInfo(src)

    -- Prepare the notification data
    TriggerServerEvent('cd_dispatch:AddNotification', {
        job_table = {'police'}, 
        coords = data.coords,
        title = '10-16 - Theft of a vehicle',
        message = 'A '..data.sex..' stealing a vehicle at '..data.street, 
        flash = 0,
        unique_id = data.unique_id,
        sound = 1,
        blip = {
            sprite = 225, -- Car icon
            scale = 1.2, 
            colour = 3,
            flashes = false, 
            text = '911 - Theft of a vehicle',
            time = 5,
            radius = 0,
        }
    })
end)
