local mainPage = action_wheel:newPage()
action_wheel:setPage(mainPage)

local action = mainPage:newAction():title("Model size"):item("minecraft:debug_stick"):setOnScroll(pings.modelSize)
local action = mainPage:newAction():title("Toggle head"):item("minecraft:player_head"):setOnLeftClick(pings.toggleHead)
