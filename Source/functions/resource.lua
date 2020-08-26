function AddResource(sciencePackItem)
  
  local resourceName = sciencePackItem.name

  local order = "zzz-" .. resourceName  
  if data.raw.tool[resourceName] and data.raw.tool[resourceName].order then
    order = "zzz-" .. data.raw.tool[resourceName].order
  end

  hasStartingAreaPlacement = sciencePackItem.leighzerburiedscienceStartingAreaEnabled or false  

  mapTint = leighzermods.tints["white"]
  if leighzermods.tints[sciencePackItem.leighzerburiedscienceMapTintName] then
    mapTint = leighzermods.tints[sciencePackItem.leighzerburiedscienceMapTintName]
  end

  scienceFileName = "__leighzerburiedscience__/graphics/entity/ore/glass-bottle.png" --use as a fallback
  if data.raw.tool[resourceName] and data.raw.tool[resourceName].icon then --if icon is available
    scienceFileName = data.raw.tool[resourceName].icon --use that instead
  end
  
  local localisedName = ""
  if data.raw.tool[resourceName] and data.raw.tool[resourceName].localised_name then --if there is a localized name    
      localisedName = data.raw.tool[resourceName].localised_name -- use the name that is programmed in
  else
      localisedName = {"item-name."..resourceName} -- otherwise try pull the science pack name from locale
  end  

  local iconSize = 64  
  if data.raw.tool[resourceName] and data.raw.tool[resourceName].icon_size then
    iconSize = data.raw.tool[resourceName].icon_size    
  else
    iconSize = 32    
  end
  local scale = 32 / iconSize

  data:extend({   
    {      
    type = "resource",
    name = "buried-"..resourceName,
    localised_name = localisedName, 
    icon = scienceFileName,
    icon_size = iconSize,
    flags = {"placeable-neutral"},
    order=order,
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
          size = iconSize,
          scale = scale,
          frame_count = 1,
          variation_count = 1,        
        }
      },
      leighzermorphiteDisabled = true, -- disable morphite to science pack recipes
    },
  })  
end

