if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzerburiedscience then
    leighzermods.leighzerburiedscience = {} 
end

local vanillaSciencePackData = {}
vanillaSciencePackData["automation-science-pack"] = {
    leighzerburiedscienceDisabled = false,    
    leighzerburiedscienceMapTintName = "fire_brick",
    leighzerburiedscienceStartingAreaEnabled = true
}
vanillaSciencePackData["logistic-science-pack"] = {
    leighzerburiedscienceDisabled = false,    
    leighzerburiedscienceMapTintName = "lime_green",
    leighzerburiedscienceStartingAreaEnabled = true
}
vanillaSciencePackData["military-science-pack"] = {
    leighzerburiedscienceDisabled = false,    
    leighzerburiedscienceMapTintName = "light_slate_gray",
    leighzerburiedscienceStartingAreaEnabled = true
}
vanillaSciencePackData["chemical-science-pack"] = {
    leighzerburiedscienceDisabled = false,    
    leighzerburiedscienceMapTintName = "cyan",
    leighzerburiedscienceStartingAreaEnabled = false
}
vanillaSciencePackData["production-science-pack"] = {
    leighzerburiedscienceDisabled = false,    
    leighzerburiedscienceMapTintName = "dark_orchid",
    leighzerburiedscienceStartingAreaEnabled = false
}
vanillaSciencePackData["utility-science-pack"] = {
    leighzerburiedscienceDisabled = false,    
    leighzerburiedscienceMapTintName = "golden_rod",
    leighzerburiedscienceStartingAreaEnabled = false    
}
vanillaSciencePackData["space-science-pack"] = {
    leighzerburiedscienceDisabled = false,    
    leighzerburiedscienceMapTintName = "white",
    leighzerburiedscienceStartingAreaEnabled = false
}

for k,v in pairs(data.raw.tool) do -- for each science pack item
    if (vanillaSciencePackData[k]) then -- if we have data for it
        for kk,vv in pairs(vanillaSciencePackData[k]) do
            if (v[kk] == nil) then -- if there already isn't a value there
                v[kk] = vv -- load each field into the item prototype
                -- our dynamic resource creator will examine these in data-updates.lua and use them to make decisions 
            end
        end
    end
end
