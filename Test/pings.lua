function pings.modelSize(dir)
	local var = (math.clamp(math.round((modelSize + (dir / 40)) * 1000) / 1000, 0.8, 1.2))
	if var ~= modelSize then
		modelSize = var
		config:save("modelSize", modelSize)
		pings.updateModel()
		print("Model size:", modelSize)
	end
end

function pings.toggleHead()
	toggleHead = not toggleHead
	config:save("toggleHead", toggleHead)
	pings.updateModel()
	print("Set head visibility to:", toggleHead)
end

function pings.updateModel()
	models.model:setScale(modelSize)
	models.model.root.Head:setVisible(toggleHead)
end
