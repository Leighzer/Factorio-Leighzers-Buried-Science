if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzerburiedscience then
    leighzermods.leighzerburiedscience = {} 

    leighzermods.leighzerburiedscience.tints = {}
    leighzermods.leighzerburiedscience.tints["automation-science-pack"] = {r=219/255, g=50/255, b=50/255, a = 1} -- 219, 50, 50 these commented values are what I used for making the graphics mostly for my own reference
    leighzermods.leighzerburiedscience.tints["logistic-science-pack"] = {r=149/255, g=206/255, b=129/255, a = 1} --37.1, 64.1, 27.6
    leighzermods.leighzerburiedscience.tints["military-science-pack"] = {r=135/255, g=146/255, b=155/255, a = 1} --47.9, 51.3, 54.0
    leighzermods.leighzerburiedscience.tints["chemical-science-pack"] = {r=97/255, g=216/255, b=234/255, a = 1} --8.6,64.2,76.5
    leighzermods.leighzerburiedscience.tints["production-science-pack"] = {r=152/255, g=26/255, b=202/255, a = 1}--71.6,0.0,100
    leighzermods.leighzerburiedscience.tints["utility-science-pack"] = {r=208/255, g=177/255, b=20/255, a = 1}--71.6,60.9,6.9
    leighzermods.leighzerburiedscience.tints["space-science-pack"] = {r=222/255, g=222/255, b=222/255, a = 1}--57.3,57.3,57.3
    leighzermods.leighzerburiedscience.tints["advanced-logistic-science-pack"] = {r=1,g=0.1,b=1, a=1}--100, 0, 66.7
    
    leighzermods.leighzerburiedscience.excludeHighTechSciencesFromStartingArea = settings.startup["excludeHighTechSciencesFromStartingArea"].value
    leighzermods.leighzerburiedscience.infiniteScience = settings.startup["infiniteScience"].value
    leighzermods.leighzerburiedscience.isStartingAreaEnabled = {}

    if leighzermods.leighzerburiedscience.excludeHighTechSciencesFromStartingArea then
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["automation-science-pack"] = true
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["logistic-science-pack"] = true
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["military-science-pack"] = true
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["chemical-science-pack"] = true
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["production-science-pack"] = false
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["utility-science-pack"] = false
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["space-science-pack"] = false
        if mods["bobtech"] then
            leighzermods.leighzerburiedscience.isStartingAreaEnabled["advanced-logistic-science-pack"] = false
        end
    else
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["automation-science-pack"] = true
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["logistic-science-pack"] = true
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["military-science-pack"] = true
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["chemical-science-pack"] = true
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["production-science-pack"] = true
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["utility-science-pack"] = true
        leighzermods.leighzerburiedscience.isStartingAreaEnabled["space-science-pack"] = true
        if mods["bobtech"] then
            leighzermods.leighzerburiedscience.isStartingAreaEnabled["advanced-logistic-science-pack"] = true
        end
    end
end



