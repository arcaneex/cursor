local cursorInfo = {}

for i=1, 12 do

	cursorInfo[i] = color_white
end

local function LerpColor(frac,from,to)
	local col = Color(
		Lerp(frac,from.r,to.r),
		Lerp(frac,from.g,to.g),
		Lerp(frac,from.b,to.b),
		Lerp(frac,from.a,to.a)
	)
	return col
end

local function default(x,y,time)

	for i=1, 12 do

		cursorInfo[i] = LerpColor(0.2,cursorInfo[i],color_white)
		surface.SetDrawColor(cursorInfo[i])
		surface.DrawRect(x+i,y,1,3)
		surface.DrawRect(x,y+i,3,1)
	end
end

local function left(x,y,time)

	for i=1, 12 do

		cursorInfo[i] = LerpColor(0.2,cursorInfo[i],Color(162,62,62))
		surface.SetDrawColor(cursorInfo[i])
		surface.DrawRect(x+i,y,1,3)
		surface.DrawRect(x,y+i,3,1)
	end
end

cursor.register(default,CURSOR_DEFAULT)
cursor.register(left,CURSOR_LEFT_CLICK)
