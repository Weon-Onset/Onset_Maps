AddCommand("map", function(mapId)

    mapId = tonumber(mapId)

    local Map = Maps_List[mapId]

    if GetWorld():GetMapName() ~= Map.pak.name then
        
        if not LoadPak(Map.pak.name) then
            AddPlayerChat("[ERROR] Error then package of map "..Map.name.." loading, edit your config file !")
            return
        end

        if not ConnectToServer(GetServerIP(),GetServerPort(), Server_Password, Map.pak.path) then
            AddPlayerChat("[ERROR] Error then connect to "..Map.name.." edit your config file !")
            return
        end
    else
        AddPlayerChat("Your are already in "..Map.name.."!")
    end
end)


AddEvent("OnPlayerSpawn", function(playerid)
    for k,v in pairs(Maps_List) do
        if GetWorld():GetMapName() == v.mapName then 
            local plyactor = GetPlayerActor(GetPlayerId())
            plyactor:SetActorLocation(FVector(v.spawn[1], v.spawn[2], v.spawn[3]))
            return
        end
    end
end)


AddCommand("maplist", function()
    AddPlayerChat("--------------------")

    for k,v in pairs(Maps_List) do
        AddPlayerChat("Name: "..v.name.." [Id:"..k.."]")
    end

    AddPlayerChat("--------------------")
end)
