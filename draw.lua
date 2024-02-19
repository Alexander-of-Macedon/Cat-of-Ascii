function draw()

    love.graphics.setColor(0.4,0.4,0.4)
    love.graphics.print(" _______\n|   |___|\n|     __|______\n|    |         |\n|____|_________|",8760 + the_offset_of_all_things,300 + the_offset_of_all_things1)
    love.graphics.print("           ___\n          |   |\n    ______|_  |\n __|*%|    _|_|__\n|  |__|   |      |\n|__|______|______|",9350 + the_offset_of_all_things,300 + the_offset_of_all_things1)
    love.graphics.print("         _______\n  ______|___    |\n |__________|___|____\n|  /              \\  |\n| /      ______    \\ |\n|/ _____|      |    \\|\n| |     |      |___  |\n|_|_____|______|___|_|\n|  /              \\  |\n| /     ___   ____ \\ |\n|/ ____|   | /    \\ \\|\n| |    |   ||  ()  | |\n|_|____|___|_\\____/__|\n|                    |",9600 + the_offset_of_all_things,130 + the_offset_of_all_things1)
    love.graphics.setFont(gameFont1)
    love.graphics.setColor(1,1,1)
    if wizardframe == 0 then
        love.graphics.print(" (\\.   \\      ,/)\n  \\(   |\\     )/\n  //\\  |M\\   /\\\\\n (/ /\\_$oo$_/\\ \\)\n  \\/\\_ #### _/\\/\n      \\`##'/\n       |  |\n       |  |\n      /    \\\n   _.'      '._\n -'-...____...-'-",16050 + the_offset_of_all_things, wizardpos + the_offset_of_all_things1)
    end
    if wizardframe == 2 or dragon_action == "false" and wizardpos >= 50 then
        love.graphics.print("       \\\n       |\\\n       |M\\\n       $oo$\n      _#**#_\n     /:`##':\\\n    /\\/|  |\\/\\\n   /\\ \\|  |/ /\\\n  (/'\\/    \\/'\\)\n   _.'      '._\n -'-...____...-'-",16050 + the_offset_of_all_things, wizardpos + the_offset_of_all_things1)
    elseif wizardframe == 1 or dragon_action == "true" and wizardpos >= 50 then
        love.graphics.print("       \\\n       |\\\n       |M\\\n       $oo$\n      _####_\n     /:`##':\\\n    /\\/|  |\\/\\\n   /\\ \\|  |/ /\\\n  (/'\\/    \\/'\\)\n   _.'      '._\n -'-...____...-'-",16050 + the_offset_of_all_things, wizardpos + the_offset_of_all_things1)
    end
    if wizardpos > 20 then
        love.graphics.setColor(0.5,0.5,0.5)
    elseif wizardpos > -110 then
        love.graphics.setColor(0.7,0.7,0.7)
    end
    love.graphics.print("    _   _\n  /' '|' '\\\n /.--.|.--.\\\n    |   |\n     | |\n     | |\n     | |\n    | : |\n  _/.___.\\_\n",16075 + the_offset_of_all_things, 280 + the_offset_of_all_things1)
    love.graphics.print("        0\n      .' '.\n     .'-.-'.\n   .'|'-.-'|`.\n  ' .*.   .*. `\n ' '   ' '   ' `\n'    /\\   /\\    `\n|   /  \\ /  \\   |\n|T '    '    ' T|\n|_ _.-'-.-'-._ _|\n|_'_.-'-.-'-._'_|\n| '     *     ' |\n|:A  .-   -.  B:|\n|  .' (o)   '.  |\n|       \\       |\n| '      \\    ' |\n|  .      \\' .  |\n|:R '._   _.' A:|\n'. ___________ .'", 15800 + the_offset_of_all_things, -100 + the_offset_of_all_things1)
    love.graphics.print("        0\n      .' '.\n     .'-.-'.\n   .'|'-.-'|`.\n  ' .*.   .*. `\n ' '   ' '   ' `\n'    /\\   /\\    `\n|   /  \\ /  \\   |\n|T '    '    ' T|\n|_ _.-'-.-'-._ _|\n|_'_.-'-.-'-._'_|\n| '     *     ' |\n|:A  .-   -.  B:|\n|  .' (o)   '.  |\n|       \\       |\n| '      \\    ' |\n|  .      \\' .  |\n|:R '._   _.' A:|\n'. ___________ .'", 16300 + the_offset_of_all_things, -100 + the_offset_of_all_things1)
    love.graphics.print("     .'.\n   .' . `.\n  '  ( )  `\n ' _  '  _ `\n'-'_'---'_'-`\n|-' '---' '-|\n|    /'\\    |\n|   / . \\   |\n|   \\ ' /   |\n|'_  \\./  _'|\n|__'-----'__|\n|__:__:__:__|\n:__|__:__|__:\n|__:__|__:__|\n'._|__:__|_.'", 12600 + the_offset_of_all_things, 0 + the_offset_of_all_things1)
    if moving_mountian < 5 then
        love.graphics.setColor(0,0,0)
    elseif moving_mountian < 10 then
        love.graphics.setColor(0.1,0.1,0.1)
    elseif moving_mountian < 14 then
        love.graphics.setColor(0.3,0.3,0.3)
    elseif moving_mountian < 20 then
        love.graphics.setColor(0.5,0.5,0.5)
    elseif moving_mountian > 24 or moving_mountian <= 24  then
        love.graphics.setColor(0.7,0.7,0.7)
    end




    love.graphics.print("     .'.\n   .' . `.\n  '  ( )  `\n ' _  '  _ `\n'-'_'---'_'-`\n|-' '---' '-|\n|    /'\\    |\n|   / . \\   |\n|   \\ ' /   |\n|'_  \\./  _'|\n|__'-----'__|\n|__:__:__:__|\n:__|__:__|__:\n|__:__|__:__|\n'._|__:__|_.'", 13000 + the_offset_of_all_things, 0 + the_offset_of_all_things1)
    love.graphics.print("     .'.\n   .' . `.\n  '  ( )  `\n ' _  '  _ `\n'-'_'---'_'-`\n|-' '---' '-|\n|    /'\\    |\n|   / . \\   |\n|   \\ ' /   |\n|'_  \\./  _'|\n|__'-----'__|\n|__:__:__:__|\n:__|__:__|__:\n|__:__|__:__|\n'._|__:__|_.'", 13400 + the_offset_of_all_things, 0 + the_offset_of_all_things1)
    love.graphics.print("     .'.\n   .' . `.\n  '  ( )  `\n ' _  '  _ `\n'-'_'---'_'-`\n|-' '---' '-|\n|    /'\\    |\n|   / . \\   |\n|   \\ ' /   |\n|'_  \\./  _'|\n|__'-----'__|\n|__:__:__:__|\n:__|__:__|__:\n|__:__|__:__|\n'._|__:__|_.'", 13800 + the_offset_of_all_things, 0 + the_offset_of_all_things1)
    love.graphics.print("     .'.\n   .' . `.\n  '  ( )  `\n ' _  '  _ `\n'-'_'---'_'-`\n|-' '---' '-|\n|    /'\\    |\n|   / . \\   |\n|   \\ ' /   |\n|'_  \\./  _'|\n|__'-----'__|\n|__:__:__:__|\n:__|__:__|__:\n|__:__|__:__|\n'._|__:__|_.'", 14200 + the_offset_of_all_things, 0 + the_offset_of_all_things1)
    love.graphics.print("     .'.\n   .' . `.\n  '  ( )  `\n ' _  '  _ `\n'-'_'---'_'-`\n|-' '---' '-|\n|    /'\\    |\n|   / . \\   |\n|   \\ ' /   |\n|'_  \\./  _'|\n|__'-----'__|\n|__:__:__:__|\n:__|__:__|__:\n|__:__|__:__|\n'._|__:__|_.'", 14600 + the_offset_of_all_things, 0 + the_offset_of_all_things1)
    love.graphics.print("     .'.\n   .' . `.\n  '  ( )  `\n ' _  '  _ `\n'-'_'---'_'-`\n|-' '---' '-|\n|    /'\\    |\n|   / . \\   |\n|   \\ ' /   |\n|'_  \\./  _'|\n|__'-----'__|\n|__:__:__:__|\n:__|__:__|__:\n|__:__|__:__|\n'._|__:__|_.'", 15000 + the_offset_of_all_things, 0 + the_offset_of_all_things1)
    love.graphics.print("     .'.\n   .' . `.\n  '  ( )  `\n ' _  '  _ `\n'-'_'---'_'-`\n|-' '---' '-|\n|    /'\\    |\n|   / . \\   |\n|   \\ ' /   |\n|'_  \\./  _'|\n|__'-----'__|\n|__:__:__:__|\n:__|__:__|__:\n|__:__|__:__|\n'._|__:__|_.'", 15400 + the_offset_of_all_things, 0 + the_offset_of_all_things1)
    love.graphics.print("  _______________\n |#%%%+~~~-     []\n/###%%+++~-     []\n|##%+++~~~--    []\n\\##%%%%++~      []\n |##%%++~_______[]",12250 + the_offset_of_all_things, 340 + the_offset_of_all_things1)
    love.graphics.print(" _______________\n[]     -~~~+%%%#|\n[]     -~+++%%###\\\n[]    --~~~+++%##|\n[]      ~++%%%%##/\n[]_______~++%%##|",10020 + the_offset_of_all_things, 338 + the_offset_of_all_things1)
    love.graphics.print(" __-####-__\n|#%%####%%#|\n|#%%%++++%%|\n|+%%++|++++|\n|+ |  : | +|\n|  '    '  |\n|][][][][][|",8800 + the_offset_of_all_things,-150 + the_offset_of_all_things1)
    love.graphics.print(" ______\n|  |~#*|\n|  |___|\n|      |\n|      |\n|======|\n|      |\n|      |\n|______|",9200 + the_offset_of_all_things,280 + the_offset_of_all_things1)
    love.graphics.print(" _________\n|         |\n|         |\n|         |\n|_________|",box1.x + 90 + the_offset_of_all_things, box1.y - 13 + the_offset_of_all_things1)
    love.graphics.print("     ,.-~~~-..\n    //  .12. \\\\\n   || '  |  ' ||\n   || 9  /  3 ||\n    \\\\ '.6.' //\n     '--...--'",600+ 1.3*the_offset_of_all_things,10 + the_offset_of_all_things1)
    love.graphics.setFont(gameFont)
    love.graphics.print(" _\n(_)\n H\n H                                                         _\n H                                                        (_)\n H .--...__        ()-()                                   H\n H|        `-._    (':')                                   H\n H             `\\  d . b                                   H\n H--=============+-()_()---------------------------------..H\n H               |                                       | H\n H               |                                       / H\n H---------------|                                       \\ H\n H_______________|                                       |_H\n H               `~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~| H\n H                                                         H\n(_)                                                       (_)",5 + the_offset_of_all_things,80+ the_offset_of_all_things1)
    love.graphics.print("              _\n  ___ _____  |W|\n |\a||_|||\\a\\ |O|\n |S||g||| \\g\\|Z|\n0±±±±±±±±±±±±±±±0", shelf2.x1 + 130 + the_offset_of_all_things, shelf2.y + the_offset_of_all_things1)
    love.graphics.print("         _____\n  ______(±±±±±|__\n (_______________)\n |  ___________  |\n | |           | |\n | |    0=0    | |\n | |___________| |\n |  ___________  |\n | |           | |\n | |    0=0    | |\n | |___________| |\n |_______________|",800 + the_offset_of_all_things, 170 + the_offset_of_all_things1)
    love.graphics.print("  ____    &**&\n (    )__-+\\/+-___\n  \\#1/_2_/ || \\  /\n   ||  |   || /#2\\\n  /  \\/ \\ |#1|\\  /\n 0±±±±±±±±±±±±±±±0",shelf1.x1+ the_offset_of_all_things + 130, shelf1.y - 20 + the_offset_of_all_things1)
    love.graphics.print("         0\n        /*\\\n       /**+\\\n      /+ M* \\\n   _=/__*_*+_\\=_\n 0±±±±±±±±±±±±±±±0",shelf3.x1+ 130 + the_offset_of_all_things, shelf3.y + the_offset_of_all_things1 - 20)
    love.graphics.print("   „.   „\n  / .*   \\  ___,,\n | <*)))><||fish|\n  \\      / |food|\n 0±±±±±±±±±±±±±±±0", 1400 + the_offset_of_all_things, -35 + the_offset_of_all_things1)
    love.graphics.print(" _______________\n[]     -~~~+%%%#|\n[]     -~+++%%###\\\n[]    --~~~+++%##|\n[]      ~++%%%%##/\n[]_______~++%%##|\n\n\n\n\n\n  ] [\n  | |\n  | |\n  | |\n  ] [\n  | |\n  | |\n  | |\n(){=}()\n  | |\n  | |\n  | |\n  ] [\n  | |\n  | |\n  | |",shelf3.x1+ 360 + the_offset_of_all_things, shelf3.y + the_offset_of_all_things1 - 30)
    love.graphics.print(" _______________\n[]     -~~~+%%%#|\n[]     -~+++%%###\\\n[]    --~~~+++%##|\n[]      ~++%%%%##/\n[]_______~++%%##|",4200 + the_offset_of_all_things, 100 + the_offset_of_all_things1)
    love.graphics.print("  _______________\n |#%%%+~~~-     []\n/###%%+++~-     []\n|##%+++~~~--    []\n\\##%%%%++~      []\n |##%%++~_______[]",4680 + the_offset_of_all_things, 320 + the_offset_of_all_things1)
    love.graphics.print("  _________\n |         \\\n |  .-'-.  |\n | (     ) |\n |  '-.-'  |\n |         |\n |         |\n |  .-'-.  |\n | (     ) |\n |  '-.-'  |\n |         |\n |         |\n |  .-'-.  |\n | (     ) |\n |  '-.-'  |\n |         |\n |         |\n |  .-'-.  |\n | (     ) |\n |  '-.-'  |\n |_________/\n",5920 + the_offset_of_all_things, -28 + the_offset_of_all_things1)
    love.graphics.print(" __                                                                                __\n(  \\_,±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±,______,±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±,_/  )\n \\ ________________________________________________________________________________ /\n  ||  |+'\\     .-.      _   '-. ._.      || __  __  __                  _    _  ||\n  ||  |\\  \\ |||___|_+_ | |     |   |-._.-||[  ]|  ||__|          +'\\   | |_ (_) ||\n  (|  |_\\  \\||(___)[;] | | ' . |   |-._.-|||  ||  ||__|  .-------.\\ \\  | | || | |)\n  ||  | |\\  \\||   ||:| | |     |   |     |||  ||  ||__|\\ |-------'.\\ \\ | | || | ||\n  ||__|_|_\\_+'|_._|;_;_|_|'-.__|___|_____||[__]|__||__|_\\|________| \\+'|_|_||_|_||\n  ||(   ) _________  __    _| | _  _ ||__||  '-..-. __               _          ||\n  || ) ( |_________||__| _| | || |(_)||  ||     | ||  | ______  .:. [ ]     .--.||\n  (|(   ) |_______| )__(| | | |[ ]| |||  || ' . | ||  ||______| '0' | |-._.-|  ||)\n  || ) ( |_________||  || | | || ||_|||  ||     | ||  |_______| |_| | |'-.-'|  |||\n  ||(___)|(º)___(º)\\|__||_|_|_|[_](_)||__||'-.__|_||__|______|__J_L_[_]_____|__|||\n  ||      _     __       __              ||           \\ / _     _       ...     ||\n  ||.-. .' '.__|  |+'\\  |__|         []  ||           |'|| |_  [ ]+\\    | |     ||\n  (|''%||   |  |  |\\  \\ |__|______  '::' || .-------. | || | | | |\\ \\   | |     |)\n  ||  %||   :  :  | \\  \\|__|______| _][_ || |_______| |.|| | | | | \\ \\  | |     ||\n  ||__%||._.|__|__|__\\+'|__|______||____||||________|_/_\\|_|_|_[_]__\\+'_|_|_____||\n  ||  '-.'-..--. _                       |||xxx| __          __          .-'    ||\n  ||        |  |]_[                      |||   ||  |+'\\    _|  | ________       ||\n  (| ' .' . |  || |                      |||   ||  |\\  \\  | |  ||________|. '   |)\n  ||        |  ||_|                      |||   ||  | \\  \\ | |  ||________|      ||\n  ||'-.'-.__:__:]_[______________________|||xxx||__|__\\+'_|_|__||_______|__.-'__||",4900 + the_offset_of_all_things, -75 + the_offset_of_all_things1)
    love.graphics.print("\n\n\n\n                           ' .                                  . '\n\n                          ' .                                   . '\n\n\n                                            ' .\n\n                                           ' .\n\n\n\n\n\n\n\n     ' .' .                                                              . '\n\n    ' .' .                                                                . '",4905 + the_offset_of_all_things, -75 + the_offset_of_all_things1)
    love.graphics.print("\n\n\n\n\n\n\n    __________________________________________________________________________\n\n\n\n\n    __________________________________________________________________________\n\n\n\n\n    __________________________________________________________________________\n\n\n\n\n    __________________________________________________________________________",4900 + the_offset_of_all_things, -75 + the_offset_of_all_things1)
    love.graphics.print("\\.______._____\n|:      :     ':.\n|:______:___.+'  |\n/'      '  '|,.,.|",3680 + the_offset_of_all_things,40 + the_offset_of_all_things1)
    love.graphics.print("    __\n . /::\\+\n(+)(O )|\n ' >::<+\n  ''''''",3580 + the_offset_of_all_things,350 + the_offset_of_all_things1)
    love.graphics.print("    _.---._,.\n   |\"\".\".\"\"||\n_,_| (   ) ||\nL\"\"|  '*'  \"+\n  (?.: : :.|\n   |,.---.,?)\n  (?_______|",3400 + the_offset_of_all_things,290 + the_offset_of_all_things1)
    love.graphics.print("   ___________\n .' _________ '.\n.|_|._______.|_|.    _____\n|      /!\\      |   |+++++\n|P R E S S U R E|___|+\n|______ | ______|+++++\n'       V       '",3000 + the_offset_of_all_things,100 + the_offset_of_all_things1)
    love.graphics.print("      ,_______,\n      .|,.,.,|.\n      '|     |'\n      .|.,.,.|.\n      '|  _  |'\n\\.__.:'  (±)  ':.___./\n|:   '+._ _ _.+'    :|\n|:____.:'' '':._____:|\n/'                  '\\\n",3345 + the_offset_of_all_things,90 + the_offset_of_all_things1)
    if md1.y2 > 0 then
        love.graphics.print(" _--_--_--_--_--_--_--_\n(     ~~~~~~~ ~~~      )\n )      ~~~~~~~      ( \n(                      )\n )  ~  ~  ~  ~  ~  ~  (\n(   ~  ~  ~  ~  ~  ~   )\n )  @  @  @  @  @  @  (\n(_  _  _  _  _  _  _  _)\n  '' ( :'' '' '' (')''\n     ( ` )._ ..-' `)___\n    (  `   .`  _.-'Do  |\n     (.._.:''-.: | Not |\n                 |Touch|\n                  '''''",2650 + the_offset_of_all_things, 150 + the_offset_of_all_things1)
    end

    if md1.y2 > 350 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n _",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 > 280 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n\n _\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 > 230 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n _\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 > 180 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n _\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 > 130 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n\n _\n| |\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 > 900 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n _\n| |\n| |\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 > 30 then
        love.graphics.print("\n\n\n\n\n\n\n\n _\n| |\n| |\n| |\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 > -20 then
        love.graphics.print("\n\n\n\n\n\n\n _\n| |\n| |\n| |\n| |\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 > -30 then
        love.graphics.print("\n\n\n\n\n\n _\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 > -90 then
        love.graphics.print("\n\n\n\n\n _\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 >= -120 then
        love.graphics.print("\n\n\n\n _\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 >= -180 then
        love.graphics.print("\n\n\n _\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 >= -230 then
        love.graphics.print("\n\n _\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 >= -280 then
        love.graphics.print("\n _\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    elseif md1.y2 >= -330 then
        love.graphics.print(" _\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |",2960 + the_offset_of_all_things, 110 + the_offset_of_all_things1)
    end
    if flashofawakening <= intro_num and flashofawakening ~= 0 then
        love.graphics.setColor(0,0,0)
    end
    if flashofawakening + 30 < intro_num and flashofawakening ~= 0 then
        love.graphics.setColor(1,1,1)
    end 
    if flashofawakening + 40 < intro_num then
        flashofawakening = 0
    end
    love.graphics.print(" ____________________________________________________\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |\n|                                                    |_______________\n|                                                    []     -~~~+%%%#|\n|                                                    []     -~+++%%###\\\n|                                                    []    --~~~+++%##|\n|                                                    []      ~++%%%%##/\n|____________________________________________________[]_______~++%%##|",7500 + the_offset_of_all_things, -74 + the_offset_of_all_things1)
    if trapdoors_openingcut < 0 then
        love.graphics.setColor(1,1,1)
    elseif trapdoors_openingcut < 6 then
        love.graphics.setColor(0.7,0.7,0.7)
    elseif trapdoors_openingcut < 12 then
        love.graphics.setColor(0.4,0.4,0.4)
    elseif trapdoors_openingcut < 18 then
        love.graphics.setColor(0.1,0.1,0.1)
    elseif trapdoors_openingcut > 24 or trapdoors_openingcut <= 24  then
        love.graphics.setColor(0,0,0)
    end
    love.graphics.print("  ____________\n /|          /|\n/_|_________/ |\n|           | |\n|           | /\n|___________|/",6750 + the_offset_of_all_things, 320 + the_offset_of_all_things1)
    love.graphics.setColor(0.9,0.9,0.9)

    if trapdoors_openingcut > 53 then
        love.graphics.print("|                    |\n|                    |\n|                    |\n'                    '",cat.x , 432 + the_offset_of_all_things1)
    end
    if trapdoors_openingcut > 37 then
        love.graphics.print("\n\n\n\n\n _\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |",cat.x - 70, 110 + the_offset_of_all_things1)
    end
    if cat.y > 580 then
        flashofawakening = intro_num
        the_offset_of_all_things1 = 200
        cat.y = 200
        trapdoors_openingcut = 0
        floor.x2 = 9900
        the_offset_of_all_things = -7500
    elseif trapdoors_openingcut > 53 then
        love.graphics.print("|                    |\n|                    |\n|                    |\n'                    '",cat.x , 432 + the_offset_of_all_things1)
        floor.x2 = 0
    elseif trapdoors_openingcut > 52 then
        love.graphics.print("\\                    /\n \\                  /\n  \\                /",cat.x , 432 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 51 then
        love.graphics.print("_                     _\n '-_               _-'\n    '-           -'",cat.x , 432 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 50 then
        love.graphics.print("__                   __\n  '''---       ---'''",cat.x , 432 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 49 then
        love.graphics.print("_____             _____\n     '''''   '''''",cat.x , 432 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 48 then
        love.graphics.print("___________ ___________",cat.x , 432 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 37 then
        love.graphics.print("\n\n\n\n\n _\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |",cat.x - 70, 110 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 36 then
        love.graphics.print("\n\n\n\n\n\n _\n| |\n| |\n| |\n| |\n| |\n| |\n| |\n| |",cat.x - 70, 110 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 35 then
        love.graphics.print("\n\n\n\n\n\n\n _\n| |\n| |\n| |\n| |\n| |\n| |\n| |",cat.x - 70, 110 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 34 then
        love.graphics.print("\n\n\n\n\n\n\n\n _\n| |\n| |\n| |\n| |\n| |\n| |",cat.x - 70, 110 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 33 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n _\n| |\n| |\n| |\n| |\n| |",cat.x - 70, 110 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 32 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n\n _\n| |\n| |\n| |\n| |",cat.x - 70, 110 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 31 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n _\n| |\n| |\n| |",cat.x - 70, 110 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 30 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n _\n| |\n| |",cat.x - 70, 110 + the_offset_of_all_things1)
        cat.wayfacing = false
    elseif trapdoors_openingcut > 29 then
        love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n\n _\n| |",cat.x - 70, 110 + the_offset_of_all_things1)
    elseif trapdoors_openingcut > 28 then

    end

    if intro_num > moving_object_animation + 25 then
        factory_animation = factory_animation + 1
        if factory_animation > 3 then
            factory_animation = 0
        end
        moving_object_animation = intro_num
    end
    if factory_animation == 0 then
        love.graphics.print(" _____________________________\n|  |_| I         |____________|\n|  | | |_ .  -  . _|||'====='\n|  |_| _ . . - . . _|| | \\\\|\n|  |,   |\\      \\\\| || |  \\|\n|  |_|  |\\      \\\\| || |  \\|\n|D |\\   |\\\\      \\| || |  \\|\n|A |#L__|\\\\,...,_\\|_||.|_\\\\|.\n|N |,|_,_____,__,______ _ __|\n|G | |  \"--_---_--\" || \\___/\n|E | |              ||  | |\n|R | |              ||  | |\n|!!|_|              ||  | |\n|[]|_ +=+=+=+=+=+=+=||+ | |\n|  | |              \\\\  | |",3700 + the_offset_of_all_things,112 + the_offset_of_all_things1)
    elseif factory_animation == 1 then
        love.graphics.print(" _____________________________\n|  |_| I         |____________|\n|  | | |_ .  -  . _|||'====='\n|  |_| _ . . - . . _|| | |||\n|  |,   ||      ||| || |  ||\n|  |_|  ||      ||| || |  ||\n|D |\\   |||      || || |  ||\n|A |#L__|||,...,_||_||.|_|||.\n|N |,|_,_____,__,______ _ __|\n|G | |  \"--_---_--\" || \\___/\n|E | |              ||  | |\n|R | |              ||  | |\n|!!|_|              ||  | |\n|[]|_ +=+=+=+=+=+=+=||+ | |\n|  | |              \\\\  | |",3700 + the_offset_of_all_things,112 + the_offset_of_all_things1)
    elseif factory_animation == 2 then
        love.graphics.print(" _____________________________\n|  |_| I         |____________|\n|  | | |_ .  -  . _|||'====='\n|  |_| _ . . - . . _|| | //|\n|  |,   |//     //| || |  /|\n|  |_|  |/      //| || |  /|\n|D |\\   |//      /| || |  /|\n|A |#L__|//,...,_/|_||.|_//|.\n|N |,|_,_____,__,______ _ __|\n|G | |  \"--_---_--\" || \\___/\n|E | |              ||  | |\n|R | |              ||  | |\n|!!|_|              ||  | |\n|[]|_ +=+=+=+=+=+=+=||+ | |\n|  | |              \\\\  | |",3700 + the_offset_of_all_things,112 + the_offset_of_all_things1)
    elseif factory_animation == 3 then
        love.graphics.print(" _____________________________\n|  |_| I         |____________|\n|  | | |_ .  -  . _|||'====='\n|  |_| _ . . - . . _|| | ——|\n|  |,   |——     ——| || |  —|\n|  |_|  |—      ——| || |  —|\n|D |\\   |——      —| || |  —|\n|A |#L__|——,...,_—|_||.|_——|.\n|N |,|_,_____,__,______ _ __|\n|G | |  \"--_---_--\" || \\___/\n|E | |              ||  | |\n|R | |              ||  | |\n|!!|_|              ||  | |\n|[]|_ +=+=+=+=+=+=+=||+ | |\n|  | |              \\\\  | |",3700 + the_offset_of_all_things,112 + the_offset_of_all_things1)
    end

    if facplatstep == true then
        love.graphics.print("________________",3010 + the_offset_of_all_things,435 + the_offset_of_all_things1)
    elseif facplatstep == false then
        love.graphics.print("________________",3010 + the_offset_of_all_things,425 + the_offset_of_all_things1)
    end
    love.graphics.setColor(0,0.9,0)
    if flashofawakening + 30 > intro_num and flashofawakening ~= 0 then
        love.graphics.setColor(0,0,0)
    end

    if cat.wayfacing == true then
        if cat.frame == 0 then
            love.graphics.print("              /\\\n          __ ( 'i\n    __,-|\"_   _/\n \"\"'    \\||\"\"\\|| \n        \"--  \"--",cat.x,cat.y)
        elseif cat.frame == 1 then
            love.graphics.print("              /\\\n          __ ( 'i\n __,---\"|\"_   _/\n        \\|\\\"\"\\||\n        \"-\"- \"--",cat.x,cat.y)
        elseif cat.frame == 2 then
            love.graphics.print("              /\\\n          __ ( 'i\n --,__,-|\"_   _/\n        \\|\\\"\"\\|\\\n        \"-\"- \"-\"-",cat.x,cat.y)
        elseif cat.frame == 3 then
            love.graphics.print("              /\\\n          __ ( 'i\n '\"\"--,-|\"_   _/\n        \\||\"\"\\||\n        \"--  \"--",cat.x,cat.y)
        elseif cat.frame == 4 then
            love.graphics.print("              /\\\n          __ ( 'i\n --,__,-|\"_   _/\n        \\||\"\" \\|\n        \"--   \"~",cat.x,cat.y)
        elseif cat.frame == 5 then
            love.graphics.print("              /\\\n          __ ( 'i\n __,---\"|\"_   _/\n         \\|\"\" \\|\n         \"~   \"~",cat.x,cat.y)
        elseif cat.frame == 7 then
            love.graphics.print("     ,        /\\\n     |    __ ( 'i\n      \"-|\"_   _/\n        \\||\"\"\\|| \n        \"±±  \"±±",cat.x,cat.y)
        elseif cat.frame == 8 then
            love.graphics.print("              /\\\n            _( 'i\n..,__  ,-**\" .;'_,.\n     `\",**==^^\"`\n      ,*",cat.x,cat.y)
        elseif cat.frame == 9 then
            love.graphics.print("              /\\\n           _.( 'i\n '\"\"--,-/*\" . ;'\n       +'  ''*`±+=.\n      *'",cat.x,cat.y)
        elseif cat.frame == 10 then
            love.graphics.print("              /\\\n _      ,.,__( 'i\n  \"\"---` _  . ;'\n     _;±'  \"'*L,\n               '\"",cat.x,cat.y)
        elseif cat.frame == 11 then
            love.graphics.print("              /\\\n        _,--,( 'i\n __,--~| ) _\\-^`\n         \"   \"",cat.x,cat.y + 25)
        elseif cat.frame == 12 then
            love.graphics.print("",cat.x,cat.y)
        elseif cat.frame == 13 then
            love.graphics.print("            /\\\n           ( 'i,,\n           ;  //\n          /  ;\n         /  ]\n     -,_/ //\n         \"\"",cat.x,cat.y - 30)
        elseif cat.frame == 14 then
            love.graphics.print("",cat.x,cat.y + 20)
       end        

    elseif cat.wayfacing == false then
        if cat.frame == 0 then
            love.graphics.print(" /\\\n(' ) __\n \\_   _\"|-,__ \n ||/\"\"||/    '\"\"\n --\"  --\"",cat.x + 70,cat.y)
        elseif cat.frame == 1 then
            love.graphics.print(" /\\\n(' ) __\n \\_   _\"|\"---,__\n ||/\"\"/|/\n --\" -\"-\"",cat.x + 70,cat.y)
        elseif cat.frame == 2 then
            love.graphics.print(" /\\\n(' ) __\n \\_   _\"|-,__,--\n  /|\"\"/|/\n -\"-\" -\"-\"",cat.x + 70,cat.y)
        elseif cat.frame == 3 then
            love.graphics.print(" /\\\n(' ) __\n \\_   _\"|-,--\"\"'\n ||/\"\"||/\n --\"  --\"",cat.x + 70,cat.y)
        elseif cat.frame == 4 then
            love.graphics.print(" /\\\n(' ) __\n \\_   _\"|-,__,--\n |/ \"\"||/\n ~\"   --\"",cat.x + 70,cat.y)
        elseif cat.frame == 5 then
            love.graphics.print(" /\\\n(' ) __\n \\_   _\"|---,__\n |/ \"\"|/\n ~\"  ~\"",cat.x + 70,cat.y)
        elseif cat.frame == 7 then
            love.graphics.print(" /\\        ,\n(' ) __    |\n \\_   _\"|-\"\n ||/\"\"||/\n ±±\"  ±±\"",cat.x + 70,cat.y)
        elseif cat.frame == 8 then
            love.graphics.print("   /\\\n  (' )_\n.,_';. \"**-,  __,..\n   `\"^^==**,\"`\n           *,",cat.x + 40,cat.y)
        elseif cat.frame == 9 then
            love.graphics.print("   /\\\n  (' )._\n   '; . \"*\\-,--\"\"'\n.=+±`*''  '+\n           '*",cat.x + 40,cat.y)
        elseif cat.frame == 10 then
            love.graphics.print("  /\\\n (' )__,.,      _\n  '; .  _ `---\"\"\n  ,J*'\"  '±;_\n'\"'",cat.x + 40,cat.y)
        elseif cat.frame == 11 then
            love.graphics.print(" /\\\n(' ),--,_\n `^-/_ ( |~--,__\n   \"    \"",cat.x + 70,cat.y + 25)
        elseif cat.frame == 12 then
            love.graphics.print("",cat.x,cat.y)
        elseif cat.frame == 13 then
            love.graphics.print("         /\\\n      ,,i' )\n       \\\\  ;\n         ;  \\\n          [  \\\n           \\\\ \\_,-\n            \"\"",cat.x,cat.y - 30)
       end
    end
    love.graphics.setColor(0.9,0.9,0.9)
end