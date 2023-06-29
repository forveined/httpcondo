
local module = {}

local Colors = { --credits to big_wiggles for color list since I was too lazy
	{"Br. yellowish green", "Shamrock"},{"Bright yellow", "Bronze"},{"Bright orange", "CGA brown"},{"Bright red", "Maroon"},
	{"Bright violet", "Dark indigo"},{"Bright blue", "Navy blue"},{"Bright bluish green", "Black"},{"Bright green", "Parsley green"},
	{"Institutional white", "Mid gray"},{"White", "Ghost grey"},{"Light stone grey", "Medium stone grey"},{"Mid gray", "Fossil"},
	{"Medium stone grey", "Dark stone grey"},{"Dark stone grey", "Black"},{"Black", "Really black"},{"Really black", "Black"},
	{"Grime", "Slime green"},{"Br. yellowish orange", "Neon orange"},{"Light orange", "Medium red"},{"Sand red", "Copper"},
	{"Lavender", "Bright violet"},{"Sand blue", "Smoky grey"},{"Medium blue", "Storm blue"},{"Sand green", "Slime green"},
	{"Brick yellow", "Fawn brown"},{"Cool yellow", "Burlap"},{"Neon orange", "CGA brown"},{"Medium red", "Tawny"},
	{"Light reddish violet", "Sunrise"},{"Pastel Blue", "Sand blue"},{"Teal", "Bright bluish green"},{"Medium green", "Grime"},
	{"Pastel brown", "Salmon"},{"Pastel yellow", "Cashmere"},{"Pastel orange", "Mauve"},{"Pink", "Magenta"},
	{"Pastel violet", "Alder"},{"Pastel light blue", "Cyan"},{"Pastel blue-green", "Teal"},{"Pastel green", "Medium green"},
	{"Olive", "Shamrock"},{"New Yeller", "Gold"},{"Deep orange", "CGA brown"},{"Really red", "Maroon"},
	{"Hot pink", "Eggplant"},{"Really blue", "Navy blue"},{"Toothpaste", "Bright bluish green"},{"Lime green", "Forest green"},
	{"Brown", "Dirt brown"},{"Nougat", "Tawny"},{"Dark orange", "Dusty Rose"},{"Royal purple", "Dark indigo"},
	{"Alder", "Bright violet"},{"Cyan", "Bright blue"},{"Light blue", "Sand blue"},{"Camo", "Earth green"},
	{"Reddish brown", "Cocoa"},{"CGA brown", "Maroon"},{"Dusty Rose", "Cocoa"},{"Magenta", "Bright violet"},
	{"Deep blue", "Navy blue"},{"Navy blue", "Black"},{"Dark green", "Earth green"},{"Earth green", "Black"},
}

function getSecondaryColor(MainColor)
	local Prime = MainColor
	local Second = BrickColor.new("Pastel orange")
	for i = 1, #Colors do
		if Prime == BrickColor.new(Colors[i][1]) then
			Second = BrickColor.new(Colors[i][2])
		end
	end
	return Second
end

local weld = {}

function weld.new(a, b)
    local weld = Instance.new("Motor6D")
	weld.Name = "Attach"
    weld.Part0 = b
    weld.Part1 = a
    weld.C0 = CFrame.new(0, 0, 0)
    weld.C1 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld
end

function getChildren(model)
	return model:GetChildren()
end

function ffc(a, b)
	return a:FindFirstChild(tostring(b))
end

function fixWelds(model, mainPart, prt)
	for i,v in pairs(model:GetChildren()) do
		v.Archivable = false
		local w = ffc(v, "Attach")
		if w then
			if w.Part0 == mainPart then
				w.Part0 = prt
			end
		end
	end --function
		mainPart:Destroy()
end

local MESHES = script.Parent.MESHES

