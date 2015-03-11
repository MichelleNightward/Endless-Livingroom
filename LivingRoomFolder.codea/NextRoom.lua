NextRoom = class()

function NextRoom:init(x)
    -- you can accept and set parameters here
    self.x = x
end

function NextRoom:wait(continue, wait)
    continue = false
    waitTime = wait
    local timeTo = os.time() + 1
    while os.time() < timeTo do wait = wait - 1 end
    if wait == 0 then 
        continue = true
    end
    return continue
end

function NextRoom:draw()
    local timeTo = os.time() + 3
    if os.time() < timeTo then background(71, 95, 91, 81) end
    --while os.time() < timeTo do background(71, 95, 91, 81) end--wait = wait - 1 end
    -- Codea does not automatically call this method
end

function NextRoom:message()
    text("You're still here.", WIDTH/2, HEIGHT - 200)
    show = true
end

function NextRoom:touched(touch)
    -- Codea does not automatically call this method
end
