local camera = game.Workspace.Camera
camera.CameraType = Enum.CameraType.Scriptable

local plr: Player = game.Players.LocalPlayer

local char = plr.Character
local rootPart: BasePart = char:WaitForChild("HumanoidRootPart")
local humanoid: Humanoid = char:WaitForChild("Humanoid")

humanoid.WalkSpeed = 0
humanoid.JumpPower = 0
camera.CFrame = CFrame.new(rootPart.Position + Vector3.new(0, 0, -8), rootPart.Position)