function module:applyModel(char, snap, model)
	if char:FindFirstChild("Humanoid") == nil then
		return
	else
		if snap ~= nil then
			local m = model:Clone()
			m.Parent = char
			if snap.Parent:FindFirstChild("Shirt") then
				snap.Parent.Shirt:Destroy()
			end
			if snap.Parent:FindFirstChild("Pants") then
				snap.Parent.Pants:Destroy()
			end
			if snap:FindFirstChild("roblox") then
				snap.roblox:Destroy()
			end
			if snap.Parent:FindFirstChild("Shirt Graphic") then
				snap.Parent["Shirt Graphic"]:Destroy()
			end
			if snap:FindFirstChild("roblox") then
				snap.roblox:Destroy()
			end
			for i,v in pairs(char:GetChildren()) do
				if v:IsA("CharacterMesh") then
					v:Destroy()
				end
			end
			if m.Name == "female" then
				pcall(function()
					MESHES.Girltorso:Clone().Parent = char
				end)
				local middle = ffc(m, "DEX1")
                local rboob = ffc(m, "DEX2")
				local rnip = ffc(m, "DEX3")
				local lboob = ffc(m, "DEX4")
				local lnip = ffc(m, "DEX5")
				local lip1 = ffc(m, "DEX6")
                local lip2 = ffc(m, "DEX7")
				local lcheek = ffc(m, "DEX8")
				local rcheek = ffc(m, "DEX9")
				local lpl = ffc(m, "DEXS1")
				local rpl = ffc(m, "DEXS2")
				local clit = ffc(m, "DEXS3")
				local pi = ffc(m, "DEXS4")
				local pussy = ffc(m, "DEXS5")
				local asshole = ffc(m, "DEXS6")
				local belly = ffc(m, "DEXS7")
                weld.new(rboob, middle)
                weld.new(rnip, rboob)
                weld.new(lboob, middle)
                weld.new(lnip, lboob)
                weld.new(lip1, middle)
                weld.new(lip2, middle)
                weld.new(lcheek, middle)
                weld.new(rcheek, middle)
                weld.new(lpl, middle)
                weld.new(rpl, middle)
                weld.new(clit, middle)
                weld.new(pi, middle)
                weld.new(pussy, middle)
				weld.new(asshole, middle)
				weld.new(belly, middle)
				rboob.BrickColor = snap.BrickColor
				lboob.BrickColor = snap.BrickColor
				rcheek.BrickColor = snap.BrickColor
				lcheek.BrickColor = snap.BrickColor --mButton
				lip1.BrickColor = snap.BrickColor
				lip2.BrickColor = snap.BrickColor
				rnip.BrickColor = getSecondaryColor(snap.BrickColor)
				lnip.BrickColor = getSecondaryColor(snap.BrickColor)
				lpl.BrickColor = getSecondaryColor(snap.BrickColor)
				rpl.BrickColor = getSecondaryColor(snap.BrickColor)
				pi.BrickColor = getSecondaryColor(snap.BrickColor)
				clit.BrickColor = getSecondaryColor(snap.BrickColor)
				pussy.BrickColor = snap.BrickColor
                rboob.Anchored=false
                rnip.Anchored=false
                lboob.Anchored=false
                lnip.Anchored=false
                lip1.Anchored=false
                lip2.Anchored=false
                lcheek.Anchored=false
                rcheek.Anchored=false
                lpl.Anchored=false
                rpl.Anchored=false
                clit.Anchored=false
                pi.Anchored=false
                pussy.Anchored=false
				asshole.Anchored = false
				belly.Anchored = false
                fixWelds(m, middle, snap)
                m.Name = "femaleMorph"
                m.Archivable = false
			elseif m.Name == "male" then
				local middle = ffc(m, "DEX1")
				local penis = ffc(m, "DEX2")
				local rnip = ffc(m, "DEX3")
				local lboob = ffc(m, "DEX4")
				local rboob = ffc(m, "DEX5")
				local lnip = ffc(m, "DEX6")
				local rt = ffc(m, "DEX7")
				local lt = ffc(m, "DEX8")
				local lcheek = ffc(m, "DEX9")
				local rcheek = ffc(m, "DEXS1")
                weld.new(rboob, middle)
                weld.new(rnip, rboob)
                weld.new(lboob, middle)
                weld.new(lnip, lboob)
                weld.new(lt, middle)
                weld.new(rt, middle)
                weld.new(lcheek, middle)
                weld.new(rcheek, middle)
                weld.new(penis, middle)
				rcheek.BrickColor = snap.BrickColor
				lcheek.BrickColor = snap.BrickColor
				penis.BrickColor = snap.BrickColor
				rt.BrickColor = snap.BrickColor
				lt.BrickColor = snap.BrickColor
				rboob.BrickColor = snap.BrickColor
				lboob.BrickColor = snap.BrickColor
				rnip.BrickColor = getSecondaryColor(snap.BrickColor)
				lnip.BrickColor = getSecondaryColor(snap.BrickColor)
                rboob.Anchored=false
                rnip.Anchored=false
                lboob.Anchored=false
                lnip.Anchored=false
                lt.Anchored=false
                rt.Anchored=false
                lcheek.Anchored=false
                rcheek.Anchored=false
                penis.Anchored=false
                fixWelds(m, middle, snap)
                m.Name = "maleMorph"
                m.Archivable = false
			end
		end
	end
end

return module
