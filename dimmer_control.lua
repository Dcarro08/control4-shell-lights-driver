-- dimmer_control.lua

-- Function to set the dimmer level
function setDimmerLevel(level)
    if level < 0 or level > 100 then
        print("Error: Dimmer level must be between 0 and 100.")
        return
    end
    -- Code to send the dimmer level to the device
    print("Setting dimmer level to " .. level .. "%.")
    -- Functionality to control the dimmer would go here
end

-- Example usage:
setDimmerLevel(50) -- sets the dimmer level to 50%