Dialog = class()

function Dialog:draw()
    --print("test Girl:draw")
 
    pushMatrix()
    sprite("Planet Cute:SpeechBubble", gMoveX + 80, 230)
    
    popMatrix()
end

function Dialog:drawY()
    pushStyle()
    
    noSmooth()
    strokeWidth(3)
    stroke(255, 255, 255, 255)
    fill(55, 179, 75, 255)
    rect(yesX, yesY, 120, 120)
    fill(0, 0, 0, 255)
    text("Y", yesX + 60, yesY + 60)
    
    popStyle()    
end

function Dialog:drawN()
    pushStyle()
    
    noSmooth()
    strokeWidth(3)
    stroke(255, 255, 255, 255)
    fill(255, 0, 0, 255)
    rect(noX, noY, 120, 120)
    fill(0, 0, 0, 255)
    text("N", noX + 60, noY + 60)
    
    popStyle()    
end