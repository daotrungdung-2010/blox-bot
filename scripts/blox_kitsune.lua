local Players = game:GetService("Players")
local player = Players.LocalPlayer

task.spawn(function()
    while task.wait(5) do
        for _, obj in pairs(workspace:GetDescendants()) do
            -- Tìm kiếm các mô hình liên quan đến Kitsune / Shrine / Fox
            if (obj:IsA("Model") or obj:IsA("BasePart")) and (obj.Name:find("Kitsune", 1, true) or obj.Name:find("Shrine", 1, true) or obj.Name:find("Fox", 1, true)) then
                if not obj:FindFirstChild("KitsuneESP") then
                    local hl = Instance.new("Highlight")
                    hl.Name = "KitsuneESP"
                    hl.FillColor = Color3.fromRGB(255, 105, 180) -- Hồng
                    hl.Parent = obj
                    
                    local bb = Instance.new("BillboardGui")
                    bb.Size = UDim2.new(0, 250, 0, 50)
                    bb.StudsOffset = Vector3.new(0, 10, 0)
                    bb.AlwaysOnTop = true
                    bb.Parent = obj
                    local lbl = Instance.new("TextLabel")
                    lbl.Size = UDim2.new(1, 0, 1, 0)
                    lbl.BackgroundTransparency = 1
                    lbl.TextColor3 = Color3.fromRGB(255, 105, 180)
                    lbl.TextStrokeTransparency = 0
                    lbl.TextScaled = true
                    lbl.Text = "🦊 KITSUNE ISLAND 🦊"
                    lbl.Parent = bb
                end
            end
        end
    end
end)
