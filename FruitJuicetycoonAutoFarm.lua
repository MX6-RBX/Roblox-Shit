local UIS = game:GetService("UserInputService")
local Run = game:GetService("RunService")
local Player = game.Players.LocalPlayer
local Base = nil
local Drops = nil

for i,v in pairs(game.Workspace.Tycoons:GetChildren()) do
    if v.Owner.Value and v.Owner.Value.Name  == Player.Name then 
        Base = v
        Drops = v.Drops
    end
end
function TPParts()
    if Drops then 
        for i,v in pairs(Drops:GetChildren()) do
            game:GetService("ReplicatedStorage").CollectFruit:FireServer(v)
        end
        fireproximityprompt(Base.Essentials.JuiceMaker.StartJuiceMakerButton.PromptAttachment.StartPrompt,1)
    end
end
Run.Stepped:Connect(TPParts)
