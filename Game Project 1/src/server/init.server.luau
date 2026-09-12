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

trigger.Touched:Connect(function(hit)
    if trigger:GetAttribute("Triggered") == true then
        return
    end

    local character = hit.Parent
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        trigger:SetAttribute("Triggered", true)
        while true do
            task.wait(.3)
            if not isCharacterPresent() then
                break
            end
        end
        trigger:SetAttribute("Triggered", false)
    end
end)

trigger:GetAttributeChangedSignal("Triggered"):Connect(function()
    local triggered = trigger:GetAttribute("Triggered")
    if triggered then
        lamp.Color = Color3.fromRGB(255, 191, 0)
        lamp.Material = Enum.Material.Neon
    else
        lamp.Color = Color3.fromRGB()
        lamp.Material = Enum.Material.Plastic
    end
end)
