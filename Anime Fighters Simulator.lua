local function gui()
    for i,v in pairs (game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "pa1nhub" then
        v:Destroy()
    end
end

local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xpa1n/library/main/CustomVepLibrary.lua"))()

local s = VLib:Window("pa1n HUB", "AFS", "")

local ss = s:Tab("Credits!")

ss:Label("")
ss:Label("Welcome to pa1n hub!!")
ss:Label("")
ss:Button("pa1n's Discord Server (Click to Copy)",function()
setclipboard("https://discord.com/invite/AXd2npJPS3")
end)
ss:Label("If you need help dm pa1n#8015")
ss:Label("")
ss:Label("All Credits for the GUIs and Scripts goes to their real owners!")
ss:Label("[Press K to Hide/Show This GUI]")


local gui = s:Tab("GUIs")

gui:Label("[KEYLESS]")
gui:Label("------------------")

gui:Button("GUI by KJ HUB (Click to Execute)",function()
loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/KiJinGaming/FreeScript/main/KJHub.lua"))()
end)

gui:Button("GUI by DeadTired (Click to Execute)",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/pspboy08/dollhouse/main/AFSGUI.lua')))()
end)

gui:Button("GUI by MSDOS10 (Click to Execute)",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/pa1nx9/qwe/main/ANIME%20FIGHTERS%20SIMULATOR%20SCRIPT%20BY%20MSDOS10.lua"))() 
end)

gui:Button("GUI by CAMERON (Click to Execute)",function()
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/obeseinsect/roblox/main/Games/Anime%20Fighters%20Sim/AFS.lua"))()
end)

gui:Button("GUI by JRL (Click to Execute)",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JRL-lav/Scripts/main/anime%20fighter"))() 
end)


gui:Label("")
gui:Label("[REQUIRES A KEY]")
gui:Label("------------------")

gui:Button("GUI by Zer0 hub (Click to Execute)",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Discord0000/Zer0Hub/main/MainScript.lua"))()
end)

gui:Button("GUI by Nex Hub (Click to Execute)",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CopyReal/NexHub/main/NexHubLoader"))()
end)

local scr = s:Tab("Scripts")
scr:Button("REDEEM ALL CODES", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/pa1nx9/qwe/main/Redeem%20codes.lua"))()
end)
scr:Label("")
scr:Label("")
scr:Label("")
scr:Label("[MORE COMING SOON!!]")
end

local linq = game:HttpGet("https://pa1n.xyz/pa1n-hub-key/actual-key")

local function kkkey()
    
for i,v in pairs (game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "pa1nkey" then
        v:Destroy()
    end
end
    
local UIS = game:GetService("UserInputService")
function dragify(Frame)
		local dragToggle = nil
		local dragSpeed = 0
		local dragInput = nil
		local dragStart = nil
		local dragPos = nil
		local function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end


local KeyKeyKeyScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local GetKey = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local EnterKey = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local KeyHolder = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_5 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")

--Properties:

KeyKeyKeyScreenGui.Parent = game.CoreGui
KeyKeyKeyScreenGui.Name = "pa1nkey"

Frame.Parent = KeyKeyKeyScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.403934062, 0, 0.399482429, 0)
Frame.Size = UDim2.new(0.191946194, 0, 0.200623512, 0)
dragify(Frame)

UICorner.CornerRadius = UDim.new(0.0500000007, 0)
UICorner.Parent = Frame

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 1.700

GetKey.Name = "Get Key"
GetKey.Parent = Frame
GetKey.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
GetKey.BorderSizePixel = 0
GetKey.Position = UDim2.new(0.524609089, 0, 0.702688694, 0)
GetKey.Size = UDim2.new(0.409090877, 0, 0.144242421, 0)
GetKey.Font = Enum.Font.Arial
GetKey.Text = "Get Key"
GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKey.TextSize = 20.000

UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
UICorner_2.Parent = GetKey

EnterKey.Name = "Enter Key"
EnterKey.Parent = Frame
EnterKey.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
EnterKey.BorderSizePixel = 0
EnterKey.Position = UDim2.new(0.0595574751, 0, 0.702688694, 0)
EnterKey.Size = UDim2.new(0.409090877, 0, 0.144242421, 0)
EnterKey.Font = Enum.Font.Arial
EnterKey.Text = "Enter"
EnterKey.TextColor3 = Color3.fromRGB(255, 255, 255)
EnterKey.TextSize = 20.000

UICorner_3.CornerRadius = UDim.new(0.200000003, 0)
UICorner_3.Parent = EnterKey

KeyHolder.Name = "KeyHolder"
KeyHolder.Parent = Frame
KeyHolder.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
KeyHolder.BorderSizePixel = 0
KeyHolder.ClipsDescendants = true
KeyHolder.Position = UDim2.new(0.0595574751, 0, 0.531391799, 0)
KeyHolder.Size = UDim2.new(0.875757575, 0, 0.144242421, 0)
KeyHolder.Font = Enum.Font.Arial
KeyHolder.Text = ""
KeyHolder.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyHolder.TextSize = 20.000

UICorner_4.CornerRadius = UDim.new(0.200000003, 0)
UICorner_4.Parent = Key

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.195988521, 0, 0.113993846, 0)
TextLabel.Size = UDim2.new(0.814240396, 0, 0.29565078, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Welcome to pa1n hub!"
TextLabel.TextColor3 = Color3.fromRGB(106, 166, 255)
TextLabel.TextSize = 22.000

UIAspectRatioConstraint_2.Parent = TextLabel
UIAspectRatioConstraint_2.AspectRatio = 4.621

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0922393799, 0, 0.113993846, 0)
ImageLabel.Size = UDim2.new(0.181818202, 0, 0.298787922, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8444712989"

UICorner_5.CornerRadius = UDim.new(1, 0)
UICorner_5.Parent = ImageLabel

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(1.65701167e-07, 0, 0.897445738, 0)
TextLabel_2.Size = UDim2.new(0.9939394, 0, 0.102554359, 0)
TextLabel_2.Font = Enum.Font.Arial
TextLabel_2.Text = "Get Key Here: https://pa1n.xyz/hub/"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 12.000

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.00303034298, 0, 0.409644514, 0)
TextLabel_3.Size = UDim2.new(0.99696964, 0, 0.117389753, 0)
TextLabel_3.Font = Enum.Font.Arial
TextLabel_3.Text = "[ Waiting for key... ]"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 15.000

