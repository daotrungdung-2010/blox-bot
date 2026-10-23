local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local player = Players.LocalPlayer
local placeId = game.PlaceId
local found = false

task.spawn(function()
    while task.wait(3) do
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("Model") and (obj.Name:find("Sword", 1, true) or obj.Name:find("Dealer", 1, true)) then
                if not obj:FindFirstChild("DealerESP") then
                    local hl = Instance.new("Highlight")
                    hl.Name = "DealerESP"
                    hl.FillColor = Color3.fromRGB(255, 215, 0)
                    hl.Parent = obj
                    found = true
                end
            end
        end
    end
end)

task.delay(90, function()
    if not found then
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Sword Dealer", Text = "Không thấy Dealer. Gõ /hop để đổi server."})
    end
end)

player.Chatted:Connect(function(msg)
    if msg:lower() == "/hop" then
        local url = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"
        local ok, res = pcall(function() return game:GetService("HttpService"):JSONDecode(game:HttpGet(url)) end)
        if ok and res and res.data then
            for _, s in pairs(res.data) do
                if s.playing < s.maxPlayers and s.id ~= game.JobId then
                    TeleportService:TeleportToPlaceInstance(placeId, s.id, player)
                    return
                end
            end
        end
    end
end)
