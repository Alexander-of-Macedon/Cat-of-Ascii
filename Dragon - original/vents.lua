function vents()
    
    if vexitanim == "left" then
        if cat_ventpos == 0 then
            cat.wayfacing = false
            vent_animation = true
            the_offset_of_all_things = -1800
            cat.x = 168
            the_offset_of_all_things1 = 415
            cat.y = 280
        elseif cat_ventpos == 2 then
            cat.wayfacing = false
            vent_animation = true
            the_offset_of_all_things = -4000
            cat.x = 168
            the_offset_of_all_things1 = 175
            cat.y = 280
        elseif cat_ventpos == 5 then
            cat.wayfacing = false
            vent_animation = true
            the_offset_of_all_things = -7900
            cat.x = 168
            the_offset_of_all_things1 = 0
            cat.y = 350
        elseif cat_ventpos == 8 then
            cat.wayfacing = false
            vent_animation = true
            the_offset_of_all_things = -8450
            cat.x = 168
            the_offset_of_all_things1 = 300
            cat.y = 100
        elseif cat_ventpos == 10 then
            cat.wayfacing = false
            vent_animation = true
            the_offset_of_all_things = -9800
            cat.x = 168
            the_offset_of_all_things1 = 0
            cat.y = 350
        end
    elseif vexitanim == "right" then
        if cat_ventpos == 4 then
            vent_animation = true
            the_offset_of_all_things = -4500
            cat.x = 168
            the_offset_of_all_things1 = 0
            cat.y = 350
        end
    end
    love.graphics.print(tostring(cat_ventpos),200)
    if vexitanim == "left" and moving_mountian <= 1 then
        love.graphics.setColor(0.9,0.9,0.9)
        jump_switc2 = true
        jump_progress = 0
        jump_switc3 = false
        jump_switch = true
        jump_progress2 = 0
        jump_grav = 0.3
        jump = true
        jump_input = 49
        ventsentrylog = true
        vent_animation = false
        vastored = nil
        vexitanim = false
        cat_ventpos = vastored
        moving_mountian = 20
        cat.canmoveleft = true
        cat.canmoveright = true
        stage = "cat"
    elseif vexitanim == "right" and moving_mountian <= 1 then
        love.graphics.setColor(0.9,0.9,0.9)
        jump_switc2 = true
        jump_progress = 0
        jump_switc3 = false
        jump_switch = true
        jump_progress2 = 0
        jump_grav = 0.3
        jump = true
        jump_input = 49
        ventsentrylog = true
        vent_animation = false
        vastored = nil
        vexitanim = false
        cat_ventpos = vastored
        cat.wayfacing = true
        moving_mountian = 20
        cat.canmoveleft = true
        cat.canmoveright = true
        stage = "cat"
    end

    if cat.frame == 7 or cat.frame == 8 or cat.frame == 9 or cat.frame == 10 or cat.frame == 11 or cat.frame == 12 or cat.frame == 13 then
        cat.frame = 1
    end
    if dialouge_talk == true then
        cat.frame = 13
    end
    love.graphics.setFont(gameFont)
    if frame_switch == true then
        intervaltobeused = os.clock()
        frame_switch = false
    end
    if intervaltobeused + 0.2 < os.clock() then
        if cat.frame ~= 7 then
            cat.frame = cat.frame + 1
        end
        if cat.frame == 6 then
            cat.frame = 0 
        end
        frame_switch = true
        if vent_animation == true then
            if cat.wayfacing == false and vexitanim ~= false then
                if vexitanim ~= "left" and vexitanim ~= "right" then
                    cat.wayfacing = true
                end
            end
                moving_mountian = moving_mountian - 4
            if moving_mountian < 3 then
                cat_ventpos = vastored
                vent_animation = false
            end
        else
            if vexitanim == false or vexitanim == true then
            moving_mountian = moving_mountian + 4
            end
        end

    end
    if ventsentrylog == true then
        love.graphics.print(tostring(cat.wayfacing))
        love.graphics.print("\t\t\t\t\t" .. tostring(moving_mountian))
        if moving_mountian >= 0 and moving_mountian < 5 then
            love.graphics.setColor(0,0,0)
        elseif moving_mountian >= 5 and moving_mountian < 10 then
            love.graphics.setColor(0.2,0.2,0.2)
        elseif moving_mountian >= 10 and moving_mountian < 15 then
            love.graphics.setColor(0.5,0.5,0.5)
        elseif moving_mountian >= 15 and moving_mountian <= 20 then
            love.graphics.setColor(0.7,0.7,0.7)
        elseif moving_mountian > 20 then
            love.graphics.setColor(0.9,0.9,0.9)
            cat.wayfacing = false
            if vexitanim == true then
                vexitanim = false
            end
        end
    end
    if cat_ventpos == 0 then
        love.graphics.print("<->",75,175 )  
    elseif cat_ventpos == 1 then
        love.graphics.print("<->",175, 175)
    elseif cat_ventpos == 2 then
        love.graphics.print("<->",75, 310)       
    elseif cat_ventpos == 3 then
        love.graphics.print("<->",360, 100)         
    elseif cat_ventpos == 4 then
        love.graphics.print("<->",360, 185)   
    elseif cat_ventpos == 5 then
        love.graphics.print("<->",550, 50) 
    elseif cat_ventpos == 6 then
        love.graphics.print("<->",550, 100)          
    elseif cat_ventpos == 7 then
        love.graphics.print("<->",610, 173) 
    elseif cat_ventpos == 8 then
        love.graphics.print("<->",685, 173) 
    elseif cat_ventpos == 9 then
        love.graphics.print("<->",470, 310) 
    elseif cat_ventpos == 10 then
        love.graphics.print("<->",530, 310) 
    elseif cat_ventpos == 11 then
        love.graphics.print("<->",315, 265) 
    end
    if vent_animation == true and cat.wayfacing == true or vexitanim == false  then
        love.graphics.setColor(0.9,0.9,0.9)
    end
    love.graphics.print("                                       |    |\n              _________________________|    |\n             /                               \\\n            /    ______      ____________     \\\n __________/    /      |    |            \\     \\______\n               /       |    |             \\            \n _______      /        |    |              |     _____\n        |    |                   __________|    |\n        |    |       _____      /               |\n       /    /             \\     |     __________|\n._____/    /         _     \\____|    |____\n'.        /           \\                   \n;________/             \\__________________\n'",65,50)

    love.graphics.setColor(0,0.9,0)
    if cat.frame == 0 then
        love.graphics.print(" /\\\n(' ) __\n \\_   _\"|-,__ \n ||/\"\"||/    '\"\"\n --\"  --\"",300,380)
        love.graphics.print("..",320,500)
    elseif cat.frame == 1 then
        love.graphics.print(" /\\\n(' ) __\n \\_   _\"|\"---,__\n ||/\"\"/|/\n --\" -\"-\"",300,380)
        love.graphics.print("....",320,500)
    elseif cat.frame == 2 then
        love.graphics.print(" /\\\n(' ) __\n \\_   _\"|-,__,--\n  /|\"\"/|/\n -\"-\" -\"-\"",300,380)
        love.graphics.print("......",320,500)
    elseif cat.frame == 3 then
        love.graphics.print(" /\\\n(' ) __\n \\_   _\"|-,--\"\"'\n ||/\"\"||/\n --\"  --\"",300,380)
        love.graphics.print("........",320,500)
    elseif cat.frame == 4 then
        love.graphics.print(" /\\\n(' ) __\n \\_   _\"|-,__,--\n |/ \"\"||/\n ~\"   --\"",300,380)
        love.graphics.print("......",320,500)
    elseif cat.frame == 5 then
        love.graphics.print(" /\\\n(' ) __\n \\_   _\"|---,__\n |/ \"\"|/\n ~\"  ~\"",300,380)
        love.graphics.print("....",320,500)
    end
    if ventsentrylog == false then
        love.graphics.setColor(0.9,0.9,0.9)
    end
end