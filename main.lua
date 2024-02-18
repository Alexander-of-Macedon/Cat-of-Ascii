function love.load()
    dialouge = {"A long time ago, a traveler was traversing the\nElder Mountians","Halfway through his trip, he encountered a \nterrible storm...","seeking shetler, the traveler found a cave \nand dashed into it","Hello traveller, how does it go?","I have been trapped here for melenia,\nby means of a seal","If thou aids me in a small task, you shall\nhave the cake","Will you aid me in this trifle?","...","No?","do you think you have a choice?","Now listen to me carefully","Very well, now listen to me carefully","The seal that holds me here can be broken, by \nclosing the book in the great hall","For this reason you will inhabit the mind of \na cat","now go and fufill your task","To control the cat, use the left and right arrow\nkeys to move. To jump forwards use the space key\n,and to jump up use the up arrow key","to navigate through the vents use the arrow keys,\nand to exit press space.","The buttons on the board control what vents are\nopen, to navigate use the arrow keys"}
    -- dialouge vars
    cstored = nil
    question = false
    choice = 3
    character_talk = false
    dialouge_finished = false
    dialouge_interval = 0
    dialouge_switch = true
    dialouge_switch2 = true
    dialouge_letter = 0
    current_dialouge = dialouge[dialouge_num]
    dialouge_talk = false
    dialouge_num = 1
    -- end of dialouge var
    -- cat game vars, there are going to be a lot of them
    frameinterval = nil
    frameiswitch = true
    frameiswitch2 = true
    frame_switch = true
    intervaljumpa = 0
    intervalplatjumped = "none"
    moving_mountian = 20
    boxmove = "none"
    
    Platform = {x1 = 0, x2 = 0, y = 0, properties = "none", limit = 10}
    function Platform:is_stepped_on (catx, caty)
        if catx > (self.x1 + the_offset_of_all_things) and catx < (self.x2 + the_offset_of_all_things) and caty >= self.y + (the_offset_of_all_things1) and caty < (self.y + the_offset_of_all_things1) + self.limit then
            return true
        else
            return false
        end
    end
    function Platform:new (o)
        o = o or {}
        setmetatable(o, self)
        self.__index = self
        return o
    end
    function platform_is_stepped ()
        local isstepped = nil
        if bedplatform:is_stepped_on (cat.x, cat.y) == false and floor:is_stepped_on (cat.x, cat.y) == false and drawerplatform:is_stepped_on (cat.x, cat.y) == false and shelf1:is_stepped_on (cat.x, cat.y) == false and shelf2:is_stepped_on (cat.x, cat.y) == false and shelf3:is_stepped_on (cat.x, cat.y) == false and shelf4:is_stepped_on (cat.x, cat.y) == false and facplat:is_stepped_on (cat.x, cat.y) == false and p:is_stepped_on (cat.x, cat.y) == false and bs1:is_stepped_on (cat.x, cat.y) == false and bs2:is_stepped_on (cat.x, cat.y) == false and bs3:is_stepped_on (cat.x, cat.y) == false and bs4:is_stepped_on (cat.x, cat.y) == false  and sidewaysb:is_stepped_on (cat.x, cat.y) == false and boxtop:is_stepped_on (cat.x, cat.y) == false and bs5:is_stepped_on (cat.x, cat.y) == false then
            isstepped = false
        else
            isstepped = true
        end
        return isstepped
    end





    box = {y = 0, x = 0, properties = "none", range1 = 0, range2 = 0}
    function box:new (o,p)
        Platform:new(p)
        o = o or {}
        setmetatable(o, self)
        self.__index = self
        return o
    end

    function box:is_touched (catx, caty)
        if caty <= (self.y + the_offset_of_all_things1 + 40) and caty >= (self.y + the_offset_of_all_things1 - 75)  and catx <= (self.x + the_offset_of_all_things) and catx >= (self.x + the_offset_of_all_things - 115) then
            return "l"
        elseif caty <= (self.y + the_offset_of_all_things1 + 40) and caty >= (self.y + the_offset_of_all_things1 - 75)  and catx >= (self.x + the_offset_of_all_things) and catx <= (self.x + the_offset_of_all_things + 115) then
            return "r"
        elseif caty >= (self.y + the_offset_of_all_things1 + 50) and caty <= (self.y + the_offset_of_all_things1 - 50) and caty >= (self.y + the_offset_of_all_things1 + 50) and caty <= (self.y + the_offset_of_all_things1 - 50) then
            return false
        end
    end
    box1 = {}
    boxtop = {}
    box:new (box1,boxtop)
    Platform:new(boxtop)
    box1.x = 8550
    box1.y = 370
    box1.range1 = 8600
    box1.range2 = 9000
    boxtop.x1 = box1.x - 70
    boxtop.x2 = box1.x + 70
    boxtop.y = 275
    boxtop.limit = 1000









    Wall = {x = 0, y1 = 0, y2 = 0, properties = "none", limit = 0}
    function Wall:is_touched (catx, caty)
        if self.properties ~= "right" and catx >= (self.x + the_offset_of_all_things - 145) and catx <= (self.x + the_offset_of_all_things + self.limit) and caty <= (self.y1 + the_offset_of_all_things1) and caty >= (self.y2 + the_offset_of_all_things1) then
            return "l"
        elseif self.properties ~= "left" and catx <= (self.x + the_offset_of_all_things - 145) and catx > (self.x + the_offset_of_all_things - 145 - self.limit) and caty <= (self.y1 + the_offset_of_all_things1) and caty >= (self.y2 + the_offset_of_all_things1) then
            return "r"
        else return false

        end
    end
    function Wall:new (o)
        o = o or {}
        setmetatable(o, self)
        self.__index = self
        return o
    end
    function wall_is_touched ()
        local isstepped = nil
        if w1:is_touched(cat.x, cat.y) == "l" or w2:is_touched(cat.x, cat.y) == "l" or w3:is_touched(cat.x, cat.y) == "l" or w4:is_touched(cat.x, cat.y) == "l" or md1:is_touched(cat.x, cat.y) == "l" or w5:is_touched(cat.x, cat.y) == "l" or w6:is_touched(cat.x, cat.y) == "l" or w7:is_touched(cat.x, cat.y) == "l" or w8:is_touched(cat.x, cat.y) == "l" or w9:is_touched(cat.x, cat.y) == "l" or w10:is_touched(cat.x, cat.y) == "l" or w11:is_touched(cat.x, cat.y) == "l" then
            isstepped = "l"
        elseif w1:is_touched(cat.x, cat.y) == "r" or w2:is_touched(cat.x, cat.y) == "r" or w3:is_touched(cat.x, cat.y) == "r" or w4:is_touched(cat.x, cat.y) == "r" or md1:is_touched(cat.x, cat.y) == "r" or w5:is_touched(cat.x, cat.y) == "r" or w6:is_touched(cat.x, cat.y) == "r" or w7:is_touched(cat.x, cat.y) == "r" or w8:is_touched(cat.x, cat.y) == "r" or w9:is_touched(cat.x, cat.y) == "r" or w10:is_touched(cat.x, cat.y) == "r" or w11:is_touched(cat.x, cat.y) == "r" then
            isstepped = "r"
        elseif w1:is_touched(cat.x, cat.y) == false and w2:is_touched(cat.x, cat.y) == false and w3:is_touched(cat.x, cat.y) == false and w4:is_touched(cat.x, cat.y) == false and md1:is_touched(cat.x, cat.y) == false and w6:is_touched(cat.x, cat.y) == false and w5:is_touched(cat.x, cat.y) == false and w7:is_touched(cat.x, cat.y) == false and w8:is_touched(cat.x, cat.y) == false and w9:is_touched(cat.x, cat.y) == false and w10:is_touched(cat.x, cat.y) == false and w11:is_touched(cat.x, cat.y) == false then
            isstepped = false
        end
        return isstepped
    end
    bedplatform = {}
    floor = {}
    drawerplatform = {}
    shelf1 = {}
    shelf2 = {}
    shelf3 = {}
    shelf4 = {}
    facplat = {}
    p = {}
    bs1 = {}
    bs2 = {}
    bs3 = {}
    bs4 = {}
    bs5 = {}
    sidewaysb = {}
    Platform:new(floor)
    floor.x1 = -1000
    floor.x2 = 12000
    floor.y = 350
    floor.limit = 900
    Platform:new(bedplatform)
    bedplatform.x1 = -900
    bedplatform.x2 = 580
    bedplatform.y = 170
    Platform:new(drawerplatform)
    drawerplatform.x1 = 660
    drawerplatform.x2 = 880
    drawerplatform.y = 120
    Platform:new(shelf1)
    shelf1.x1 = 1100
    shelf1.x2 = 1330
    shelf1.y = 90
    Platform:new(shelf2)
    shelf2.x1 = 1500
    shelf2.x2 = 1690
    shelf2.y = 60
    Platform:new(shelf3)
    shelf3.x1 = 1670
    shelf3.x2 = 2300
    shelf3.y = -130
    Platform:new(shelf4)
    shelf4.x1 = 1300
    shelf4.x2 = 1460
    shelf4.y = -40
    Platform:new(facplat)
    facplat.x1 = 3620
    facplat.x2 = 3950
    facplat.y = 186
    Platform:new(sidewaysb)
    sidewaysb.x1 = 5800
    sidewaysb.x2 = 5945
    sidewaysb.y = -110
    Platform:new(p)
    p.x1 = 4029
    p.x2 = 4250
    p.y = 135
    Platform:new(bs1)
    bs1.x1 = 4800
    bs1.x2 = 5730
    bs1.y = 235
    Platform:new(bs2)
    bs2.x1 = 4800
    bs2.x2 = 5730
    bs2.y = 120
    Platform:new(bs3)
    bs3.x1 = 4800
    bs3.x2 = 5730
    bs3.y = 5
    Platform:new(bs4)
    bs4.x1 = 4800
    bs4.x2 = 5730
    bs4.y = -110
    Platform:new(bs5)
    bs5.x1 = 9000
    bs5.x2 = 9170
    bs5.y =  197
    bs5.limit = 30
    w1 = {}
    Wall:new(w1)
    w1.x = -50
    w1.y1 = 400
    w1.y2 = -1000
    w2 = {}
    Wall:new(w2)
    w2.x = 5960
    w2.y1 = 1000
    w2.y2 = -109.999
    w2.properties = "right"
    w2.limit = 70
    w3 = {}
    Wall:new(w3)
    w3.x = 2200
    w3.y1 = 4000
    w3.y2 = -10000
    w4 = {}
    Wall:new(w4)
    w4.x = 4180
    w4.y1 = 4000
    w4.y2 = 145
    w5 = {}
    Wall:new(w5)
    w5.x = 2300
    w5.y1 = 4000
    w5.y2 = 100
    w6 = {}
    Wall:new(w6)
    w6.x = 4830
    w6.y1 = 280
    w6.y2 = -1000
    w7 = {}
    Wall:new(w7)
    w7.x = 4700
    w7.y1 = 4000
    w7.y2 = 400
    w8 = {}
    Wall:new(w8)
    w8.x = 5970
    w8.y1 = 1000
    w8.y2 = -100
    w9 = {}
    Wall:new(w9)
    w9.x = 7420
    w9.y1 = 1000
    w9.y2 = -100
    w10 = {}
    Wall:new(w10)
    w10.x = 9175
    w10.y1 = 2000
    w10.y2 = 250
    w10.limit = 25
    w11 = {}
    Wall:new(w11)
    w11.x = 8410
    w11.y1 = 1000
    w11.y2 = -1000
    w11.limit = 25
    md1 = {}
    Wall:new(md1)
    md1.x = 2900
    md1.y1 = 4000
    md1.y2 = -250
    cat = {}
    cat.x = 0
    cat.y = floor.y - 10
    cat.frame = 0
    cat.wayfacing = true
    cat.movement = 0
    cat.can_move = true
    cat.can_jump = true
    cat.moving = false
    cat.canmoveleft = true
    cat.canmoveright = true
    the_offset_of_all_things = 49
    the_offset_of_all_things1 = 0
    cat_object_movement1 = true
    gravity = true
    gravity_interval = nil
    jump = false
    jump2 = false
    jump_progress = 0
    jump_progress02 = 0.1
    jump_progress2 = 0
    jump_progress22 = 0
    jump_input = 40
    jump_input2 = 40
    jump_switch = true
    jump_switch02 = true
    jump_switc2 = true
    jump_switc22 = true
    jump_switc3 = true
    jump_switc32 = true
    jump_grav = 0.3
    ventsentrylog = true
    cat_ventpos = 0
    vent_animation = false
    vastored = nil
    vexitanim = false
    factory_animation = 0
    moving_object_animation = 0
    facswitch = false
    facplatstep = false
    mboardtimer = 0
    mboardswitch = false
    mbchoice = 0
    mbchoice1 = 1
    mbchoice2 = 0
    last_mod = "1"
    trapdoors_openingcut = 0
    doors_openingtime = 0
    flashofawakening = 0
    explanation_counter = 0
    prevention = true
    key = true 
    -- end of cat game vars, for now

    require "intro"
    require "dragon"
    require "board"
    require "vents"
    require "draw"
    require "cat"

    intro_num = 0
    intervaltobeused = 0
    space_counter = 0
    interval1 = 0
    caninterval =true
    dragon_action = "true"
    gameFont1 = love.graphics.newFont("orig_cour.ttf", 17)
    gameFont = love.graphics.newFont("orig_cour.ttf", 20)
    stage = "intro"
    love.graphics.setColor(0.9,0.9,0.9)
    current_colourr = 0
    current_colourb = 0
    current_coloury = 0
    enter_pulse = "false"
    marked = false
    


    vent_animation = true
    the_offset_of_all_things = -9600
    cat.x = 168
    the_offset_of_all_things1 = 300
    cat.y = 100

    love.graphics.setColor(0.9,0.9,0.9)
    jump_switc2 = true
    jump_progress = 0
    jump_switc3 = false
    jump_switch = true
    jump_progress2 = 0
    jump_grav = 0.3
    jump_input = 40
    jump = true
    jump_input = 49
    ventsentrylog = true
    vent_animation = false
    vastored = nil
    vexitanim = false
    cat_ventpos = vastored
    cat.wayfacing = true
    stage = "cat"
    audio_intro = love.audio.newSource("intro_drama.mp3","static")
    music1 = love.audio.newSource("27 - 1. Moderato.mp3","stream")
    music1:setLooping(true)
    --music1:play()
