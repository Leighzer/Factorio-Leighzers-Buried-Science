
function AddResource(resourceName)
  
  hasStartingAreaPlacement = true
  if leighzermods.leighzerburiedscience.isStartingAreaEnabled[resourceName] == true or leighzermods.leighzerburiedscience.isStartingAreaEnabled[resourceName] == false  then
    hasStartingAreaPlacement = leighzermods.leighzerburiedscience.isStartingAreaEnabled[resourceName]
  end

  mapTint = {1,1,1,1}--pure white if not defined
  if leighzermods.leighzerburiedscience.tints[resourceName] then
    mapTint =  leighzermods.leighzerburiedscience.tints[resourceName]
  end

  data:extend({   
    {
    type = "resource",
    name = "buried-"..resourceName,
    localisation_name = {"entity-name.buried-science-pack", resourceName},
    icon = "__base__/graphics/icons/"..resourceName..".png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="i",
    map_color = mapTint,--color used for ore patch when viewed from mini map
    minable =
    {     
      mining_particle = "buried-"..resourceName.."-particle",
      mining_time = 1,
      result = resourceName,
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "buried-"..resourceName,
      order = "x",
      base_density = 10,
      has_starting_area_placement = hasStartingAreaPlacement,
      resource_index = resource_autoplace.get_next_resource_index() + 64,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5
    },

    stage_counts = {80},
    stages =
      {
        sheet =
        {
          filename = "__base__/graphics/icons/"..resourceName..".png",
          priority = "extra-high",
          width = 32,
          height = 32,
          frame_count = 1,
          variation_count = 1,        
        }
      },
    }
  })
end

