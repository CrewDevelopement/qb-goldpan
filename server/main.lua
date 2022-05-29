local QBCore = exports['qb-core']:GetCoreObject()
local Goldlist = {
   
    ["goldbar"]  =  500 ,
    ["rawgold"]  =  100 ,
    ["gravel"]  =  25 ,
}

RegisterNetEvent('qb-sellitems:server:sellgold', function()
    local src = source
    local price = 0
    local Player = QBCore.Functions.GetPlayer(src)
    
    local xItem = Player.Functions.GetItemsByName(Goldlist)
    if xItem ~= nil then
        for k, v in pairs(Player.PlayerData.items) do
            if Player.PlayerData.items[k] ~= nil then
                if Goldlist[Player.PlayerData.items[k].name] ~= nil then
                    price = price + (Goldlist[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)

        Player.Functions.AddMoney("cash", price, "sold-resources")
            TriggerClientEvent('QBCore:Notify', src, "You sold your gold for $"..price)
            TriggerEvent("qb-log:server:CreateLog", "sellgold", "resources", "blue", "**"..GetPlayerName(src) .. "** got $"..price.." for selling the resources")
                end
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "You have no resources..")
    end

end)