end

function love.update(dt)

    if stage == "cat" then
        if love.keyboard.isDown("right") == true and love.keyboard.isDown("space") == false then
            cat.moving = true
            if intervaltobeused + 0.2 < os.clock() then
                if cat_object_movement1 == true then
                    if cat.can_move ~= false and cat.canmoveright == true then
                        if box1:is_touched(cat.x, cat.y) == "l" then
                            box1.x = box1.x + 7
                        end
                        cat.x = cat.x + 7
                    end
                elseif cat_object_movement1 == false and cat.canmoveright == true and jump == false and jump2 == false and cat.can_move ~= false then
                    if box1:is_touched(cat.x, cat.y) == "l" then
                        box1.x = box1.x + 7
                    end
                    the_offset_of_all_things = the_offset_of_all_things - 7
                end
                if cat.can_move == true then
                    cat.wayfacing = true
                end
            end
        elseif love.keyboard.isDown("left") == true and love.keyboard.isDown("space") == false  and cat.canmoveleft == true then
            if intervaltobeused + 0.2 < os.clock() then
                if cat_object_movement1 == true then
                    if cat.can_move ~= false then
                        if box1:is_touched(cat.x, cat.y) == "r" then
                            box1.x = box1.x - 7
                        end
                        cat.x = cat.x - 7
                    end
                elseif cat_object_movement1 == false and cat.canmoveleft == true and jump == false and jump2 == false and cat.can_move ~= false then
                    if box1:is_touched(cat.x, cat.y) == "r" then
                        box1.x = box1.x - 7
                    end
                    the_offset_of_all_things = the_offset_of_all_things + 7
                end
                if cat.can_move == true then
                    cat.wayfacing = false
                end
            end
            cat.moving = true
        else
            cat.moving = false
        end


        if cat.canmoveright == true and cat.canmoveleft == true and love.keyboard.isDown("space") == false and love.keyboard.isDown("up") == true and jump == false and jump2 == false then
            if intervaltobeused + 0.2 < os.clock() and jump_input2 < 150 then
                jump_input2 = jump_input2 + 1
            end
        else
            if jump_input2 > 40 and love.keyboard.isDown("space") == false and jump == false and cat.can_move == true then
                if jump_switc22 == true then
                    jump2 = true
                    cat.y = cat.y - 10
                    jump_switc22 = false
                end
            end
        end
        if dialouge_talk ~= true and wall_is_touched() ~= "l" and love.keyboard.isDown("space") == true and love.keyboard.isDown("up") == false and jump == false and jump2 == false then
            if w10:is_touched(cat.x,cat.y) == "r" or w10:is_touched(cat.x,cat.y) ~= "r" and wall_is_touched() ~= "r" then
                if intervaltobeused + 0.2 < os.clock() and jump_input < 150 then
                    jump_input = jump_input + 1
                    cat.frame = 11
                end
            end
        else
            if jump_input > 40 and love.keyboard.isDown("space") == false and jump2 == false and cat.can_move == true then
                if jump_switc2 == true then
                    jump = true
                    cat.y = cat.y - 10
                    jump_switc2 = false
                end
            end
        end
    end
    if marked == true then
        enter_pulse = "false"
        marked = false
    end
    if caninterval == true then
        interval1 = os.clock()
        caninterval =false
    end
    if stage == "intro" or stage == "intro_dragon" or stage == "dragon" or stage == "cat" then
        if os.clock() >= 0.1 + interval1 then
            intro_num = intro_num + 1
            if dragon_action == "false" then
                dragon_action = "true"
            elseif dragon_action == "true" and character_talk == true then
                dragon_action = "false"
            end
            caninterval =true
        end
    end

