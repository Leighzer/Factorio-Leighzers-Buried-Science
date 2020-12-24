require("functions.resource")
require("functions.particle")
require("functions.mapgen")

local function AddBuriedScience(sciencePackItem)    
    AddParticle(sciencePackItem) -- particle.lua
    AddResource(sciencePackItem) -- resource.lua
    AddMapGen(sciencePackItem) -- mapgen.lua
end

-- for each tool in data.raw
for k, v in pairs(data.raw.tool) do
    local disabled = false
    if (v.leighzerburiedscience) then
        if (v.leighzerburiedscience.disabled ~= nil) then
            disabled = v.leighzerburiedscience.disabled
        end
    end
    if (not disabled) then 
        AddBuriedScience(v) -- add a resource patch for it
    end
end