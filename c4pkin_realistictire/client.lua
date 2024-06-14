local lastPopTime = 0
local isLastPop = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if IsPedInAnyVehicle(playerPed, false) then
            local speed = GetEntitySpeed(vehicle) * 3.6 
            local zentornoModel = GetHashKey("zentorno") 

            if GetEntityModel(vehicle) == zentornoModel and speed > 50 then
                local currentTime = GetGameTimer()

                local vehiclePos = GetEntityCoords(vehicle)
                local groundZ = GetEntityHeightAboveGround(vehicle)

                if groundZ < 0.5 and (currentTime - lastPopTime) > 60000 and not isLastPop then 
                    local randomWheelID = math.random(0, 3) 
                    SetVehicleTyreBurst(vehicle, randomWheelID, true, 1000.0)
                    lastPopTime = currentTime
                    isLastPop = true
                end
            else
                isLastPop = false
            end
        end
    end
end)

local lastPopTime = 0
local isLastPop = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if IsPedInAnyVehicle(playerPed, false) then
            local speed = GetEntitySpeed(vehicle) * 3.6 
            local adderModel = GetHashKey("adder") 

            if GetEntityModel(vehicle) == adderModel and speed > 50 then
                local currentTime = GetGameTimer()

                local vehiclePos = GetEntityCoords(vehicle)
                local groundZ = GetEntityHeightAboveGround(vehicle)

                if groundZ < 0.5 and (currentTime - lastPopTime) > 60000 and not isLastPop then 
                    local randomWheelID = math.random(0, 3) 
                    SetVehicleTyreBurst(vehicle, randomWheelID, true, 1000.0)
                    lastPopTime = currentTime
                    isLastPop = true
                end
            else
                isLastPop = false
            end
        end
    end
end)
