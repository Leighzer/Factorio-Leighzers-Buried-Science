
function AddResource(resourceName)
  
  hasStartingAreaPlacement = true
  if leighzermods.leighzerburiedscience.isStartingAreaEnabled[resourceName] == true or leighzermods.leighzerburiedscience.isStartingAreaEnabled[resourceName] == false  then
    hasStartingAreaPlacement = leighzermods.leighzerburiedscience.isStartingAreaEnabled[resourceName]
  end

  mapTint = {r=1,g=1,b=1,a=1}--pure white if not defined
  if leighzermods.leighzerburiedscience.tints[resourceName] then
    mapTint =  leighzermods.leighzerburiedscience.tints[resourceName]
  end

  scienceFileName = "__leighzerburiedscience__/graphics/entity/ore/glass-bottle.png" --use as a fallback
  if data.raw["tool"][resourceName] and data.raw["tool"][resourceName].icon then --if icon is available
    scienceFileName = data.raw["tool"][resourceName].icon --use that instead
  end
  
  newLocalisedPrototype = {}
  if data.raw["tool"][resourceName] and data.raw["tool"][resourceName].localised_name then --if there is a localized name    
    newLocalisedPrototype = data.raw["tool"][resourceName].localised_name -- use the name that they programmed in
  else
    newLocalisedPrototype = {"item-name."..resourceName} -- otherwise pull the science pack name from locale
  end

  data:extend({   
    {
    type = "resource",
    name = "buried-"..resourceName,
    localised_name = newLocalisedPrototype, 
    icon = scienceFileName,
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
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5
    },

    stage_counts = {1},
    stages =
      {
        sheet =
        {
          filename = scienceFileName,
          priority = "extra-high",
          size = 64,
          scale = 0.5,
          frame_count = 1,
          variation_count = 1,        
        }
      },
    }
  })
end

