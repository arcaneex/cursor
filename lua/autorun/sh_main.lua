if SERVER then

	AddCSLuaFile('client/cl_main.lua')
	AddCSLuaFile('client/cl_cursor.lua')
	return
end

cursor = {}

CURSOR_DEFAULT = 'default'
CURSOR_LEFT_CLICK = 'left_click'
CURSOR_RIGHT_CLICK = 'right_click'

function cursor.register(func,type)

	cursor[type] = func
end

function cursor.enable(bool)

	cursor.mouseEnabled = bool
end

local screenClicker = gui.EnableScreenClicker

function gui.EnableScreenClicker(bool)

	cursor.mouseEnabled = bool
	screenClicker(bool)
end
