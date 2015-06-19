local function cursorDraw(force)

	if not force and not cursor.mouseEnabled then return end

	local left,right = input.IsMouseDown(MOUSE_LEFT),input.IsMouseDown(MOUSE_RIGHT)

	local x,y = gui.MousePos()
	if left and cursor['left_click'] then

		cursor['left_click'](x,y,CurTime())
	elseif right and cursor['right_click'] then

		cursor['right_click'](x,y,CurTime())
	elseif cursor['default'] then

		cursor['default'](x,y,CurTime())
	end
end

function cursor.draw()

	cursorDraw(true)
end

local function cursorThink()

	local hover = vgui.GetHoveredPanel()
	if not IsValid(hover) then return end
	
	hover:SetCursor('blank')
end

hook.Add('HUDPaint','Draw cursor',cursorDraw)
hook.Add('Think','Cursor think',cursorThink)
