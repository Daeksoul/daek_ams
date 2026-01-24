-- server.lua
-- Minimal server file included for standard resource structure.
-- No server-side logic required for this overlay, but kept for extensibility.

-- Example: simple log when someone uses the command (optional)
RegisterCommand('ams', function(source, args, rawCommand)
    -- server-side logging if needed
    print(('[daek_ams] /ams used by source %s'):format(tostring(source)))
end, false)

RegisterCommand('motionsick', function(source, args, rawCommand)
    print(('[daek_ams] /motionsick used by source %s'):format(tostring(source)))
end, false)
