-- Monitoring the stealing of vehicles
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)

        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsTryingToEnter(player)
        local driver = GetPedInVehicleSeat(vehicle, -1)

        if DoesEntityExist(vehicle) and DoesEntityExist(driver) then
            if driver == 0 or IsPedAPlayer(driver) then
                -- Trigger the theft event if player is trying to steal the vehicle
                TriggerServerEvent('vehicleTheft', vehicle)
            end
        end
    end
end)
