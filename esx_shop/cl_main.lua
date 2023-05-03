


local Shop = {   
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_Green}, HeaderColor = {255, 255, 255}, --[[R, G, B   R = red G = Green B = Blue ]]Title = 'Magasin'},
	Data = { currentMenu = "Magasin:", GetPlayerName()},
    Events = { 
		onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
      PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
      local btn = btn.name
          if btn == "Pain" then  
 TriggerServerEvent('magasin:shop', 18, 'bread', 1)
           
             end 
             if btn == "Eau" then  
 TriggerServerEvent('magasin:shop', 20, 'water', 1)
end
             if btn == "Chocolat" then  
 TriggerServerEvent('magasin:shop', 50, 'chocolate', 1)
end
	        end,     
	},    
	Menu = {  
		["Magasin:"] = { 
			b = { 
        {name = "Pain", ask = "~g~$18", askX = true}, 
        {name = "Eau", ask = "~g~$20", askX = true}, 
        {name = "Chocolat", ask = "~g~$50", askX = true}, 
               
			}  
		}

	}
}    


local shop = {
  {x = 373.76, y= 326.14, z=103.56}, ---1/
  {x = 1698.265, y= 4924.492, z=42.06}, ---2/
  {x = -707.76, y= -914.48, z= 19.21}, ---3/
  {x = -48.23, y= -1757.56, z= 29.42}, ---4/
  {x = 1163.20, y= -323.66, z= 69.20}, ---5/
  {x = 1135.65, y= -982.32, z= 46.41}, ---6/
  {x = 548.05, y= 2669.84, z= 42.15}, ---7/
  {x = 1165.87, y= 2709.36, z= 38.15}, ---8/
  {x = 2557.07, y= 382.09, z= 108.62} ---9/
}

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0) 
      for k in pairs(shop) do
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, shop[k].x, shop[k].y, shop[k].z)
          if dist <= 1.0 then 
              ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ pour ~g~interagir avec le magasin")
              if IsControlJustPressed(1,38) then 			
               CreateMenu(Shop)    
                  end
              end 
          end
      end
  end)

-- RegisterCommand('yt', function(source) 
-- 		CreateMenu(Shop)
-- end)  
