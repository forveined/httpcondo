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
