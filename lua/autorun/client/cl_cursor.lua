
local targetCol = color_white

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

	targetCol = LerpColor(0.2,targetCol,color_white)
	surface.SetDrawColor(targetCol)
	surface.DrawRect(x,y,12,3)
	surface.DrawRect(x,y,3,12)
end

local function left(x,y,time)

	targetCol = LerpColor(0.2,targetCol,Color(162,62,62))
	surface.SetDrawColor(targetCol)
	surface.DrawRect(x,y,12,3)
	surface.DrawRect(x,y,3,12)
end

cursor.register(default,CURSOR_DEFAULT)
cursor.register(left,CURSOR_LEFT_CLICK)
