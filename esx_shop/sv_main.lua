ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


--------------------------------------------------------------------------------------------------------------------------------------------
  --[[--------------gunshop------------------------------------------------------------------------------------------
RegisterServerEvent('BaseballBat:ammunation')
AddEventHandler('BaseballBat:ammunation', function(price, weapons, nombre) 
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getMoney() >= price then
    xPlayer.removeMoney(price)
        xPlayer.addWeapon(weapons, nombre) 
        TriggerClientEvent('esx:showNotification', source, "Merci de votre ~g~Achats ! ~w~Voici votre ~b~Batte de baseball~s~pour ~g~$14000")
     else 
         TriggerClientEvent('esx:showNotification', source, "Pas assez ~r~d'argent sur vous")    
        end
end)  

------------------------]]

---------------------------------------
RegisterServerEvent('magasin:shop')
AddEventHandler('magasin:shop', function(price, item, nombre) 
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getMoney() >= price then
    xPlayer.removeMoney(price)
        xPlayer.addInventoryItem(item, nombre) 
        --TriggerClientEvent('esx:showNotification', source, "Merci de votre ~g~Achats !") ---notification simple
         TriggerClientEvent('esx:showNotification', source, "~g~Achats Valider~s~ :  voici votre article  ~y~"..item.."~s~  Pour ~g~$"..price.."", 1500)
     else 
         TriggerClientEvent('esx:showNotification', source, "~r~Achats Refuser~s~: pas assez d'argent")    
        end
end)  



