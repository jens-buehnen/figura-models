function pings.modelSize(dir)
	local var = (math.clamp(math.round((modelSize + (dir / 20)) * 100) / 100, 0.8, 1.2))
	if var ~= modelSize then
		modelSize = var
		config:save("modelSize", modelSize)
		pings.updateModel()
		print("Model size:", modelSize)
	end
end

function pings.updateModel()
	models.model:setScale(modelSize)
end
