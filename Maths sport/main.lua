-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--background change
local background = display.newImage ("field.jpg")
background.x = display.contentWidth / 2
background.y = display.contentHeight / 2

--button image example
local button = display.newImage ("Icon-Small-50.png")
button.x = 160
button.y = 40

--puck button
local puckbtn = display.newImage ("puck.jpg")
puckbtn.x = display.contentWidth / 2
puckbtn.y = display.contentHeight / 2
puckbtn.isVisible = False


--title text
local textObject = display.newText("MATHS-SPORTS!", 75, 75, native.systemfont, 35)
textObject: setTextColor(0,0,0)
textObject.x = 160
textObject.y = 75

function button:tap( event )
	local r = math.random (0 ,255)
	local g = math.random (0, 255)
	local b = math.random (0, 255)
	textObject:setFillColor(r/255, g/255, b/255)
	puckbtn.isVisible = True
	background.isVisible = False
end



button:addEventListener("tap", button)

function puckbtn:tap (event)
	background = display.newImage ("rink.jpg")
end

puckbtn:addEventListener("tap", puckbtn)