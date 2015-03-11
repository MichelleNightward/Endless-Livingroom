
Girl = class()

function Girl:init()
    -- you can accept and set parameters here

       
end

function Girl:drawL()
    if gMoveX < 380 or gMoveX > 620 then
        gMoveY = 60
    else
        gMoveY = 120
    end
    if gMoveX < 30 then
        gMoveX = WIDTH - 40
        show = true
    end
        
    if gMoveX > WIDTH - 30 then
        gMoveX = 40
        show = true
    end
    --print("test Girl:draw")
 
    pushMatrix()

    self.girlSprite = sprite("Documents:MichelleR", gMoveX, gMoveY)
    
    popMatrix()
end

function Girl:drawR()
    if gMoveX < 380 or gMoveX > 620 then
        gMoveY = 60
    else
        gMoveY = 120
    end
    if gMoveX < 30 then
        gMoveX = WIDTH - 40
        show = true
    end
        
    if gMoveX > WIDTH - 30 then
        gMoveX = 40
        show = true
    end
    --print("test Girl:draw")
 
    pushMatrix()

    self.girlSprite = sprite("Documents:Michelle", gMoveX, gMoveY)
    
    popMatrix()
end

function Girl:walkLoop()
        tween( 1.0, self.girlSprite, { x = 700 }, { easing = tween.easing.linear, 
                                          loop = tween.loop.pingpong } )
end