Surroundings = class()
    

-- This function gets called once every frame
function Surroundings:draw()
    if gMoveX > WIDTH - 75 or gMoveX <= 75 then
       background(57, 96, 89, 81) 
    elseif (gMoveX > WIDTH - 100 and gMoveX <= WIDTH - 75) or
         (gMoveX < 100 and gMoveX >= 75) then
        background(79, 129, 120, 81) 
    elseif (gMoveX > WIDTH - 125 and gMoveX <= WIDTH - 100) or
         (gMoveX < 125 and gMoveX >= 100) then
       background(94, 162, 150, 81) 
    elseif (gMoveX > WIDTH - 150 and gMoveX <= WIDTH - 125) or
         (gMoveX < 150 and gMoveX >= 125) then
       background(99, 173, 160, 81) 
    else
        background(93, 191, 173, 81)
    end
    
    sprite("Documents:futonGif", 500, 80)
    sprite("Documents:CornerShelf", 700, 157)
    sprite("Documents:Hogwarts", 500, 300)
    sprite("Documents:BookShelf", 300, 157)

end


