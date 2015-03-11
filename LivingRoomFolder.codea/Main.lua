-- LivingRoomSimple

-- Use this function to perform your initial setup
function setup()
    print("Hello World!")
    girl = Girl()
    gWidth = 20
    gHeight = 85
    gMoveX = 550
    gMoveY = 120
    gTouch = 0
    yesX = 120
    yesY = 500
    noX = 500
    noY = 500
    buttonW = 120
    buttonH = 120
    yes = false
    no = false
    yesNoButtons = false
    chosen = false
    direction = 1
    girlMove = false
    show = false
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    Surroundings:draw()
    if direction == 2 then
        Girl:drawR()
    elseif direction == 1 then
        Girl:drawL()
    end
    
    if gMoveX > WIDTH - 30 or gMoveX < 30 then
        NextRoom:draw()
    end
    if (show == true and gMoveX < 250) or
     (show == true and gMoveX > WIDTH - 250) then
        NextRoom:message()
    else
        show = false
    end
    --if gMoveX > 250 or gMoveX < WIDTH - 250 then
        --show = false
    --end
    
    if gTouch == 1 then
        Dialog:draw()
        textWrapWidth(90)
        text("Hey there!", gMoveX + 85, 220)
    end
    if gTouch == 2 then
        Dialog:draw()
        textWrapWidth(90)
        text("2", gMoveX + 85, 220)
    end
    
    if gTouch == 3 then
        Dialog:draw()
        textWrapWidth(90)
        text("3", gMoveX + 85, 220)
    end
    
    if gTouch >= 4 then
        Dialog:draw()
        yesNoButtons = true
        if yes == true then 
            Dialog:draw()
            textWrapWidth(90)
            text("4", gMoveX + 85, 220)
            Dialog:drawY()
        elseif no == true then
            Dialog:draw()
            textWrapWidth(85)
            text("4 choice 2", gMoveX + 85, 210)
            Dialog:drawN()
        else
            textWrapWidth(85)
            text("4 choice 0", gMoveX + 85, 210)
            Dialog:drawY()
            Dialog:drawN()
        end
        
    end
 
    -- This sets the line thickness
    strokeWidth(5)
    -- Do your drawing here
end

function touched(touch)

    -- Codea does not automatically call this method
    if touch.state ~= ENDED then
        if CurrentTouch.x < (gMoveX + gWidth / 2) + 10 and 
            CurrentTouch.x > (gMoveX - gWidth / 2) - 10 and 
            CurrentTouch.y < (gMoveY + gHeight / 2) + 20 and 
            CurrentTouch.y > gMoveY - gHeight / 2 then
            girlMove = true
            boyMove = false
            print "Hey there"
            gTouch = gTouch + 1
        end
        if girlMove then
            if touch.x > gMoveX then
                gMoveX = gMoveX + 2
                direction = 1
            else
                gMoveX = gMoveX - 2
                direction = 2
            end
        end
        
        if yesNoButtons == true and chosen == false and
            CurrentTouch.x < (yesX + buttonW / 2) + 10 and 
            CurrentTouch.x > (yesX - buttonW / 2) - 10 and 
            CurrentTouch.y < (yesY + buttonH / 2) + 20 and 
            CurrentTouch.y > yesY - buttonH / 2 then
            yes = true
            print "yes is true"
            chosen = true
        end
        
        if yesNoButtons == true and chosen == false and
            CurrentTouch.x < (noX + buttonW / 2) + 10 and 
            CurrentTouch.x > (noX - buttonW / 2) - 10 and 
            CurrentTouch.y < (noY + buttonH / 2) + 20 and 
            CurrentTouch.y > noY - buttonH / 2 then
            no = true
            print "no is true"
            chosen = true
        end
        
    print ("touched test" ,gMoveX,"and" ,gMoveY)
    --elseif touch.state == ENDED then
        --motionx = 0
    end
end