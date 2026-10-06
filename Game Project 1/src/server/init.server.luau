local TweenService = game:GetService("TweenService")

local function tweenModel(model: Model, tweenInfo: TweenInfo, destination: CFrame)
    local cframeValue = Instance.new("CFrameValue")
    cframeValue.Value = model:GetPivot()

    local connection = cframeValue.Changed:Connect(function(newCFrame)
        model:PivotTo(newCFrame)
    end)

    local tween = TweenService:Create(cframeValue, tweenInfo, {Value = destination})

    tween:Play()

    tween.Completed:Connect(function()
        connection:Disconnect() -- Prevent memory leaks
        cframeValue:Destroy()
    end)

    return tween
end