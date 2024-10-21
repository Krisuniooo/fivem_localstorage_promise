local input

local SaveCache = function(item, data)
    SendNUIMessage({
        type = 'save',
        item = item,
        data = data
    })    
end

local ResetCache = function(item)
    SendNUIMessage({
        type = 'res',
        item = item
    })    
end

RegisterNUICallback("localStorageData", function(data, cb)
    cb(1)

    local promise = input
    input = nil

    promise:resolve(data)
end)
  
local GetCache = function(item)
    if input then return(
        print("Error occured while accessing localstorage, try again!")
    ) end
    input = promise.new()

    SendNUIMessage({
        type = 'get',
        item = item
    })
    
    return Citizen.Await(input)
end

exports('GetCache', GetCache)
exports('SaveCache', SaveCache)
exports('ResetCache', ResetCache)

--[[
RegisterCommand("SaveToCache", function(source, args)
    SaveCache(args[1], args[2])
end)

RegisterCommand("GetFromCache", function(source, args)
    print(GetCache(args[1]).value)
end)
]]