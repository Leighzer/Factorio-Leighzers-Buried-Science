require("functions.resource")
require("functions.particle")
require("functions.mapgen")

local function AddBuriedScience(sciencePackItem)    
    AddParticle(sciencePackItem)--particle.lua
    AddResource(sciencePackItem)--resource.lua
    AddMapGen(sciencePackItem)--mapgen.lua
end

--for each item in data.raw
for k, v in pairs(data.raw.tool) do
    if (not v.leighzerburiedscienceDisabled) then 
        AddBuriedScience(v)--add a resource patch for it
    end
end