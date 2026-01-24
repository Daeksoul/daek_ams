-- client.lua
local overlayVisible = false

-- Toggle function
local function toggleOverlay()
    overlayVisible = not overlayVisible
    if overlayVisible then
        -- show overlay (no NUI focus so player can still control)
        SendNUIMessage({ action = 'show' })
        SetNuiFocus(false, false)
    else
        SendNUIMessage({ action = 'hide' })
        SetNuiFocus(false, false)
    end
end

-- Register commands
RegisterCommand('ams', function()
    toggleOverlay()
end, false)

RegisterCommand('motionsick', function()
    toggleOverlay()
end, false)

-- Optional: hide overlay when resource stops or player respawns
AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        SendNUIMessage({ action = 'hide' })
    end
end)

-- If you want to ensure overlay hides on player spawn
AddEventHandler('playerSpawned', function()
    overlayVisible = false
    SendNUIMessage({ action = 'hide' })
end)
