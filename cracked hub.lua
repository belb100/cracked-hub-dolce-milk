--lib
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "CRACK BY BELB", HidePremium = false, SaveConfig = true, IntroText = "CRACK LB", ConfigFolder = "OrionTest"})

_G.Key = "CRACK"
_G.KeyInput = "e"

local link = "PASSWORD IS CRACK"

function makeLB()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/belb100/CRACKEDLADDERHUB/main/crackedlader.lua"))()
end

function correctKeyNotify()
    OrionLib:MakeNotification({
        Name = "Correct key",
        Content = "Entered correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function IncorrectKeyNotify()
    OrionLib:MakeNotification({
        Name = "Incorrect key",
        Content = "Entered incorrect key!",
        Image = "rbxassetid://4483345998",
        Time = 8
    })
end

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
        if _G.KeyInput == _G.Key then
            correctKeyNotify()
            makeLB()
        else
            IncorrectKeyNotify()
        end
	end	  
})

Tab:AddButton({
	Name = "Copy link",
	Callback = function(Value)
      setclipboard(tostring(link))
  	end    
})

Tab:AddParagraph("PASSWORD IS CRACK")
