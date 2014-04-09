-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--background change
local background = display.newImage ("field.jpg")
backgroundType = 1
--bg display
backgroundDisplay = display.newText(backgroundType, 33, 33, native.systemfont, 35)

--button image example
button = display.newImage ("Icon-Small-50.png")
button.x = 160
button.y = 40

--ball button
--ballbtn = display.newImage("ball.jpeg")
--puck button
local puckbtn = display.newImage ("puck.jpg")
puckbtn.x = display.contentWidth / 2
puckbtn.y = display.contentHeight / 2
puckbtn:toFront()
puckbtn.isVisible = false

--title text
textObject = display.newText("MATHS-SPORTS!", 75, 75, native.systemfont, 35)
textObject: setTextColor(0,0,0)
textObject.x = 160
textObject.y = 75

function button:tap( event )
	local r = math.random (0 ,255)
	local g = math.random (0, 255)
	local b = math.random (0, 255)
	textObject:setFillColor(r/255, g/255, b/255)
	backgroundDisplay:setFillColor(r/255, g/255, b/255)

	--Change background
	if background.display == ("field.jpg") then  
		background.display = ("rink.jpg")
		backgroundType = 2
		backgroundDisplay = display.newText(backgroundType, 33, 33, native.systemfont, 35)
		background:toFront()
	else 
		background.display = ('field.jpg')
		backgroundType = 1
		background:toFront()
	end
	
	puckbtn = display.newImage ("puck.jpg")
	
	puckbtn.isVisible = true
	


	background = display.newImage ("rink.jpg")
	background:toFront()
	button:toFront()
	puckbtn:toFront()
	textObject:toFront()
	background.x = display.contentWidth / 2
    background.y = display.contentHeight / 2

    backgroundDisplay = display.newText(backgroundType, 33, 33, native.systemfont, 35)
 end



button:addEventListener("tap", button)

function puckbtn:tap (event)
	background = display.newImage ("play button.jpg")
end

puckbtn:addEventListener("tap", puckbtn)