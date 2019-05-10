
orderStart = "z-"
orderInt = 1

function AddMapGen(resourceName)
data:extend(
{

    {--autoplace-control = new game mapgen menu item to toggle ore generation options (frequency,size,richness,etc.)
        type = "autoplace-control",
        name = "buried-"..resourceName,
        richness = true,
        order = orderStart .. orderInt,
        category="resource",
        localisation_name = {"autoplace-control-names.buried-science-pack", resourceName}
    },
    {
    type = "noise-layer",
    name = "buried-"..resourceName,
    },
})
orderInt = orderInt + 1
end