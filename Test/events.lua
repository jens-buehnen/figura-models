function events.entity_init()
	modelSize = config:load("modelSize")
	if modelSize == nil then
		config:save("modelSize", 1)
	end
	pings.updateModel()
end
function events.tick() end
function events.render(delta, context) end
