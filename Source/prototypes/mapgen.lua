
orderStart = "z-"
orderInt = 1

function AddMapGen(resourceName)

newLocalisedPrototype = {}
if data.raw["tool"][resourceName] and data.raw["tool"][resourceName].localised_name then --if there is a localized name    
newLocalisedPrototype = data.raw["tool"][resourceName].localised_name -- use the name that is programmed in
else
newLocalisedPrototype = {"item-name."..resourceName} -- otherwise try pull the science pack name from locale
end

data:extend(
{

    {--autoplace-control = new game mapgen menu item to toggle ore generation options (frequency,size,richness,etc.)
        type = "autoplace-control",
        name = "buried-"..resourceName,
        richness = true,
        order = orderStart .. orderInt,
        category="resource",         
        localised_name = newLocalisedPrototype
    },
    {
    type = "noise-layer",
    name = "buried-"..resourceName,
    },
})
orderInt = orderInt + 1
end