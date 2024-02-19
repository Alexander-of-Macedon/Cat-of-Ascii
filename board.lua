function board()
    
    love.graphics.setFont(gameFont)
    if moving_mountian < 35 then
        love.graphics.setColor(0,0,0)
    elseif moving_mountian >= 35 and moving_mountian < 40 then
        love.graphics.setColor(0.2,0.2,0.2)
    elseif moving_mountian >= 40 and moving_mountian < 55 then
        love.graphics.setColor(0.5,0.5,0.5)
    elseif moving_mountian >= 55 and moving_mountian <= 60 then
        love.graphics.setColor(0.7,0.7,0.7)
    elseif moving_mountian > 60 then
        love.graphics.setColor(0.9,0.9,0.9)
        cat.wayfacing = false
    end
    if intervaltobeused + 0.2 < os.clock() then
        frame_switch = true
    if vent_animation ~= true then
            moving_mountian = moving_mountian + 4
    else
        moving_mountian = moving_mountian - 4
    end
    if moving_mountian < 35 then
        stage = "cat"
        ventsentrylog = true
        vent_animation = false
        vastored = nil
        vexitanim = false
        mboardtimer = intro_num
    end
    end
    if frame_switch == true and intervaltobeused + 0.2 < os.clock() then
        intervaltobeused = os.clock()
        frame_switch = false
    end
    love.graphics.print(" _--_--_--_--_--_--_--_--_--_--_--_--_\n(          Wizard's Comfy AC          )\n )           Control Board           (\n(                                     )\n )       V                  V        (\n(        e                  e         )\n )       n                  n        (\n(        t                  t         )\n )       1                  2        (_____\n(      .''.                .''.      |close|\n )     :__:                :__:      |-__--'\n(_  _  _  _  _  _  _  _  _  _  _  _  _)\n  '' '' '' '' '' '' '' '' '' '' '' ''",140,140)
    if mbchoice1 == 0 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n        ## \n        ##",140,140)
    end
    if mbchoice1 == 1 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n  ## \n  ##",452,140)
    end
    if mbchoice2 == 2 or mbchoice1 == 2 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n                                 ## \n                                 ##",140,140)
    end
        love.graphics.setFont(gameFont1)
        love.graphics.setColor(0,0.9,0)
    if mbchoice == 0 then
        love.graphics.print("   __\n .’  ‘.\n ]    |\n \\    )\n |   [\n |\n .    ,\n |    |\n |    |", 210,330)
    elseif mbchoice == 1 then
        love.graphics.print("   __\n .’  ‘.\n ]    |\n \\    )\n |   [\n |\n .    ,\n |    |\n |    |", 450,330)
    elseif mbchoice == 2 then
        love.graphics.print("   __\n .’  ‘.\n ]    |\n \\    )\n |   [\n |\n .    ,\n |    |\n |    |", 585,330)
    end
end