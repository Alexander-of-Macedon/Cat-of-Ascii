function dragon() 
    love.graphics.setFont(gameFont1)
    if intro_num < 250 then
        love.graphics.setColor(0,0,0)
    elseif intro_num == 250 then
        love.graphics.setColor(0.2,0.2,0.2)
    elseif  intro_num == 260 then
        love.graphics.setColor(0.5,0.5,0.5)
    elseif  intro_num == 270 then
        love.graphics.setColor(0.7,0.7,0.7)
    elseif  intro_num == 283 then
        love.graphics.setColor(0.9,0.9,0.9)
        stage = "dragon"
    elseif  intro_num == 290 then
        dialouge_finished = false
        dialouge_num = 4
        dialouge_talk = true
    end

    if question == true and choice == 3 and dialouge_finished == true then
        choice = 0
    elseif question == false then
        choice = 3
    end
    if choice == 1 then
        cstored = 1
    elseif choice == 0 then
        cstored = 0
    end
    if dialouge_num == 7 + 1 then
        if cstored == 1 then
            dialouge_num = 12
        else
            dragon_action = "angry"
        end
    elseif dragon_action == "angry" and dialouge_num == 10 then
        dragon_action = "true"
    end


    love.graphics.print("\n\n\n\n\n\n\n\n                \\      /       /            \\      \\      /",25)
    love.graphics.print("\n\n\n\n\n\n\n\n\n                 \\   /        (     -=-     )         \\  /",25)
    love.graphics.print("\n\n\n\n\n\n\n\n\n\n                  \\__________/)    -=|=-    (\\__________/",25)
    love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n                            //    /-=!=-\\    \' ~~--._ `   ",25)
    love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n                           (_|   (\\-===-/)   |_),--.__~-.",25)
    love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n\n                          \"\"\"\\   \\      /    /\"\"\"     _   )",25)
    love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n                            (_(_(_)'  '(_)_)_)/`.--~ _.--~",25)
    love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                            `\"`\"`\"      \"`\"`\"`\\,~~~''",25)
    if dragon_action == "true" then
        love.graphics.print("                                  )     (",25)
        love.graphics.print("\n                                 /|\\]![/|\\",25)
        love.graphics.print("\n\n                                 ((.\" \".))",25)
        love.graphics.print("\n\n\n   ___------~~~~~~~~~~~----__    ( 6   6 )    __----~~~~~~~~~~~------___",25)
        love.graphics.print("\n\n\n\n-~~ ~--__           ______----\\~ \\\\     // ~//----______          __--~ ~~-",25)
        love.graphics.print("\n\n\n\n\n          \\                //||| / )   ( \\ |||\\\\                /",25)
        love.graphics.print("\n\n\n\n\n\n           \\_            //  |||_) \\_±_/ (_|||  \\\\            _/",25)
        love.graphics.print("\n\n\n\n\n\n\n              \\_        //      /         \\\\     \\\\        _/ ",25)


    elseif dragon_action == "false" then
        love.graphics.print("                                  )     (",25)
        love.graphics.print("\n                                 /|\\]![/|\\",25)
        love.graphics.print("\n\n                                 ((.\" \".))",25)
        love.graphics.print("\n\n\n   ___------~~~~~~~~~~~----__    ( 6   6 )    __----~~~~~~~~~~~------___",25)
        love.graphics.print("\n\n\n\n-~~ ~--__           ______----\\~ \\\\     // ~//----______          __--~ ~~-",25)
        love.graphics.print("\n\n\n\n\n          \\                //||| / )   ( \\ |||\\\\                /",25)
        love.graphics.print("\n\n\n\n\n\n           \\_            //  |||_) \\-~-/ (_|||  \\\\            _/",25)
        love.graphics.print("\n\n\n\n\n\n\n              \\_        //      /   \"-\"   \\\\     \\\\        _/ ",25)
    elseif dragon_action == "angry" then
        love.graphics.print("                                  )     (",25)
        love.graphics.print("\n                                 /|\\]![/|\\",25)
        love.graphics.print("\n\n                                 ((.\" \".))",25)
        love.graphics.print("\n\n\n   ___------~~~~~~~~~~~----__    ( 0   0 )    __----~~~~~~~~~~~------___",25)
        love.graphics.print("\n\n\n\n-~~ ~--__           ______----\\~ \\\\     // ~//----______          __--~ ~~-",25)
        love.graphics.print("\n\n\n\n\n          \\                //||| / )   ( \\ |||\\\\                /",25)
        love.graphics.print("\n\n\n\n\n\n           \\_            //  |||_) \\V\"V/ (_|||  \\\\            _/",25)
        love.graphics.print("\n\n\n\n\n\n\n              \\_        //      /   \"-\"   \\\\     \\\\        _/ ",25)
    end
end