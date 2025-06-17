local part = script.Parent
local US = os.date("!*t", os.time() + (-4 * 3600))
if part:IsA("BasePart") then
	part.Touched:Connect(function(hit)
		local Lighting = game:GetService("Lighting")
		Lighting.ClockTime = (US.hour * 60 + US.min) / 60 % 24
	end)
end