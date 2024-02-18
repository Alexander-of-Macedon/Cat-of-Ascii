function board()
    
    love.graphics.setFont(gameFont)
    love.graphics.print("\t\t\t\t\t" .. tostring(moving_mountian))
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
    love.graphics.print(" _--_--_--_--_--_--_--_--_--_--_--_--_\n(          Wizard's Comfy AC          )\n )           Control Board           (\n(                                     )\n )  V    V    V    V    V    V    V  (\n(   e    e    e    e    e    e    e   )\n )  n    n    n    n    n    n    n  (\n(   t    t    t    t    t    t    t   )\n )  1    2    3    4    5    6    7  (_____\n( .''. .''. .''. .''. .''. .''. .''. |close|\n ):__: :__: :__: :__: :__: :__: :__: |-__--'\n(_  _  _  _  _  _  _  _  _  _  _  _  _)\n  '' '' '' '' '' '' '' '' '' '' '' ''",140,140)
    if mbchoice2 == 0 or mbchoice1 == 0 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n   ## \n   ##",140,140)
    end
    if mbchoice2 == 1 or mbchoice1 == 1 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n        ## \n        ##",140,140)
    end
    if mbchoice2 == 2 or mbchoice1 == 2 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n             ## \n             ##",140,140)
    end
    if mbchoice2 == 3 or mbchoice1 == 3 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n                  ## \n                  ##",140,140)
    end
    if mbchoice2 == 4 or mbchoice1 == 4 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n                       ## \n                       ##",140,140)
    end
    if mbchoice2 == 5 or mbchoice1 == 5 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n                            ## \n                            ##",140,140)
    end
    if mbchoice2 == 6 or mbchoice1 == 6 then
    love.graphics.print("\n\n\n\n\n\n\n\n\n                                 ## \n                                 ##",140,140)
    end
        love.graphics.setFont(gameFont1)
        love.graphics.setColor(0,0.9,0)
    if mbchoice == 0 then
        love.graphics.print("   __\n .’  ‘.\n ]    |\n \\    )\n |   [\n |\n .    ,\n |    |\n |    |", 150,330)
    elseif mbchoice == 1 then
        love.graphics.print("   __\n .’  ‘.\n ]    |\n \\    )\n |   [\n |\n .    ,\n |    |\n |    |", 210,330)
    elseif mbchoice == 2 then
        love.graphics.print("   __\n .’  ‘.\n ]    |\n \\    )\n |   [\n |\n .    ,\n |    |\n |    |", 270,330)
    elseif mbchoice == 3 then
        love.graphics.print("   __\n .’  ‘.\n ]    |\n \\    )\n |   [\n |\n .    ,\n |    |\n |    |", 330,330)
    elseif mbchoice == 4 then
        love.graphics.print("   __\n .’  ‘.\n ]    |\n \\    )\n |   [\n |\n .    ,\n |    |\n |    |", 390,330)
    elseif mbchoice == 5 then
        love.graphics.print("   __\n .’  ‘.\n ]    |\n \\    )\n |   [\n |\n .    ,\n |    |\n |    |", 450,330)
    elseif mbchoice == 6 then
        love.graphics.print("   __\n .’  ‘.\n ]    |\n \\    )\n |   [\n |\n .    ,\n |    |\n |    |", 510,330)
    elseif mbchoice == 7 then
        love.graphics.print("   __\n .’  ‘.\n ]    |\n \\    )\n |   [\n |\n .    ,\n |    |\n |    |", 585,330)
    end
end