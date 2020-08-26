function AddMapGen(sciencePackItem)

    local resourceName = sciencePackItem.name

    local order = "zzz-" .. resourceName
    if data.raw.tool[resourceName] and data.raw.tool[resourceName].order then
        order = "zzz="..data.raw.tool[resourceName].order
    end

    local localisedName = ""
    if data.raw.tool[resourceName] and data.raw.tool[resourceName].localised_name then --if there is a localized name    
        localisedName = data.raw.tool[resourceName].localised_name -- use the name that is programmed in
    else
        localisedName = {"item-name."..resourceName} -- otherwise try pull the science pack name from locale
    end

    data:extend(
    {

        {--autoplace-control = new game mapgen menu item to toggle ore generation options (frequency,size,richness,etc.)
            type = "autoplace-control",
            name = "buried-"..resourceName,
            richness = true,
            order = order,
            category="resource",         
            localised_name = localisedName
        },
        {
            type = "noise-layer",
            name = "buried-"..resourceName,
        },
    })    
end