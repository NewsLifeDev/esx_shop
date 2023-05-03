

--ESX = exports["es_extended"]:getSharedObject() ---------legacy

ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
	 
TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end) Citizen.Wait(0) end end) ---- essentialmode