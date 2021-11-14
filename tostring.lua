typeof = typeof or nil
main = nil

userdatas = {
	Axes = function(value)
		local result = ''
		local normalids = {'Back', 'Bottom', 'Front', 'Left', 'Right', 'Top'}
		local axisS = {'X', 'Y', 'Z'}
		for i, normalid in pairs(normalids) do
			if not value[normalid] then
				table.remove(normalids, i)
			end
		end
		for i, axis in pairs(axisS) do
			if not value[axis] then
				table.remove(axisS, i)
			end
		end

		for i, normalid in pairs(normalids) do
			if value[normalid] then
				result = result .. 'Enum.NormalId.' .. normalid
				if #normalids > 1 and i < #normalids then
					result = result .. ', '
				end
			end
		end
		if #axisS > 0 then
			result = result .. ', '
		end
		for i, axis in pairs(axisS) do
			if value[axis] then
				result = result .. 'Enum.Axis.' .. axis
				if #axisS > 1 and i < #axisS then
					result = result .. ', '
				end
			end
		end
		return ('Axes.new(%s)'):format(result)
	end,
	BrickColor = function(value)
		return ('BrickColor.new(%s)'):format(main(value.Name))
	end,
	CFrame = function(value)
		return ('CFrame.new(%s)'):format(tostring(value))
	end,
	Color3 = function(value)
		return ('Color3.fromRGB(%s)'):format(main({math.floor(value.R * 255), math.floor(value.G * 255), math.floor(value.B * 255)}))
	end,
	ColorSequence = function(value)
		return ('ColorSequence.new(%s)'):format(main(value.Keypoints, true))
	end,
	ColorSequenceKeypoint = function(value)
		return ('ColorSequenceKeypoint.new(%s)'):format(main({value.Time, value.Value}))
	end,
	Faces = function(value)
		local result = ''
		local normalids = {'Back', 'Bottom', 'Front', 'Left', 'Right', 'Top'}
		for i, normalid in pairs(normalids) do
			if not value[normalid] then
				table.remove(normalids, i)
			end
		end

		for i, normalid in pairs(normalids) do
			result = result .. 'Enum.NormalId.' .. normalid
			if #normalids > 1 and i < #normalids then
				result = result .. ', '
			end
		end
		return ('Faces.new(%s)'):format(result)
	end,
	Instance = function(value)
		local result = ''
		local object = value

		if object == nil or object == game or object == workspace then
			return tostring(object):lower()
		elseif object.Parent == game then
			return ('game:GetService\'%s\''):format(object.ClassName)
		elseif object == game.Players.LocalPlayer then
			return 'game:GetService\'Players\'.LocalPlayer'
		end

		repeat
			if object then
				if object == workspace then
					result = 'workspace' .. result
				elseif object.Parent == game then
					result = ('game:GetService\'%s\''):format(object.ClassName) .. result
				else
					result = ('[\'%s\']'):format(object.Name:gsub('\'', '\\\'')) .. result
				end
				
				object = object.Parent
			else
				result = '--[[nil]]' .. result
				object = game
			end
		until object == game

		return result
	end,
	NumberRange = function(value)
		return ('NumberRange.new(%s)'):format(main({value.Min, value.Max}))
	end,
	NumberSequence = function(value)
		return ('NumberSequence.new(%s)'):format(main(value.Keypoints, true))
	end,
	NumberSequenceKeypoint = function(value)
		return ('NumberSequenceKeypoint.new(%s)'):format(main({value.Time, value.Value, value.Envelope}))
	end,
	PathWaypoint = function(value)
		return ('PathWaypoint.new(%s)'):format(main({value.Position, value.Action}))
	end,
	PhysicalProperties = function(value)
		return ('PhysicalProperties.new(%s)'):format(main({value.Density, value.Friction, value.Elasticity, value.FrictionWeight, value.ElasticityWeight}))
	end,
	Ray = function(value)
		return ('Ray.new(%s)'):format(main({value.Origin, value.Direction}))
	end,
	Rect = function(value)
		return ('Rect.new(%s)'):format(main({value.Min, value.Max}))
	end,
	Region3int16 = function(value)
		return ('Region3in16.new(%s)'):format(main({value.Min, value.Max}))
	end,
	TweenInfo = function(value)
		return ('TweenInfo.new(%s)'):format(main({value.Time, value.EasingStyle, value.EasingDirection, value.RepeatCount, value.Reverses, value.DelayTime}))
	end,
	UDim = function(value)
		return ('UDim.new(%s)'):format(main({value.Scale, value.Offset}))
	end,
	UDim2 = function(value)
		return ('UDim2.new(%s)'):format(main({value.X, value.Y}))
	end,
	Vector2 = function(value)
		return ('Vector2.new(%s)'):format(main({value.X, value.Y}))
	end,
	Vector2int16 = function(value)
		return ('Vector2int16.new(%s)'):format(main({value.X, value.Y}))
	end,
	Vector3 = function(value)
		return ('Vector3.new(%s)'):format(main({value.X, value.Y, value.Z}))
	end,
	Vector3int16 = function(value)
		return ('Vector3int16.new(%s)'):format(main({value.X, value.Y, value.Z}))
	end,
}

datatypes = {
	string = function(value)
		return ('\'%s\''):format(tostring(value):gsub('\'', '\\\''))
	end,
	table = function(value, includecurly)
		local result = ''

		local index = 0
		local length = 0;for i,v in pairs(value) do length = length + 1 end;
		for i, v in pairs(value) do
			if type(v) == 'table' then
				v = main(v, true)
			else
				v = main(v)
			end
			index = index + 1
			if typeof(i) == 'number' then
				result = result .. v
			else
				result = result .. tostring(i) .. ' = ' .. v
			end
			if length > 1 and index < length then
				result = result .. ', '
			end
		end

		if includecurly then
			result = '{' .. result .. '}'
		end

		return result
	end,

}

main = function(value, includecurly)
	local oldtype = type
	local type = typeof(value)
	if datatypes[type] then
		return datatypes[type](value, includecurly)
	elseif userdatas[type] then
		return userdatas[type](value)
	end
	return tostring(value)
end

return {
	tostring = main,
	userdatas = userdatas,
	datatypes = datatypes,
}
