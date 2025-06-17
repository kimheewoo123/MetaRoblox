local ReplicatedStorage = game:GetService("ReplicatedStorage")
local event = Instance.new("RemoteEvent")
event.Name = "UpdateWorldClocks"
event.Parent = ReplicatedStorage
while true do
	local KR = os.date("!*t", os.time() + (9 * 3600))
	local JP = os.date("!*t", os.time() + (9 * 3600))
	local US = os.date("!*t", os.time() + (-4 * 3600))
	local formatted = string.format("🇰🇷 %02d:%02d | 🇯🇵 %02d:%02d | 🇺🇸 %02d:%02d",
		KR.hour, KR.min,
		JP.hour, JP.min,
		US.hour, US.min
	)
	event:FireAllClients(formatted)
	local Lighting = game:GetService("Lighting")
	Lighting.ClockTime = (US.hour * 60 + US.min) / 60 % 24
	wait(30)
end