local Players = game:GetService("Players")
local player = Players.LocalPlayer

task.spawn(function()
    while task.wait(3) do
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("Model") and (obj.Name:find("Haki", 1, true) or obj.Name:find("Blacksmith", 1, true) or obj.Name:find("Dark Blade", 1, true)) then
                if not obj:FindFirstChild("HakiESP") then
                    local hl = Instance.new("Highlight")
                    hl.Name = "HakiESP"
                    hl.FillColor = Color3.fromRGB(0, 255, 255) -- Màu xanh Cyan
                    hl.Parent = obj
                    
                    local hrp = obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChildWhichIsA("BasePart")
                    if hrp then
                        local bb = Instance.new("BillboardGui")
                        bb.Size = UDim2.new(0, 200, 0, 50)
                        bb.StudsOffset = Vector3.new(0, 5, 0)
                        bb.AlwaysOnTop = true
                        bb.Parent = hrp
                        local lbl = Instance.new("TextLabel")
                        lbl.Size = UDim2.new(1, 0, 1, 0)
                        lbl.BackgroundTransparency = 1
                        lbl.TextColor3 = Color3.fromRGB(0, 255, 255)
                        lbl.TextStrokeTransparency = 0
                        lbl.TextScaled = true
                        lbl.Text = "⚡ HAKI SHOP ⚡"
                        lbl.Parent = bb
                    end
                end
            end
        end
    end
end)
