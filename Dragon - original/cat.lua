function cat_game()
    boxtop.x1 = box1.x - 50
    boxtop.x2 = box1.x + 50
    if the_offset_of_all_things == -8450 and the_offset_of_all_things1 == 300 then
        jump = false
        jump_switc3 = true
    end
    
    if box1.x < box1.range1 and box1:is_touched(cat.x, cat.y) == "r" then
        cat.canmoveleft = false
        boxmove = "l"

    elseif box1.x > box1.range2 and box1:is_touched(cat.x, cat.y) == "l" then
        cat.canmoveright = false
        boxmove = "r"
    elseif w10:is_touched(cat.x,cat.y) ~= "r" then
        boxmove = "none"
    end
    
    if cat.x > (1990 + the_offset_of_all_things) and cat.x < (2300 + the_offset_of_all_things) and cat.y <= -125 + (the_offset_of_all_things1) and cat.y > (-130 + the_offset_of_all_things1) - 100 then
        cat_ventpos = 0
        if doors_openingtime + 1 < intro_num then
            moving_mountian = moving_mountian - 4
            doors_openingtime = intro_num
        end
        cat.canmoveleft = false
        cat.canmoveright = false
        if moving_mountian < 1 then
            stage = "vents"
            cat.wayfacing = false
        end
        vexitanim = true
    elseif cat.x > (4190 + the_offset_of_all_things) and cat.x < (4300 + the_offset_of_all_things) and cat.y <= 225 + (the_offset_of_all_things1) and cat.y > (-130 + the_offset_of_all_things1) - 100 then
        if moving_mountian < 1 then
            stage = "vents"
            cat.wayfacing = false
        end
        cat.canmoveleft = false
        cat.canmoveright = false
        if doors_openingtime + 1 < intro_num then
            moving_mountian = moving_mountian - 4
            doors_openingtime = intro_num
        end
        cat_ventpos = 2
        vexitanim = true
    elseif cat.x > (4560 + the_offset_of_all_things) and cat.x < (4640 + the_offset_of_all_things) and cat.y >= 280 + (the_offset_of_all_things1) and cat.y > (-130 + the_offset_of_all_things1) - 100 then
        if doors_openingtime + 1 < intro_num then
            moving_mountian = moving_mountian - 4
            doors_openingtime = intro_num
        end
        cat.canmoveleft = false
        cat.canmoveright = false
        if moving_mountian < 1 then
            stage = "vents"
            cat.wayfacing = false
        end
        cat_ventpos = 4
        vexitanim = true
    elseif cat.x > (8150 + the_offset_of_all_things) and cat.x < (8180 + the_offset_of_all_things) then
        if moving_mountian < 1 then
            stage = "vents"
            cat.wayfacing = false
        end
        cat.canmoveleft = false
        cat.canmoveright = false
        if doors_openingtime + 1 < intro_num then
            moving_mountian = moving_mountian - 4
            doors_openingtime = intro_num
        end
        cat_ventpos = 5
        vexitanim = true
    elseif cat.x > (9990 + the_offset_of_all_things) and cat.x < (10010 + the_offset_of_all_things) then
        if moving_mountian < 1 then
            stage = "vents"
            cat.wayfacing = false
        end
        cat.canmoveleft = false
        cat.canmoveright = false
        if doors_openingtime + 1 < intro_num then
            moving_mountian = moving_mountian - 4
            doors_openingtime = intro_num
        end
        cat_ventpos = 10
        vexitanim = true
    end
    love.graphics.print(tostring(cat.y + the_offset_of_all_things1))
    if cat.x > (9160 + the_offset_of_all_things) and cat.x < (9250 + the_offset_of_all_things) and cat.y + the_offset_of_all_things1 > 350 and cat.y + the_offset_of_all_things1 < 360 then
        key = false
    end
    if cat.x > (2840 + the_offset_of_all_things) and cat.x < (3090 + the_offset_of_all_things) and cat.y >= (340 +the_offset_of_all_things1) then
        facplatstep = true
    end
    if facplatstep == true then
        if md1.y2 < 360 then
            md1.y2 = md1.y2 + 1
        end
    end
    if cat.x > (2550 + the_offset_of_all_things) and cat.x < (2800 + the_offset_of_all_things) and cat.y >= (340 +the_offset_of_all_things1) then
        if mboardswitch == false then
            mboardtimer = intro_num
            mboardswitch = true
        end

        if mboardtimer + 40 < intro_num then
            if doors_openingtime + 1 < intro_num then
                moving_mountian = moving_mountian - 4
                doors_openingtime = intro_num
            end
            if moving_mountian < 1 then
                stage = "gb"
                moving_mountian = 35
            end
        end
    else
        mboardswitch = false
    end
    if cat.x - the_offset_of_all_things > 6510 and cat.x - the_offset_of_all_things < 6600 then
        jump = false
        jump_switc3 = true
        cat.can_move = false
        cat.canmoveleft = false
        cat.canmoveright = false
        if doors_openingtime ~= intro_num then
            trapdoors_openingcut = trapdoors_openingcut + 1
            doors_openingtime = intro_num
        end
    end


    if cat.y <  80 and intervaltobeused + 0.2 < os.clock() then
        the_offset_of_all_things1 = the_offset_of_all_things1 + 5
        cat.y = cat.y + 5
    elseif cat.y > 360 and intervaltobeused + 0.2 < os.clock() then
        the_offset_of_all_things1 = the_offset_of_all_things1 - 5
        cat.y = cat.y - 5
    end

    if jump == false and jump2 == false and platform_is_stepped () == false then
        gravity = true
    else
        gravity = false
        if floor:is_stepped_on(cat.x, cat.y) then
            cat.y = floor.y + the_offset_of_all_things1
        elseif bedplatform:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = bedplatform.y + the_offset_of_all_things1
        elseif drawerplatform:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = drawerplatform.y + the_offset_of_all_things1
        elseif shelf1:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = shelf1.y + the_offset_of_all_things1
        elseif shelf2:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = shelf2.y + the_offset_of_all_things1
        elseif shelf3:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = shelf3.y + the_offset_of_all_things1
        elseif shelf4:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = shelf4.y + the_offset_of_all_things1
        elseif facplat:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = facplat.y + the_offset_of_all_things1
        elseif p:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = p.y + the_offset_of_all_things1
        elseif bs1:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = bs1.y + the_offset_of_all_things1
        elseif bs2:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = bs2.y + the_offset_of_all_things1
        elseif bs3:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = bs3.y + the_offset_of_all_things1
        elseif bs4:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = bs4.y + the_offset_of_all_things1
        elseif sidewaysb:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = sidewaysb.y + the_offset_of_all_things1
        elseif boxtop:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = boxtop.y + the_offset_of_all_things1
        elseif bs5:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
            cat.y = bs5.y + the_offset_of_all_things1
        end
    end
    if gravity == true then
        cat.can_move = false
        if intervaltobeused + 0.2 < os.clock() then
           cat.y = cat.y + 6.5
        end
        cat.frame = 7
    else
        if cat.frame == 7 then
            cat.frame = 0
        elseif cat.can_move == false and jump == false and jump2 == false and trapdoors_openingcut == 0 then
            cat.can_move = true
        end
    end

    if jump == true and jump2 == false then
        cat.can_move = false
        if intervaltobeused + 0.2 < os.clock() then
            if jump_progress > 0 then
                jump_progress2 = jump_progress2 - jump_progress
                if cat.wayfacing == false then
                    if cat.canmoveright == true and cat.canmoveleft == true or boxmove == "r" or boxmove == "l" then
                        if cat_object_movement1 == false then
                            the_offset_of_all_things = the_offset_of_all_things - 0.06 * jump_progress2  * (jump_input/100) - 0.2
                    
                        else
                            cat.x = cat.x + 0.06 * jump_progress2  * (jump_input/100) - 0.2
                        end
                    end
                elseif cat.wayfacing == true then
                    if cat.canmoveright == true and cat.canmoveleft == true or boxmove == "l" or boxmove == "r" then
                    if cat_object_movement1 == false then
                        the_offset_of_all_things = the_offset_of_all_things + 0.06 * jump_progress2  * (jump_input/100) - 0.2
                    else
                        cat.x = cat.x - 0.06 * jump_progress2  * (jump_input/100) - 0.2
                    end
                end
                end
            else
                jump_progress2 = jump_progress2 - jump_progress
                if cat.wayfacing == false then
                    if cat.canmoveright == true and cat.canmoveleft == true or boxmove == "r" or boxmove == "l" then
                    if cat_object_movement1 == false then
                        the_offset_of_all_things = the_offset_of_all_things - 0.06 * jump_progress2  * (jump_input/100) - 0.2
                    else
                        cat.x = cat.x + 0.06 * jump_progress2  * (jump_input/100) - 0.2
                    end
                end
                elseif cat.wayfacing == true then
                    if cat.canmoveright == true and cat.canmoveleft == true or boxmove == "r" or boxmove == "l" then
                    if cat_object_movement1 == false then
                        the_offset_of_all_things = the_offset_of_all_things + 0.06 * jump_progress2  * (jump_input/100) - 0.2
                    else
                        cat.x = cat.x - 0.06 * jump_progress2  * (jump_input/100) - 0.2
                    end
                end
                end
            end
            if jump_progress > 0.8 then
                cat.frame = 8
            elseif jump_progress < 0.8 and jump_progress > -3 then
                cat.frame = 9
            elseif jump_progress < -3 then
                cat.frame = 10
            end
            jump_grav = jump_grav - 0.012
            jump_progress = jump_progress + jump_grav
            cat.y = cat.y - jump_progress / 2.7
            if platform_is_stepped () then
                if floor:is_stepped_on(cat.x, cat.y) then
                    cat.y = floor.y + the_offset_of_all_things1
                elseif bedplatform:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bedplatform.y + the_offset_of_all_things1
                elseif drawerplatform:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = drawerplatform.y + the_offset_of_all_things1
                elseif shelf1:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = shelf1.y + the_offset_of_all_things1
                elseif shelf2:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = shelf2.y + the_offset_of_all_things1
                elseif shelf3:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = shelf3.y + the_offset_of_all_things1
                elseif shelf4:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = shelf4.y + the_offset_of_all_things1
                elseif facplat:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = facplat.y + the_offset_of_all_things1
                elseif p:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = p.y + the_offset_of_all_things1
                elseif bs1:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bs1.y + the_offset_of_all_things1
                elseif bs2:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bs2.y + the_offset_of_all_things1
                elseif bs3:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bs3.y + the_offset_of_all_things1
                elseif bs4:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bs4.y + the_offset_of_all_things1
                elseif sidewaysb:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = sidewaysb.y + the_offset_of_all_things1
                elseif boxtop:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = boxtop.y + the_offset_of_all_things1
                elseif bs5:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bs5.y + the_offset_of_all_things1
                end
                
                jump_switc3 = true
                jump = false
            elseif jump_grav <= -0.6 and jump_progress2 >= 11.1 then
                jump_switc3 = true
                jump = false    
            end
        end
    elseif jump == false then
        if jump_switc3 == true then
            cat.frame = 1
            jump_switc2 = true
            jump_progress = 0
            jump_switc3 = false
            jump_switch = true
            jump_progress2 = 0
            jump_grav = 0.3
            jump_input = 40
            if gravity ~= true and trapdoors_openingcut == 0 then
                cat.can_move = true
            end
            if platform_is_stepped () then
                if floor:is_stepped_on(cat.x, cat.y) then
                    cat.y = floor.y + the_offset_of_all_things1
                elseif bedplatform:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bedplatform.y + the_offset_of_all_things1
                elseif drawerplatform:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = drawerplatform.y + the_offset_of_all_things1
                elseif shelf1:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = shelf1.y + the_offset_of_all_things1
                elseif shelf2:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = shelf2.y + the_offset_of_all_things1
                elseif shelf3:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = shelf3.y + the_offset_of_all_things1
                elseif shelf4:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = shelf4.y + the_offset_of_all_things1
                elseif facplat:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = facplat.y + the_offset_of_all_things1
                elseif p:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = p.y + the_offset_of_all_things1
                elseif bs1:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bs1.y + the_offset_of_all_things1
                elseif bs2:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bs2.y + the_offset_of_all_things1
                elseif bs3:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bs3.y + the_offset_of_all_things1
                elseif bs4:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bs4.y + the_offset_of_all_things1
                elseif sidewaysb:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = sidewaysb.y + the_offset_of_all_things1
                elseif boxtop:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = boxtop.y + the_offset_of_all_things1
                elseif bs5:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                    cat.y = bs5.y + the_offset_of_all_things1
                end
            end
        end
    end







    if jump == false and jump2 == true then
        cat.can_move = false

        if intervaltobeused + 0.2 < os.clock() then
            if jump_progress02 > 0 then
                jump_progress22 = jump_progress22 - jump_progress02
                cat.y = cat.y + 0.5 * jump_progress22 / 150
            else
                jump_progress22 = jump_progress22 - jump_progress02 
                if 0.5 * jump_progress22 / 150 < -5 then
                    cat.y = cat.y + 5
                else
                    cat.y = cat.y + 0.5 * jump_progress22 / 150
                end

            end
            if jump_progress02 > 0.8 then
                cat.frame = 13
            elseif jump_progress02 < 0.8 and jump_progress02 > -3 then
                cat.frame = 13
            elseif jump_progress02 < -3 then
                cat.frame = 13
            end
            jump_grav = jump_grav - 0.013
            jump_progress02 = jump_progress02 + jump_grav
            cat.y = cat.y - jump_progress02 / 3
        end
        if platform_is_stepped () then
            if bedplatform:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                cat.y = bedplatform.y - 10 + the_offset_of_all_things1
            elseif floor:is_stepped_on(cat.x, cat.y) then
                cat.y = floor.y - 10 + the_offset_of_all_things1
            elseif drawerplatform:is_stepped_on(cat.x, cat.y) then
                cat.y = drawerplatform.y - 10 + the_offset_of_all_things1
            elseif shelf1:is_stepped_on(cat.x, cat.y) then
                cat.y = shelf1.y - 10 + the_offset_of_all_things1
            elseif shelf2:is_stepped_on(cat.x, cat.y) then
                cat.y = shelf2.y - 10 + the_offset_of_all_things1
            elseif shelf3:is_stepped_on(cat.x, cat.y) then
                cat.y = shelf3.y - 10 + the_offset_of_all_things1
            elseif shelf4:is_stepped_on(cat.x, cat.y) then
                cat.y = shelf4.y - 10 + the_offset_of_all_things1
            elseif facplat:is_stepped_on(cat.x, cat.y) then
                cat.y = facplat.y - 10 + the_offset_of_all_things1
            elseif p:is_stepped_on(cat.x, cat.y) then
                cat.y = p.y - 10 + the_offset_of_all_things1
            elseif bs1:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                cat.y = bs1.y + the_offset_of_all_things1
            elseif bs2:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                cat.y = bs2.y + the_offset_of_all_things1
            elseif bs3:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                cat.y = bs3.y + the_offset_of_all_things1
            elseif bs4:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                cat.y = bs4.y + the_offset_of_all_things1
            elseif sidewaysb:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                cat.y = sidewaysb.y + the_offset_of_all_things1
            elseif boxtop:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                cat.y = boxtop.y + the_offset_of_all_things1
            elseif bs5:is_stepped_on(cat.x, cat.y, the_offset_of_all_things) then
                cat.y = bs5.y + the_offset_of_all_things1
            end
            jump_switc32 = true
            jump2 = false  
        end
    elseif jump2 == false then
        --if interval1 > os.clock() - 0.2 and intervaljumpa == 1 then
        --love.graphics.print("      /\\", cat.x, cat.y + 38)
        --love.graphics.print("\n     ( ')..", cat.x, cat.y + 38)
        --love.graphics.print("\n\n     \"  //", cat.x, cat.y + 38)
        --love.graphics.print("\n\n\n    *  ;..", cat.x, cat.y + 38)
        --love.graphics.print("\n\n\n\n.   \\  //", cat.x, cat.y + 38)
        --love.graphics.print("\n\n\n\n\n \"+.+\"", cat.x, cat.y + 38)
        --elseif  interval1 > os.clock() - 0.4 and intervaljumpa == 1 then
        --love.graphics.print("          /\\", cat.x, cat.y + 38)
        --love.graphics.print("         ( ')..", cat.x, cat.y + 38)
        --love.graphics.print("         .\" _//", cat.x, cat.y + 38)
        --love.graphics.print("        |  : ::", cat.x, cat.y + 38)
        --love.graphics.print("    .   \"-_.\"", cat.x, cat.y + 38)
        --love.graphics.print("     \"+.+\"", cat.x, cat.y + 38)
        --intervaljumpa = 0
        --end        
        if jump_switc32 == true then
            cat.frame = 1
            --interval1 = os.clock()
            --intervaljumpa = 1
            jump_switc2 = true
            jump_progress02 = 6
            jump_progress22 = 0
            jump_switc32 = false
            jump_switch02 = true
            jump_switc22 = true
            jump_grav = 0.3
            jump_input2 = 40
            if gravity == false and trapdoors_openingcut == 0 then
                cat.can_move = true
            end
        end
    end







    love.graphics.setFont(gameFont)
    if frame_switch == true then
        intervaltobeused = os.clock()
        frame_switch = false
    end
    if intervaltobeused + 0.2 < os.clock() and cat.moving == true and cat.can_move == true and cat.canmoveleft == true and cat.canmoveright == true then
        if cat.frame ~= 7 then
            cat.frame = cat.frame + 1
        end
        if cat.frame == 6 then
            cat.frame = 0 
        end
        frame_switch = true
    end

    draw()
    
    if wall_is_touched() == "l" and cat.wayfacing == false then
        cat.canmoveleft = false
    else
        if gravity == false and jump == false and jump2 == false and trapdoors_openingcut == 0 and moving_mountian == 20 and boxmove ~= "l" then
            cat.canmoveleft = true
        end
    end
    if wall_is_touched() == "r" and cat.wayfacing == true then
        cat.canmoveright = false
    else
        if gravity == false and jump == false and jump2 == false and trapdoors_openingcut == 0 and moving_mountian == 20 and boxmove ~= "r" then
            cat.canmoveright = true
        end
    end

    if cat.x > 400 and cat.wayfacing == true then
        cat_object_movement1 = false
    elseif cat.x < 85 and cat.wayfacing == false then
        cat_object_movement1 = false
    else
        cat_object_movement1 = true
    end
    if cat.y > 400 then
        cat_object_movement2 = false
    elseif cat.x < 85 then
        cat_object_movement2 = false
    else
        cat_object_movement2 = true
    end


end