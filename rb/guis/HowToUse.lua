--[[ Theme

_G.CustomTheme = {
	Tab_Color = Color3.fromRGB(255, 255, 255),
    Tab_Text_Color = Color3.fromRGB(0, 0, 0),
    Description_Color = Color3.fromRGB(255, 255, 255),
    Description_Text_Color = Color3.fromRGB(0, 0, 0),
    Container_Color = Color3.fromRGB(255, 255, 255),
    Container_Text_Color = Color3.fromRGB(0, 0, 0),
    Button_Text_Color = Color3.fromRGB(0, 0, 0),
    Toggle_Box_Color = Color3.fromRGB(243, 243, 243),
    Toggle_Inner_Color = Color3.fromRGB(94, 255, 180),
    Toggle_Text_Color = Color3.fromRGB(0, 0, 0),
    Toggle_Border_Color = Color3.fromRGB(225, 225, 225),
    Slider_Bar_Color = Color3.fromRGB(243, 243, 243),
    Slider_Inner_Color = Color3.fromRGB(94, 255, 180),
    Slider_Text_Color = Color3.fromRGB(0, 0, 0),
	Slider_Border_Color = Color3.fromRGB(255, 255, 255),
    Dropdown_Text_Color = Color3.fromRGB(0, 0, 0),
    Dropdown_Option_BorderSize = 1,
    Dropdown_Option_BorderColor = Color3.fromRGB(235, 235, 235),
    Dropdown_Option_Color = Color3.fromRGB(255, 255, 255),
    Dropdown_Option_Text_Color = Color3.fromRGB(0, 0, 0)
} --]]


-- lib

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/mixmax0M/mmxGUI/master/mmxGUI.lua?token=AL5RU3PD4KZAFZ6S3R6PMRS7D7SUQ", true))()


-- TABS


local m = library:CreateTab("Tab", "Subtab", true) 
--true means darkmode is enabled and false means its disabled
--if you leave it empty you have a custom theme.


-- Toggle

m:CreateToggle("Toggle", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        print("Toggle : Enabled")
    else
        print("Toggle : Disabled")
    end
end)


-- Slider


m:CreateSlider("Slider Name", 0, 600, function(arg) --the (arg) is the sliders value
    print("Current Number: ", arg)
end)


-- Dropdown

m:CreateDropDown("Dropdown", {"Option 1", "Option 2"}, function(arg) --the (arg) is the option you choose 
    if arg == "Option 1" then
        print("Option 1's Function")
    elseif arg == "Option 2" then
        print("Option 2' Function")
    end
end)


-- Button

m:CreateButton("Button", function() --you dont need "arg" for a button
    print("Your Function")
end)


-- Textbox

m:CreateTextbox("Whitelist Player", function(arg) --arg is what the text is inside the textbox
    print("Whitelisted: " .. arg)
end)
