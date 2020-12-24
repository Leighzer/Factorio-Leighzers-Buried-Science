local resource_autoplace = require("resource-autoplace")

function AddResource(sciencePackItem)

  local order = "zzz-" .. sciencePackItem.name  
  if data.raw.tool[sciencePackItem.name] and data.raw.tool[sciencePackItem.name].order then
    order = "zzz-" .. data.raw.tool[sciencePackItem.name].order
  end

  local mapTintName = "white"  
  local hasStartingAreaPlacement = false
  
  -- read in customization data (if any)
  if (sciencePackItem.leighzerburiedscience) then
    if (sciencePackItem.leighzerburiedscience.mapTintName ~= nil) then
      mapTintName = sciencePackItem.leighzerburiedscience.mapTintName
    end
    if (sciencePackItem.leighzerburiedscience.hasStartingAreaPlacement ~= nil) then
      hasStartingAreaPlacement = sciencePackItem.leighzerburiedscience.hasStartingAreaPlacement
    end
  end

  local mapTint = leighzermods.tints["white"]
  if leighzermods.tints[mapTintName] then
    mapTint = leighzermods.tints[mapTintName]
  end

  scienceFileName = "__leighzerburiedscience__/graphics/entity/ore/glass-bottle.png" --use as a fallback
  if data.raw.tool[sciencePackItem.name] and data.raw.tool[sciencePackItem.name].icon then --if icon is available
    scienceFileName = data.raw.tool[sciencePackItem.name].icon --use that instead
  end
  
  local localisedName = ""
  if data.raw.tool[sciencePackItem.name] and data.raw.tool[sciencePackItem.name].localised_name then --if there is a localized name    
      localisedName = data.raw.tool[sciencePackItem.name].localised_name -- use the name that is programmed in
  else
      localisedName = {"item-name."..sciencePackItem.name} -- otherwise try pull the science pack name from locale
  end  

  local iconSize = 64  
  if data.raw.tool[sciencePackItem.name] and data.raw.tool[sciencePackItem.name].icon_size then
    iconSize = data.raw.tool[sciencePackItem.name].icon_size    
  else
    iconSize = 32    
  end
  local scale = 32 / iconSize

  local resourceName = "buried-"..sciencePackItem.name
  data:extend({   
    {      
      type = "resource",
      name = resourceName,
      localised_name = localisedName, 
      icon = scienceFileName,
      icon_size = iconSize,
      flags = {"placeable-neutral"},
      order=order,
      map_color = mapTint,--color used for ore patch when viewed from mini map
      minable =
      {     
        mining_particle = resourceName.."-particle",
        mining_time = 1,
        result = sciencePackItem.name,
      },
      collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
      selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
      autoplace = resource_autoplace.resource_autoplace_settings{
        name = resourceName,
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
      leighzermorphite = {
        disabled = true
      }
    },
  })

end

