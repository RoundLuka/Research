local trigger = workspace.trigger
local lamp = workspace.lamp

function isCharacterPresent()
    local partsTouching = workspace:GetPartsInPart(trigger)
    for index, part in (partsTouching) do
        local character = part.Parent
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            return true
        end
    end

    return false
end

