assert(hookmetamethod, 'hookmetamethod not found')
assert(getnamecallmethod, 'getnamecallmethod not found')

local player = game:GetService'Players'.LocalPlayer
local playergui = assert(player:WaitForChild('PlayerGui', 5), 'player gui not found')

local chatgui = assert(playergui:WaitForChild('Chat', 5), 'chat gui not found')
local Frame = assert(chatgui:WaitForChild('Frame', 5), 'Chat(gui).Frame not found')
local ChatBarParentFrame = assert(Frame:WaitForChild('ChatBarParentFrame', 5), 'Frame.ChatBarParentFrame not found')
local Frame2 = assert(ChatBarParentFrame:WaitForChild('Frame', 5), 'ChatBarParentFrame.Frame not found')
local BoxFrame = assert(Frame2:WaitForChild('BoxFrame', 5), 'ChatBarParentFrame.Frame.BoxFrame not found')
local Frame3 = assert(BoxFrame:WaitForChild('Frame', 5), 'BoxFrame.Frame not found')
local ChatBar = assert(Frame3:WaitForChild('ChatBar', 5), 'ChatBar not found')

local allowed_text = ''

ChatBar.FocusLost:Connect(function(enter)
	if enter then
		allowed_text = ChatBar.Text
	end
end)

local OldMM = nil
OldMM = hookmetamethod(game, '__namecall', newcclosure(function(...)
	local NCmethod = getnamecallmethod()

	if NCmethod == 'FireServer' then
		local remote, text, channel = ...
		if remote and typeof(remote) == 'Instance' then
			if text == allowed_text then
				return OldMM(...)
			else
			    print'tried to chat fake message'
				return nil
			end
		end
	end
	return OldMM(...)
end))

print'-----anti forcechat by TechHog executed.------'
