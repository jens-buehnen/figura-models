function events.entity_init()
	modelSize = config:load("modelSize")
	toggleHead = config:load("toggleHead")
	if modelSize == nil then
		modelSize = 1
		config:save("modelSize", modelSize)
	end
	if toggleHead == nil then
		toggleHead = true
		config:save("toggleHead", toggleHead)
	end
	pings.updateModel()
end
function events.tick() end
function events.render(delta, context) end
