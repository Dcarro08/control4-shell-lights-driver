-- Module Control Template

local moduleControl = {}

-- Function to manage power state
function moduleControl.setPower(state)
    if state == "on" then
        -- Code to turn the module on
        print("Module powered on")
    elseif state == "off" then
        -- Code to turn the module off
        print("Module powered off")
    else
        print("Invalid power state. Use 'on' or 'off'.")
    end
end

-- Function to get the current status
function moduleControl.getStatus()
    -- Code to retrieve and return the status
    print("Retrieving status...")
    -- Sample status return
    return {power = "off", status = "OK"}
end

return moduleControl
