wait(3)
local left1 = 0
local right1 = 0
local leg1 = 0
local leg2 = 0
local Event = game.ReplicatedStorage:WaitForChild("Morphs")

function onsent(player,choice,selected,value)
	if choice == "Send" then
		if game.ServerStorage.Morphs:FindFirstChild(selected) then
			for _, animations in next, game.ServerStorage.Morphs[selected]:GetChildren() do
				Event:FireClient(player,animations.Name)
			end
		end
	end
	if choice == "Play" then
		if game.ServerStorage.Morphs:FindFirstChild(selected) then
			if game.ServerStorage.Morphs[selected]:FindFirstChild(value) then
				local Morph = game.ServerStorage.Morphs[selected]:FindFirstChild(value)
				local hit = player.Character.Torso
				if hit.Parent:findFirstChild("Humanoid") ~= nil then
					if hit.Parent:findFirstChild("Chest") ~= nil then
						hit.Parent.Chest:Destroy()
					end
					if value == "Male" then
						hit.Parent.Torso.Transparency = 1
					end
					if value == "Femboy" then
						hit.Parent.Torso.Transparency = 1
					end
					if Morph then
						local g = Morph:clone()
						g.Name = "Chest"
						g.Parent = hit.Parent
						local C = g:GetChildren()
						for i=1, #C do
							if C[i].Name ~= "hm" and C[i].Name ~= "LN" and C[i].Name ~= "RN" and C[i].Name ~= "yes" and C[i].Name ~= "Tip" and C[i].Name ~= "StockingL" then
								C[i].Color = hit.Color
							end
							if C[i].className == "UnionOperation"or C[i].className == "Part" or C[i].className == "MeshPart" then
								local W = Instance.new("Weld")
								W.Part0 = g.Middle
								W.Part1 = C[i]
								local CJ = CFrame.new(g.Middle.Position)
								local C0 = g.Middle.CFrame:inverse()*CJ
								local C1 = C[i].CFrame:inverse()*CJ
								W.C0 = C0
								W.C1 = C1
								W.Parent = g.Middle
							end
							local Y = Instance.new("Weld")
							Y.Part0 = hit.Parent.Torso
							Y.Part1 = g.Middle
							Y.C0 = CFrame.new(0, 0, 0)
							Y.Parent = Y.Part0
							if game.ServerStorage.TH.ThighHighsB.LB then
								local a = game.ServerStorage.TH.ThighHighsB.LB:Clone()
								a.Parent = g.Parent["Left Leg"]
								local W = Instance.new("Weld")
								W.Part0 = g.Parent["Left Leg"]
								W.Part1 = g.Parent["Left Leg"].LB
								local CJ = CFrame.new(g.Parent["Left Leg"].Position)

								W.Parent = g.Parent["Left Leg"]
							end
							local Y = Instance.new("Weld")
							Y.Part0 = g.Parent["Left Leg"].LB
							Y.Part1 = g.Parent["Left Leg"]
							Y.C0 = CFrame.new(0, 0.2, 0)
							Y.Parent = Y.Part0
							if game.ServerStorage.TH.ThighHighsB.RB then
								local a = game.ServerStorage.TH.ThighHighsB.RB:Clone()
								a.Parent = g.Parent["Right Leg"]
								local W = Instance.new("Weld")
								W.Part0 = g.Parent["Right Leg"]
								W.Part1 = g.Parent["Right Leg"].RB
								local CJ = CFrame.new(g.Parent["Right Leg"].Position)
								W.Parent = g.Parent["Right Leg"]
							end
							local Y = Instance.new("Weld")
							Y.Part0 = g.Parent["Right Leg"].RB
							Y.Part1 = g.Parent["Right Leg"]
							Y.C0 = CFrame.new(0, 0.2, 0)
							Y.Parent = Y.Part0
							if game.ServerStorage.TH.ThighHighsW.LW then
								local a = game.ServerStorage.TH.ThighHighsW.LW:Clone()
								a.Parent = g.Parent["Left Leg"]
								local W = Instance.new("Weld")
								W.Part0 = g.Parent["Left Leg"]
								W.Part1 = g.Parent["Left Leg"].LW
								local CJ = CFrame.new(g.Parent["Left Leg"].Position)
								W.Parent = g.Parent["Left Leg"]
							end
							local Y = Instance.new("Weld")
							Y.Part0 = g.Parent["Left Leg"].LB
							Y.Part1 = g.Parent["Left Leg"]
							Y.C0 = CFrame.new(0, 0.2, 0)
							Y.Parent = Y.Part0
							if left1 == 0 then
								local a = game.ServerStorage.AL.left1:Clone()
								a.Parent = g.Parent["Left Arm"]
								local W = Instance.new("Weld")
								W.Part0 = g.Parent["Left Arm"]
								W.Part1 = g.Parent["Left Arm"].left1
								local CJ = CFrame.new(g.Parent["Left Arm"].Position)
								W.Parent = g.Parent["Left Arm"]

							end
							if right1 == 0 then
								local a = game.ServerStorage.AL.right1:Clone()
								a.Parent = g.Parent["Right Arm"]
								local W = Instance.new("Weld")
								W.Part0 = g.Parent["Right Arm"]
								W.Part1 = g.Parent["Right Arm"].right1
								local CJ = CFrame.new(g.Parent["Right Arm"].Position)
								W.Parent = g.Parent["Right Arm"]

							end
							if leg1 == 0 then
								local a = game.ServerStorage.AL.Leg1:Clone()
								a.Parent = g.Parent["Left Leg"]
								local W = Instance.new("Weld")
								W.Part0 = g.Parent["Left Leg"]
								W.Part1 = g.Parent["Left Leg"].Leg1
								local CJ = CFrame.new(g.Parent["Left Leg"].Position)
								W.Parent = g.Parent["Left Leg"]


							end
							if leg2 == 0 then
								local a = game.ServerStorage.AL.Leg2:Clone()
								a.Parent = g.Parent["Right Leg"]
								local W = Instance.new("Weld")
								W.Part0 = g.Parent["Right Leg"]
								W.Part1 = g.Parent["Right Leg"].Leg2
								local CJ = CFrame.new(g.Parent["Right Leg"].Position)
								W.Parent = g.Parent["Right Leg"]

							end
							local Y = Instance.new("Weld")
							Y.Part0 = g.Parent["Left Leg"].LW
							Y.Part1 = g.Parent["Left Leg"]
							Y.C0 = CFrame.new(0, 0.2, 0)
							Y.Parent = Y.Part0
							if game.ServerStorage.TH.ThighHighsW.RW then
								local a = game.ServerStorage.TH.ThighHighsW.RW:Clone()
								a.Parent = g.Parent["Right Leg"]
								local W = Instance.new("Weld")
								W.Part0 = g.Parent["Right Leg"]
								W.Part1 = g.Parent["Right Leg"].RW
								local CJ = CFrame.new(g.Parent["Right Leg"].Position)
								W.Parent = g.Parent["Right Leg"]
							end				
							local Y = Instance.new("Weld")
							Y.Part0 = g.Parent["Right Leg"].RW
							Y.Part1 = g.Parent["Right Leg"]
							Y.C0 = CFrame.new(0, 0.2, 0)
							Y.Parent = Y.Part0
						end
						if value == "Thicc" then
							hit.Parent.Torso.Transparency = 1
							hit.Parent["Left Arm"].Transparency = 1
							hit.Parent["Left Leg"].Transparency = 1
							hit.Parent["Right Arm"].Transparency = 1
							hit.Parent["Right Leg"].Transparency = 1
							hit.Parent["Left Arm"].left1.Transparency = 0
							hit.Parent["Left Leg"].Leg1.Transparency = 0
							hit.Parent["Right Arm"].right1.Transparency = 0
							hit.Parent["Right Leg"].Leg2.Transparency = 0
							hit.Parent["Left Arm"].left1.Color = hit.Color
							hit.Parent["Left Leg"].Leg1.Color = hit.Color
							hit.Parent["Right Arm"].right1.Color = hit.Color
							hit.Parent["Right Leg"].Leg2.Color = hit.Color
						end

						local h = g:GetChildren()
						for i = 1, # h do
							if C[i].className == "UnionOperation"or C[i].className == "Part" or C[i].className == "MeshPart" then
								if C[i].BrickColor ~= BrickColor.new("Salmon") then
									C[i].Color = hit.Parent.Torso.Color
								end
								h[i].Anchored = false
								h[i].CanCollide = false
							end
						end
					end

				end
			end
		end
	end
	if choice == "Reset" then
		if player.Character:findFirstChild("Chest") ~= nil then
			player.Character.Chest:Destroy()
		end
		if choice == "Reset" then
			if left1 == 0 then
				player.Character["Left Arm"].left1.Transparency = 1
				player.Character["Left Leg"].Leg1.Transparency = 1
				player.Character["Right Arm"].right1.Transparency = 1
				player.Character["Right Leg"].Leg2.Transparency = 1
				player.Character["Left Arm"].Transparency = 0
				player.Character["Left Leg"].Transparency = 0
				player.Character["Right Arm"].Transparency = 0
				player.Character["Right Leg"].Transparency = 0
				player.Character.Torso.Transparency = 0	
			end
		end
		if choice == "Reset" then


			if player.Character:WaitForChild("Girltorso") ~= nil then
				player.Character.Girltorso:Destroy()
			end
		end
		if choice == "Reset" then


			if player.Character.Torso.Transparency == 1 then
				player.Character.Torso.Transparency = 0
			end
		end
	end
end

Event.OnServerEvent:Connect(onsent)


																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															
