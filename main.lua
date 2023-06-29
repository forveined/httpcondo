wait(5)
local chat = game:GetService("Chat")
chat.BubbleChatEnabled = true

local chatservice = require(game.ServerScriptService.ChatServiceRunner.ChatService)
chatservice.InternalApplyRobloxFilterNewAPI = function(self, sp, mes, textfilcon)
    return true, false, mes
end

chatservice.InternalApplyRobloxFilter = function(self, sp, mes, toname)
    return mes
end

local PhysicsService = game:GetService("PhysicsService")
local Players = game:GetService("Players")

local playerCollisionGroupName = "Players"
PhysicsService:CreateCollisionGroup(playerCollisionGroupName)
PhysicsService:CollisionGroupSetCollidable(playerCollisionGroupName, playerCollisionGroupName, false)

local previousCollisionGroups = {}

local function setCollisionGroup(object)
    if object:IsA("BasePart") then
        previousCollisionGroups[object] = object.CollisionGroupId
        PhysicsService:SetPartCollisionGroup(object, playerCollisionGroupName)
    end
end

local function setCollisionGroupRecursive(object)
    setCollisionGroup(object)

    for _, child in ipairs(object:GetChildren()) do
        setCollisionGroupRecursive(child)
    end
end

local function resetCollisionGroup(object)
    local previousCollisionGroupId = previousCollisionGroups[object]
    if not previousCollisionGroupId then
        return
    end

    local previousCollisionGroupName = PhysicsService:GetCollisionGroupName(previousCollisionGroupId)
    if not previousCollisionGroupName then
        return
    end

    PhysicsService:SetPartCollisionGroup(object, previousCollisionGroupName)
    previousCollisionGroups[object] = nil
end

local function onCharacterAdded(character)
    setCollisionGroupRecursive(character)

    character.DescendantAdded:Connect(setCollisionGroup)
    character.DescendantRemoving:Connect(resetCollisionGroup)
end

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(onCharacterAdded)
end

Players.PlayerAdded:Connect(onPlayerAdded)

wait(2)

local Remote = game.ReplicatedStorage:WaitForChild("Dressing")

function sent(player, option)
    if not player.Character:FindFirstChild("Clothes") then
        local Clothes = Instance.new("Folder")
        Clothes.Parent = player.Character
        Clothes.Name = "Clothes"
    end
    if option == "Pants" then
        if player.Character:FindFirstChild("Pants") then
            player.Character.Pants.Parent = player.Character.Clothes
        end
    elseif option == "Shirt" then
        if player.Character:FindFirstChild("Shirt") then
            player.Character.Shirt.Parent = player.Character.Clothes
        end
    else
        if player.Character.Clothes:FindFirstChild("Pants") then
            player.Character.Clothes.Pants.Parent = player.Character
        end
        if player.Character.Clothes:FindFirstChild("Shirt") then
            player.Character.Clothes.Shirt.Parent = player.Character
        end
        player.Character.Clothes:Destroy()
    end
end

Remote.OnServerEvent:Connect(sent)
