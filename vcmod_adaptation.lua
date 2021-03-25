PLUGIN.name = "VCMod adaptation"
PLUGIN.author = "Dobytchick"
PLUGIN.description = "Interactions with money"

function PLUGIN:VC_canAfford(ply,amount)
    return ply:GetCharacter():GetMoney() >= amount
end

if SERVER then
    function PLUGIN:VC_canRemoveMoney(ply,amount,inf)
        ply:GetCharacter():SetMoney(ply:GetCharacter():GetMoney() - amount)
    end

    function PLUGIN:VC_canAddMoney(ply,amount,inf)
        ply:GetCharacter():SetMoney(math.floor(ply:GetCharacter():GetMoney() + amount))
    end
end