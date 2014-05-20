

--delimite le type de jeu pour le menu
gameType = 1

--background display initial
background = display.newImage ("soccer menu.png")
background.width = 320
background.height = 575
background.x = display.contentWidth / 2 
background.y = display.contentHeight / 2

--Function to swap game type
SwapBtn = display.newText("Hockey!", 33, 33, native.systemfont, 35)
SwapBtn:setTextColor( 200/255,100/255,50/255 )
SwapBtn.x = display.contentWidth / 2 + 80
SwapBtn.y = display.contentHeight / 2 - 240
SwapBtn:toFront()

--ball button
--ballbtn = display.newImage("ball.jpeg")

--START GAME button
playBtn = display.newImage("play button.jpg")
playBtn.x = display.contentWidth / 2
playBtn.y = 280

playBtn:addEventListener("tap", playBtn)
---------------------------------------------------------------------
--GAME TYPE SWAP
function SwapBtn:tap(event)
	
	--Change game
	if gameType == 1 then  
		gameType = 2	
		background:removeSelf()
	background = display.newImage ("hockey menu.png")
	else 
		gameType = 1
		background:removeSelf()
	background = display.newImage ("soccer menu.png")
	end
	
	background.width = 320
	background.height = 575
	background:toFront()
	SwapBtn.isVisible = true
	SwapBtn:toFront()
	background.x = display.contentWidth / 2
    background.y = display.contentHeight / 2
 	playBtn:toFront()
 end

 
SwapBtn:addEventListener("tap", SwapBtn)

function clearScreen()
	background:removeSelf()
	playBtn:removeSelf()
	SwapBtn:removeSelf()

end

-- clear entire screen
function playBtn:tap (event)


	GameQuestions()
	clearScreen()
end


function GameQuestions ()
	var1 = math.random(200)
	var2 = math.random(123)
	operator = math.random (263)

	if gameType == 1 then
	popup = display.newText("Soccer!", 75, 500, native.systemfont, 35)
else
	popup = display.newText("Hockey!", 75, 500, native.systemfont, 35)
end
	question1 = display.newText(var1 , 110,25, native.systemfont,35)
	question2 = display.newText(var2 , 210,25, native.systemfont,35)
	question3 = display.newText(operator , 160,25, native.systemfont,35)
end

