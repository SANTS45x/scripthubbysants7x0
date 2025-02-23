local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "HUB FISCH STORE" .. Fluent.Version,
    SubTitle = "by SANTS",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Fisch = Window:AddTab({ Title = "Fisch", Icon = "" }),
    BloxFruits = Window:AddTab({ Title = "Blox Fruits", Icon = "" }),
    JujutsuInfinite = Window:AddTab({ Title = "Jujutsu Infinite", Icon = "" }),
    BlueLock = Window:AddTab({ Title = "Blue Lock", Icon = "" }),
	Rivals = Window:AddTab({ Title = "RIVALS", Icon = "" }),
	Animations = Window:AddTab({ Title = "Animations", Icon = "" }),
    Devs = Window:AddTab({ Title = "Devs", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
}

Tabs.Fisch:AddButton({
    Title = "Speed Hub",
    Description = "Execute Fisch Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Tabs.Fisch:AddButton({
    Title = "Zenith Hub",
    Description = "Execute Zenith Hub Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader"))()
    end
})

Tabs.BloxFruits:AddButton({
    Title = "REDZ",
    Description = "Execute Blox Fruits Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
    end
})

Tabs.BloxFruits:AddButton({
    Title = "hoho hub (key)",
    Description = "Execute Blox Fruits Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})

Tabs.BloxFruits:AddButton({
    Title = "Banana Hub",
    Description = "O BANANA HUB SERA COPIADO",
    Callback = function()
        local script = [[
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Key = "KEY AQUI"
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()

[key] Key Banana: [Acess Key](https://ads.luarmor.net/get_key?for=VHFslhWdrPey)]]
        setclipboard(script)
        Fluent:Notify({
            Title = "Banana Hub",
            Content = "The script has been copied to your clipboard.",
            Duration = 5
        })
    end
})

Tabs.BloxFruits:AddButton({
    Title = "Wzure Free",
    Description = "Execute Wzure Free Script",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
    end
})

Tabs.JujutsuInfinite:AddButton({
    Title = "Zenon Hub",
    Description = "Execute Jujutsu Infinite Script",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/522897bf43bc6bccb804fc608917db8e.lua"))()
    end
})

Tabs.JujutsuInfinite:AddButton({
    Title = "Solix hub",
    Description = "Execute Jujutsu Infinite Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
    end
})

Tabs.BlueLock:AddButton({  -- Renomeado de "Tricks" para "Blue Lock"
    Title = "Blue lock: Rival Script",  -- Renomeado o título do botão
    Description = "Execute Blue Lock Rival Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ExampleScript/blue-lock-rival-script"))()
    end
})

Tabs.Devs:AddButton({
    Title = "Infinity Yield",
    Description = "Execute Infinity Yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
})

Tabs.Animations:AddButton({
    Title = "Zombie",
    Description = "Execute Zombie Animation Script",
    Callback = function()
        ucanchangethisifuwantlelelelele = game:GetService("RunService").Stepped:Connect(
            function()
                game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
            end
        )
    end
})

Tabs.Rivals:AddButton({
    Title = "Rival Lite (Aimbot etc)",
    Description = "Execute Rival Lite Script",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/51246f83a9c77b825354d5d151c63c50.lua"))()
    end
})

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface management system)

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
