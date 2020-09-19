--[[
if you copy this you are a skid
made by RobloxMinion33/Dumbstuff
https://github.com/DumbstuffTC/modulefunctions
]]
local index = {}

index.SF = function(frame)
	frame.Visible = true
	frame.BackgroundTransparency = 0
end
index.HF = function(frame)
	frame.Visible = false
	frame.BackgroundTransparency = 1
end
index.ClrGame = function()
	for _,v in pairs(game.Workspace:GetChildren()) do
		-- If the instances match Model, Part or MeshPart
		if v:IsA("Model") then
			v:Destroy()
		end
		if v:IsA("Part") then
			v:Destroy()
		end
		if v:IsA("MeshPart") then
			v:Destroy()
		end		
	end
	wait(3)
	local bsp = Instance.new("Part",workspace)
	bsp.Name = "Baseplate"
	bsp.Anchored = true
	bsp.Size = Vector3.new(512,20,512)
	bsp.Position = Vector3.new(0, -10, 0)
	bsp.CanCollide = true
end

return index
