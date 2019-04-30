local AskTextField = display.newText( "Put in your age bellow.", display.contentCenterX + 1 , display.contentCenterY - 1, native.systemFont, 15)
AskTextField.id = "AskTextField"
AskTextField:setFillColor( 255, 255, 255 )

local weekTextField = display.newText( "Day of the week.", display.contentCenterX + 1 , display.contentCenterY -220, native.systemFont, 15)
weekTextField.id = "weekTextField"
weekTextField:setFillColor( 255, 255, 255 )

local dowTextField = native.newTextField( display.contentCenterX + 1, display.contentCenterY - 160, 300, 75 )
dowTextField.id = "dowTextField"

local AgeTextField = native.newTextField( display.contentCenterX + 1, display.contentCenterY + 80, 300, 75 )
AgeTextField.id = "AgeTextField"



local calculateButton = display.newImageRect( "button.png", 200, 125 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY -50
calculateButton.id = "calculateButton"



local displayTextField = display.newText( "What do you have to do today", display.contentCenterX + 1 , display.contentCenterY +200, native.systemFont, 12 )
displayTextField.id = "displayTextField"
displayTextField:setFillColor( 255, 255, 255 )

local function calculateButtonTouch( event )

	
	local Age = tonumber(AgeTextField.text)
    local dow = dowTextField.text
  
	
	if ((Age >= 18) and (dow == "monday" or dow ==  "tuesday" or dow == "wendsday" or dow == "thursday" or dow == "friday")) then 
		displayTextField.text = "You Have Work!"

elseif ((Age >= 18) and (dow == "sunday" or day == "saturday")) then 
        displayTextField.text = "Relax you have dont work"


elseif ((Age >= 16) and (dow ==  "monday" or dow ==  "tuesday" or dow == "wendsday" or dow == "thursday" or dow == "friday")) then
        displayTextField.text = "You have school!"

elseif ((Age >= 16) and (dow ==  "sunday" or day == "saturday")) then 
        displayTextField.text = "Relax you have no school"

end
    return true

end

calculateButton:addEventListener( "touch", calculateButtonTouch )
