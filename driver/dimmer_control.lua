-- dimmer_control.lua

-- Dimmer Control Module
-- This module provides functionalities to control the dimming of lights, including level adjustment and fade capabilities.

local DimmerControl = {}
DimmerControl.__index = DimmerControl

-- Constructor
function DimmerControl:new(initialLevel)
    local self = setmetatable({}, DimmerControl)
    self.level = initialLevel or 0 -- Level between 0 (off) and 100 (full brightness)
    return self
end

-- Adjust the brightness level
function DimmerControl:setLevel(level)
    if level < 0 then
        self.level = 0
    elseif level > 100 then
        self.level = 100
    else
        self.level = level
    end
    print("Dimmer set to " .. self.level .. "%")
end

-- Fade to a specified level over a duration
function DimmerControl:fadeTo(targetLevel, duration)
    local startLevel = self.level
    local step = (targetLevel - startLevel) / (duration * 10) -- Assuming 10 steps per second
    for i = 1, duration * 10 do
        startLevel = startLevel + step
        self:setLevel(startLevel)
        os.execute("sleep 0.1") -- Sleep for 100 ms
    end
end

return DimmerControl
