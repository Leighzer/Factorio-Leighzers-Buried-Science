require("functions.resource")
require("functions.particle")
require("functions.mapgen")
require("functions.buried-science-builder")

--for each item in data.raw
for k, v in pairs(data.raw["tool"]) do
    if string.find(k,"%-science%-pack") and (not v.leighzerburiedscienceIgnore) then --if the name contains "science-pack" and we should not ignore the science pack
        AddBuriedScience(k)--add a resource patch for it
    end
end