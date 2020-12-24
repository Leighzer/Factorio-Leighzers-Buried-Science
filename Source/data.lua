if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzerburiedscience then
    leighzermods.leighzerburiedscience = {}     
end

local vanillaSciencePackData = {}
vanillaSciencePackData["automation-science-pack"] = {
    disabled = false,    
    mapTintName = "fire_brick",
    startingAreaEnabled = true
}
vanillaSciencePackData["logistic-science-pack"] = {
    disabled = false,    
    mapTintName = "lime_green",
    startingAreaEnabled = true
}
vanillaSciencePackData["military-science-pack"] = {
    disabled = false,    
    mapTintName = "light_slate_gray",
    startingAreaEnabled = true
}
vanillaSciencePackData["chemical-science-pack"] = {
    disabled = false,    
    mapTintName = "cyan",
    startingAreaEnabled = false
}
vanillaSciencePackData["production-science-pack"] = {
    disabled = false,    
    mapTintName = "dark_orchid",
    startingAreaEnabled = false
}
vanillaSciencePackData["utility-science-pack"] = {
    disabled = false,    
    mapTintName = "golden_rod",
    startingAreaEnabled = false    
}
vanillaSciencePackData["space-science-pack"] = {
    disabled = false,    
    mapTintName = "white",
    startingAreaEnabled = false
}

-- set leighzerburiedscience customization data on the science pack
for k,v in pairs(data.raw.tool) do -- for each science pack item
    if (vanillaSciencePackData[k]) then -- if we have data for it
        v.leighzerburiedscience = vanillaSciencePackData[k] -- load buried science data into the science pack item
    end
end