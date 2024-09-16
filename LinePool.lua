
--[[ global ]]
function CreateLinePool(parent, layer, subLayer)
	local function pool_OnCreate(self)
		return parent:CreateLine(nil, layer, nil, subLayer)
	end

	local function pool_OnRelease(self, line)
		line:Hide()
	end

	linePool = CreateObjectPool(pool_OnCreate, pool_OnRelease)
	return linePool
end
