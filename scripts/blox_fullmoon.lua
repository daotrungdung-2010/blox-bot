local Lighting = game:GetService("Lighting")
local announced = false
task.spawn(function()
    while task.wait(5) do
        local t = Lighting.ClockTime
        local isFullMoon = (t >= 18 or t <= 6) and (t <= 1 or t >= 23)
        if isFullMoon and not announced then
            announced = true
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "🌕 FULL MOON", Text = "Trăng tròn đang lên!"})
        elseif not isFullMoon then
            announced = false
        end
    end
end)
