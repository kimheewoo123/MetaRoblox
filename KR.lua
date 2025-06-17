local part = script.Parent
local KR = os.date("!*t", os.time() + (9 * 3600))
if part:IsA("BasePart") then
	part.Touched:Connect(function(hit)
		local Lighting = game:GetService("Lighting")
		Lighting.ClockTime = (KR.hour * 60 + KR.min) / 60 % 24
	end)
end