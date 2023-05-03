local blips = {
    {title="Shop", toggle = true, colour2 = 0, alpha = 0, scale =0.7, colour=2, id=59, x = 373.68, y= 326.05, z=103.56},
    {title="Shop", toggle = true, colour2 = 0, alpha = 0, scale =0.7, colour=2, id=59, x = 1698.265, y= 4924.492, z= 42.06},
    {title="Shop", toggle = true, colour2 = 0, alpha = 0, scale =0.7, colour=2, id=59, x = -707.76, y= -914.48, z= 19.21},
    {title="Shop", toggle = true, colour2 = 0, alpha = 0, scale =0.7, colour=2, id=59, x = -48.23, y= -1757.56, z= 29.42},
    {title="Shop", toggle = true, colour2 = 0, alpha = 0, scale =0.7, colour=2, id=59, x = 1163.20, y= -323.66, z= 69.20},
    {title="Shop", toggle = true, colour2 = 0, alpha = 0, scale =0.7, colour=2, id=59, x = 1135.65, y= -982.32, z= 46.41},
    {title="Shop", toggle = true, colour2 = 0, alpha = 0, scale =0.7, colour=2, id=59, x = 548.05, y= 2669.84, z= 42.15},
    {title="Shop", toggle = true, colour2 = 0, alpha = 0, scale =0.7, colour=2, id=59, x = 1165.87, y= 2709.36, z= 38.15},
    {title="Shop", toggle = true, colour2 = 0, alpha = 0, scale =0.7, colour=2, id=59, x = 2557.07, y= 382.09, z= 108.62},
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForRadius(info.x, info.y, info.z, 80.0)
        SetBlipHighDetail(info.blip, info.toggle)
        SetBlipColour(info.blip, info.colour2)
        SetBlipAlpha (info.blip, info.alpha)
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id) --sprite
        SetBlipDisplay(info.blip, 4) -- info -- display
        SetBlipScale(info.blip, info.scale) -- size
        SetBlipColour(info.blip, info.colour) -- colour
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)