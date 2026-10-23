local Players = game:GetService("Players")
local player = Players.LocalPlayer

task.spawn(function()
    while task.wait(2) do
        for _, obj in pairs(workspace:GetDescendants()) do
            if (obj:IsA("Model") or obj:IsA("BasePart")) and obj.Name:lower():find("divine") then
                if not obj:FindFirstChild("DivineESP") then
                    local hl = Instance.new("Highlight")
                    hl.Name = "DivineESP"
                    hl.FillColor = Color3.fromRGB(255, 215, 0)
                    hl.Parent = obj
                    
                    local bb = Instance.new("BillboardGui")
                    bb.Size = UDim2.new(0, 200, 0, 50)
                    bb.StudsOffset = Vector3.new(0, 4, 0)
                    bb.AlwaysOnTop = true
                    bb.Parent = obj
                    local lbl = Instance.new("TextLabel")
                    lbl.Size = UDim2.new(1, 0, 1, 0)
                    lbl.BackgroundTransparency = 1
                    lbl.TextColor3 = Color3.fromRGB(255, 215, 0)
                    lbl.TextStrokeTransparency = 0
                    lbl.TextScaled = true
                    lbl.Text = "✨ DIVINE EGG ✨"
                    lbl.Parent = bb
                end
            end
        end
    end
end)
