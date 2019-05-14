function AddBuriedScience(sciencePackName)    
    AddParticle(sciencePackName)--particle.lua
    AddResource(sciencePackName)--resource.lua
    AddMapGen(sciencePackName)--mapgen.lua
end

function MakeScienceResourceInfinite(resource)
    resource.infinite = true
    resource.minimum = 50
    resource.normal = 250
    resource.infinite_depletion_amount = 1
    resource.resource_patch_search_radius = 12
end