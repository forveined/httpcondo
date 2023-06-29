local EVENT = Instance.new(
		"RemoteEvent",
		game.ReplicatedStorage:waitForChild('Events')
	)
	EVENT.Name = "getMorph"
	local MORPHS = script:waitForChild('MORPHS')
	local MODULE = require(script:waitForChild('MAIN'))
	function SCRIPT(PLR, M)
		ypcall(function()
			local _morph = MORPHS:FindFirstChild(string.lower(tostring(M)))
			if _morph and PLR.Character~=nil then
				MODULE:applyModel(PLR.Character, PLR.Character.Torso, _morph)
			else
				PLR:LoadCharacter()
			end
		end)
	end
	EVENT.OnServerEvent:connect(function(PLR, MORPH)
		SCRIPT(PLR, MORPH)
	end)