end

function love.draw()
    if stage == "dragon" and intro_num >= 290 and dialouge_talk == false then
        dialouge_talk = true
    end
    if dialouge_talk == true then
        if dialouge_switch2 == true then
            dialouge_interval = os.clock()
            dialouge_switch2 = false
        end
        if dialouge_switch == true then
            current_dialouge = dialouge[dialouge_num]
            dialouge_letter = 0
            dialouge_switch = false
        end
        if question == true and dialouge_finished == true then
                love.graphics.print("\n\n\n\n 	    	no			              yes          ", 72, 410)
            if choice == 1 then
                love.graphics.print("\n\n\n\n		      			           >>", 72, 410)
            elseif choice == 0 then
                love.graphics.print("\n\n\n\n 	     >>", 72, 410)
            end
        end
        love.graphics.setFont(gameFont)
        love.graphics.print(intro_num)
        love.graphics.setColor(0.9,0.9,0.9)
        love.graphics.print(" .------~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~------.", 72, 400)
        love.graphics.print("\n/						                           \\", 72, 400)
        love.graphics.print("\n\n|						                           |", 72, 400)
        love.graphics.print("\n\n\n|						                           |", 72, 400)
        love.graphics.print("\n\n\n\n\\						                           /", 72, 400)
        love.graphics.print("\n\n\n\n\n '-----~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~------'", 72, 400)
        love.graphics.print("\n" .. string.sub(current_dialouge,0,dialouge_letter), 100, 400)

        if string.len(current_dialouge) <= dialouge_letter then
            character_talk = false
            dialouge_finished = true
        elseif string.len(current_dialouge) >= dialouge_letter then
            if dialouge_interval + 0.015 <= os.clock() then
                character_talk = true
                dialouge_letter = dialouge_letter + 1
                dialouge_switch2 = true
            end
        end

        love.graphics.setColor(current_colourr,current_colourb,current_coloury)
    end
    if space_counter == 1 and dialouge_num < 16 then
        space_counter = 0
        if dialouge_num == 11 and cstored == 0 then
            dialouge_num = 13
        else
            dialouge_num = dialouge_num + 1
        end
        dialouge_switch = true
        dialouge_finished = false
        if dialouge_num == 7 then
            question = true
        elseif dialouge_num == 7 + 1 then
            question = false
        end
        dialouge_talk = true
    end
    if stage == "intro" then
        intro()
    elseif stage == "intro_dragon" or stage == "dragon" then
        dragon()
    elseif stage == "cat" then
        cat_game()
    elseif stage == "vents" then
        vents()
    elseif stage == "gb" then
    love.graphics.setColor(0.9,0.9,0.9)
    board()
    end
    if explanation_counter == 0 and stage == "cat" and cat.x - the_offset_of_all_things > 200 then
        dialouge_num = 16
        dialouge_talk = true
        explanation_counter = explanation_counter + 1
    elseif explanation_counter == 1 and stage == "vents" then
        dialouge_num = 17
        space_counter = 0
        dialouge_switch = true
        dialouge_talk = true
        explanation_counter = explanation_counter + 1
    elseif  explanation_counter == 2 and stage == "gb" then
        dialouge_num = 18
        space_counter = 0
        dialouge_switch = true
        dialouge_talk = true
        explanation_counter = explanation_counter + 1
    end
    if prevention == false then
        dialouge_talk = false
        prevention = true
    end
    love.graphics.print("\t\t\t\t\t" .. tostring(cat.canmoveright))

