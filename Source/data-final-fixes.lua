require("prototypes.resource")
require("prototypes.particle")
require("prototypes.mapgen")
require("prototypes.buried-science-builder")

--for each item in data.raw
for k, v in pairs(data.raw["tool"]) do
    if string.find(k,"%-science%-pack") then --if the name contains "science-pack"
        AddBuriedScience(k)--add a resource patch for it
    end
end