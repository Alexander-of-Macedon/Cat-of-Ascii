function intro() 
    moving_mountian = -35
    if intro_num < 90 then
        dialouge_talk = true
        moving_mountian = moving_mountian +   intro_num
        love.graphics.setFont(gameFont)
        if intro_num == 3 then
            current_colourr = 0.2
            current_colourb = 0.2
            current_coloury = 0.2
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 9 then
            current_colourr = 0.5
            current_colourb = 0.5
            current_coloury = 0.5
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 15 then
            current_colourr = 0.7
            current_colourb = 0.7
            current_coloury = 0.7
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 21 then
            current_colourr = 0.9
            current_colourb = 0.9
            current_coloury = 0.9
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 75 then
            current_colourr = 0.7
            current_colourb = 0.7
            current_coloury = 0.7
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 81 then
            current_colourr = 0.5
            current_colourb = 0.5
            current_coloury = 0.5
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num >= 88 then
            current_colourr = 0.2
            current_colourb = 0.2
            current_coloury = 0.2
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
                dialouge_talk = false
                dialouge_switch = true
                dialouge_num = 2
        end       
        love.graphics.print("                       .-.                 _   ",moving_mountian,100)
        love.graphics.print("\n                      /  |               _/ \\           ",moving_mountian,100)
        love.graphics.print("\n\n        _        .--'\\/\\_ \\             /    \\     ___",moving_mountian,100)
        love.graphics.print("\n\n\n       / \\_    _/ ^      \\/\\ __        /\\/\\  /\\ __/   \\ ",moving_mountian,100)
        love.graphics.print("\n\n\n\n      /    \\  /    .'   _/  /  \\     /    \\/  \\/ .`'\\_/\\  ",moving_mountian,100) 
        love.graphics.print("\n\n\n\n\n     /\\/\\  /\\/ :' __  ^/  ^/    `--./.'  ^  `-.\\ _    _:\\ _",moving_mountian,100)
        love.graphics.print("\n\n\n\n\n\n    /    \\/  \\  _/  \\-' __/.' ^ _   \\_   .'\\   _/ \\ .  __/ \\",moving_mountian,100)
        love.graphics.print("\n\n\n\n\n\n\n  /\\  .-   `. \\/     \\ / -.   _/ \\ -. `_/   \\ /    `._/  ^  \\",moving_mountian,100)
        love.graphics.print("\n\n\n\n\n\n\n\n /  `-.__ ^   / .-'.--'    . /    `--./ .-'  `-.  `-. `.  -  `.",moving_mountian,100)
        love.graphics.print("\n\n\n\n\n\n\n\n\n/        `.  / /      `-.   /  .-'   / .   .'   \\    \\  \\  .-  \\",moving_mountian,100)
    end
    if intro_num > 91 and intro_num < 130 then
        dialouge_talk = true
        love.graphics.setFont(gameFont)
        current_colourr = 1
        current_colourb = 1
        current_coloury = 1
        if intro_num == 95 then
        love.graphics.print("          3$$$$$\"\n         z$$$$P\n        d$$$$\"\n      .$$$$$\"\n     z$$$$$\"\n    z$$$$P\n   d$$$$$$$$$$\"\n  *******$$$\"\n       .$$$\"\n      .$$\"\n      .$$\"\n     z$\"\n     z$\"\n    z\"\n   /  ",300,25)
        elseif intro_num == 97 or intro_num == 98 then
            love.graphics.print("          3$$$$$\"\n         z$$$$P\n        d$$$$\"\n      .$$$$$\"\n     z$$$$$\"\n    z$$$$P\n   d$$$$$$$$$$\"\n  *******$$$\"\n       .$$$\"\n      .$$\"\n      .$$\"\n     z$\"\n     z$\"\n    z\"\n   /  ",300,25)
        elseif intro_num == 105 then
                love.graphics.print("          3$$$$$\"\n         z$$$$P\n        d$$$$\"\n      .$$$$$\"\n     z$$$$$\"\n    z$$$$P\n   d$$$$$$$$$$\"\n  *******$$$\"\n       .$$$\"\n      .$$\"\n      .$$\"\n     z$\"\n     z$\"\n    z\"\n   /  ",300,25)
        elseif intro_num == 106 or intro_num == 107 or intro_num == 108 or intro_num == 109 or intro_num == 110 then
            love.graphics.print("          3$$$$$\"\n         z$$$$P\n        d$$$$\"\n      .$$$$$\"\n     z$$$$$\"\n    z$$$$P\n   d$$$$$$$$$$\"\n  *******$$$\"\n       .$$$\"\n      .$$\"\n      .$$\"\n     z$\"\n     z$\"\n    z\"\n   /  ",300,25)
        elseif intro_num == 124 then
            love.graphics.print("          3$$$$$\"\n         z$$$$P\n        d$$$$\"\n      .$$$$$\"\n     z$$$$$\"\n    z$$$$P\n   d$$$$$$$$$$\"\n  *******$$$\"\n       .$$$\"\n      .$$\"\n      .$$\"\n     z$\"\n     z$\"\n    z\"\n   /  ",300,25)
        elseif intro_num == 129 then
            dialouge_talk = false
            dialouge_switch = true
            dialouge_num = 3
        end
    end         

    if intro_num > 131 and intro_num < 200 then
        moving_mountian = -240
        moving_mountian = moving_mountian +   intro_num
        dialouge_talk = true
        love.graphics.setFont(gameFont)
        current_colourr = 1
        current_colourb = 1
        current_coloury = 1
        if intro_num > 131 and intro_num < 199 then
        love.graphics.print("                     ___\n                    /   \\              /'\\       _\n\\_..           /'.,/     \\_         .,'   \\     / \\_\n    \\         /            \\      _/       \\_  /    \\     _\n     \\__,.   /              \\    /           \\/.,   _|  _/ \\\n          \\_/                \\  /',.,''\\      \\_ \\_/  \\/    \\\n                           _  \\/   /    ',../',.\\    _/      \\\n             /           _/%\\  \\  /    |         \\  /.,/'\\   _\\\n           _/           /%%%%\\  \\_     |          \\/      \\_/  \\\n          /      \\     |%%%%%%|   \\__   \\          \\_       \\   \\_\n                  \\   /%%%%%%%|      \\   \\           \\       \\    \\\n                   \\  |%%%%%%%%\\      \\___            \\_      \\_   \\\n                    \\|%%%%%%%%%%|____.'  /\\_            \\       \\   \\_\n                    /'.,___________...,,'   \\            \\   \\   |     \\\n                   /       \\          |      \\    |__     \\   \\_  \\     \\\n",moving_mountian,25)
            dialouge_talk = true
        elseif intro_num == 199 then
            dialouge_talk = false
            dialouge_num = dialouge_num + 1
            dialouge_switch = true
            stage = "intro_dragon"
        end
    end
end