end
function love.keypressed(key)
    if key == "space" then
        if dialouge_finished == true and stage ~= "intro" then
            if space_counter == 0 then
                space_counter = 1
                if dialouge_num == 14 then
                    stage = "cat"
                    cstored = nil
                    question = false
                    choice = 3
                    character_talk = false
                    dialouge_finished = false
                    dialouge_interval = 0
                    dialouge_switch = true
                    dialouge_switch2 = true
                    dialouge_letter = 0
                    current_dialouge = dialouge[dialouge_num]
                    dialouge_talk = false
                    dialouge_num = 1
                end
                if prevention == true then
                    prevention = false
                end
            end
            dialouge_finished = false
        end
        if stage == "vents" and moving_mountian > 10 and dialouge_talk ~= true then
            if cat_ventpos == 0 then
                if mbchoice1 == 0 or mbchoice2 == 0 then
                    moving_mountian = 20
                    vexitanim = "left"
                end
            elseif cat_ventpos == 2 then
                moving_mountian = 20
                vexitanim = "left"
            elseif cat_ventpos == 4 then
                --if mbchoice1 == 2 or mbchoice2 == 2 then
                    moving_mountian = 20
                    vexitanim = "right"
                --end
            elseif cat_ventpos == 5 then
                --if mbchoice1 == 2 or mbchoice2 == 2 then
                    moving_mountian = 20
                    vexitanim = "left"
                --end
            elseif cat_ventpos == 8 then
                --if mbchoice1 == 2 or mbchoice2 == 2 then
                    moving_mountian = 20
                    vexitanim = "left"
                --end
            elseif cat_ventpos == 10 then
                --if mbchoice1 == 2 or mbchoice2 == 2 then
                    moving_mountian = 20
                    vexitanim = "left"
                --end
            end
        elseif stage == "gb" then
            if mbchoice == 7 then
                mboardtimer = intro_num
                vent_animation = true
                moving_mountian = 60
            elseif last_mod == "1" then
                if mbchoice2 ~= mbchoice and mbchoice1 ~= mbchoice then
                    mbchoice2 = mbchoice
                    last_mod = "2"
                end
            elseif last_mod == "2" then
                if mbchoice2 ~= mbchoice and mbchoice1 ~= mbchoice then
                    mbchoice1 = mbchoice
                    last_mod = "1"
                end
            end
        end
    elseif key == "up" then
        if question == true then
            if choice == 1 then
                choice = choice - 1
            end
        end
        if stage == "vents" and moving_mountian > 10 and vexitanim ~= true then
            moving_mountian = 20
            if cat_ventpos == 2 then
                vastored = 1
                vent_animation = true
            elseif cat_ventpos == 4 then
                vastored = 3
                vent_animation = true
            elseif cat_ventpos == 6 then
                vastored = 5
                vent_animation = true
            elseif cat_ventpos == 9 then
                vastored = 7
                vent_animation = true
            elseif cat_ventpos == 7 then
                vastored = 6
                vent_animation = true
            end
        end
    elseif key == "down" then
        if question == true then
            if choice == 0 then
                choice = choice + 1
            end
        end
        if stage == "vents" and moving_mountian > 10 and vexitanim ~= true then
            moving_mountian = 20
            if cat_ventpos == 1 then
                vastored = 2
                vent_animation = true
            elseif cat_ventpos == 3 then
                vastored = 4
                vent_animation = true
            elseif cat_ventpos == 5 then
                vastored = 6
                vent_animation = true
            elseif cat_ventpos == 7 then
                vastored = 9
                vent_animation = true
            elseif cat_ventpos == 6 then
                vastored = 7
                vent_animation = true
            end
        end
    elseif key == "left" then
        if question == true then
            if choice == 1 then
                choice = choice - 1
            end
        end
        if stage == "vents" and moving_mountian > 10 and vexitanim ~= true then
            moving_mountian = 20
            if cat_ventpos == 1 then
                vastored = 0
                vent_animation = true
            elseif cat_ventpos == 6 then
                vastored = 3
                vent_animation = true
            elseif cat_ventpos == 8 then
                vastored = 7
                vent_animation = true
            elseif cat_ventpos == 10 then
                vastored = 9
                vent_animation = true
            elseif cat_ventpos == 3 then
                vastored = 1
                vent_animation = true
            elseif cat_ventpos == 9 then
                vastored = 11
                vent_animation = true
            end
        elseif stage == "gb" and mbchoice > 0 then
            mbchoice = mbchoice - 1
        end
    elseif key == "right" then
        if question == true then
            if choice == 0 then
                choice = choice + 1
            end
        end
        if stage == "vents" and moving_mountian > 10 and vexitanim ~= true then
            moving_mountian = 20
            if cat_ventpos == 0 then
                vastored = 1
                vent_animation = true
            elseif cat_ventpos == 3 then
                vastored = 6
                vent_animation = true
            elseif cat_ventpos == 7 then
                vastored = 8
                vent_animation = true
            elseif cat_ventpos == 9 then
                vastored = 10
                vent_animation = true
            elseif cat_ventpos == 1 then
                vastored = 3
                vent_animation = true
            elseif cat_ventpos == 11 then
                vastored = 9
                vent_animation = true
            end
        elseif stage == "gb" and mbchoice < 7 then
            mbchoice = mbchoice + 1
        end
    end
end