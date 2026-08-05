-- ციკლი ეს არის პროგრამირების ინსტრუმენტი
-- რომელიც გვაძლაევს საშვალებას ერთი და იგივე
-- დავალება რამდენჯერმე გავამეორო

-- გვაქვს 3 ციკლი: for, while, repeat

-- start, stop, step
-- for ewryeruyeruyeri = 1, 10, 3 do
--     print(ewryeruyeruyeri)
-- end


--[[
1. for
2. საიტერაციო ცვლადი
3. do
4. კოდის ბლოკი ინდენტაციით
5. end
]]


-- Position:   1     2   3

-- for i = 1, #data do
--     print(data[i])
-- end


local data = {true, 18, "Luka"}


function doSomething(ragaca)
    return ragaca
end


-- end


local names = {'Vaxo', 'Gigi', 'Giorgi', 'Luka'}
--      Index    1         2      3


for index, value in pairs(names) do
    print(value)
end

local RunService = game:GetService("RunService")

local shoot = game.ReplicatedStorage.Shoot

local arrowTemplate = game.ServerStorage.Arrow

-- constants
local speed = 250
local gravity_adjustment = 0.5

shoot.OnServerEvent:Connect(function(plr, mousePos)
	local origin = plr.Character.HumanoidRootPart.Position
	local direction = (mousePos - origin).Unit
	local gravity = Vector3.new(0, -workspace.Gravity, 0) * gravity_adjustment

	local arrow = arrowTemplate:Clone()
	arrow.CFrame = CFrame.new(origin, origin + direction)
	arrow.Parent = workspace

	local velocity = direction * speed
	local position = origin
	local distance = 0
	local connection
	connection = RunService.Heartbeat:Connect(function(deltaTime)
		local nextVelocity = velocity + gravity * deltaTime
		local positionStep = (velocity + nextVelocity) / 2 * deltaTime

		velocity = nextVelocity

		local nextPosition = position + positionStep
		arrow.CFrame = CFrame.new(nextPosition, nextPosition + velocity.Unit)

		position = nextPosition

		distance = positionStep.Magnitude
	end)

end)