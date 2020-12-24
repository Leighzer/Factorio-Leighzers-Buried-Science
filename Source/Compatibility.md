# README
This is a small doc to help other modders add compatibility with Leighzer's Buried Science.

# Quick Guide
This mod examines the data.raw.tool table and creates resource patches in the data-updates stage. It reuses the science pack icon your science pack has. 

The map tint for this resource patch must be supplied by YOU. See below for all fields you can supply to customize the resource creator.

# Customization
Here are a set of optional fields that can be set on the data.raw.tool[sciencePackName].leighzerburiedscience table to override the resource creator:
disabled - Set to true to have the dynamic resource creator skip this science pack entirely. (No resource will be added)
mapTintName - Set this to a tint name that is in leighzermods.tints to set the map color of the resource.
startingAreaEnabled - Set this to enable/disable the resource patch from being in the starting area.

# Defaults
If no values are found, the following defaults will be resorted to:
disabled : false
mapTintName : "white"
startingAreaEnabled : false

# Thank You
If you have any questions or issues please open a discussion on the mod portal!