local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")

local SOURCE_LOCALE = "en"
local translator = nil

local AnimateUI = {}

function AnimateUI.loadTranslator()
    pcall(function()
        translator = LocalizationService:GetTranslatorForPlayerAsync(Players.LocalPlayer)
    end)
    if not translator then
        pcall(function()
            translator = LocalizationService:GetTranslatorForLocaleAsync(SOURCE_LOCALE)
        end)
    end
end

function AnimateUI.typeWrite(guiObject, text, delayBetweenChars)
    guiObject.Visible = true
    guiObject.AutoLocalize = false
    local displayText = text

    -- Translate text if possible
    if translator then
        displayText = translator:Translate(guiObject, text)
    end

    -- Replace line break tags so grapheme loop will not miss those characters
    displayText = displayText:gsub("<br%s*/>", "\n")
    displayText:gsub("<[^<>]->", "")

    -- Set translated/modified text on parent
    guiObject.Text = displayText

    local index = 0
    for first, last in utf8.graphemes(displayText) do
        index = index + 1
        guiObject.MaxVisibleGraphemes = index
        wait(delayBetweenChars)
    end
end



-- Scripts:

local function LKYMN_fake_script() -- TextLabel_3.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_3)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local label = script.Parent
	
	-- Load translator if game is localized
	--AnimateUI.loadTranslator()
	
	local message1 = [[ [ Waiting for key... ] ]]
	AnimateUI.typeWrite(label, message1, 0.05)
	
	wait(1)
	
end
coroutine.wrap(LKYMN_fake_script)()

EnterKey.MouseButton1Click:Connect(function()
    	
    AnimateUI.typeWrite(TextLabel_3, [[ [ Verifying your key!... ] ]], 0.01)
    local data = game:GetService("HttpService"):JSONDecode(linq)
    wait(0.2)
	

	if KeyHolder.Text == data.test then
    AnimateUI.typeWrite(TextLabel_3, [[ [ Key Accepted!... ] ]], 0.01)
    wait(0.5)
    AnimateUI.typeWrite(TextLabel_3, [[ [ Loading GUI... ] ]], 0.01)
	    gui()
	    wait()
		KeyKeyKeyScreenGui:Destroy()
	
	elseif KeyHolder.Text == "" then
	       AnimateUI.typeWrite(TextLabel_3, [[ [ ................................ ] ]], 0.01)
	       wait(0.5)
	       AnimateUI.typeWrite(TextLabel_3, [[ [ Waiting for key... ] ]], 0.01)
	else
		EnterKey.Text = "Invalid Key"
		EnterKey.Text = "Enter"
		AnimateUI.typeWrite(TextLabel_3, [[ [ Invalid Key... ] ]], 0.01)
		wait(0.5)
		AnimateUI.typeWrite(TextLabel_3, [[ [ Please get a new key from the website... ] ]], 0.01)
		wait(0.5)
		AnimateUI.typeWrite(TextLabel_3, [[ [ Waiting for key... ] ]], 0.01)
	end

end)

GetKey.MouseButton1Click:Connect(function()
    setclipboard("https://pa1n.xyz/hub/")
    AnimateUI.typeWrite(TextLabel_3, [[ [ Copied Key Link!... ] ]], 0.01)
	wait(0.6)
	AnimateUI.typeWrite(TextLabel_3, [[ [ Waiting for key... ] ]], 0.01)	
	GetKey.Text = "Get Key"
end)

end
kkkey()
