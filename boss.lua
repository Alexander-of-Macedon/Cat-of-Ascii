function boss()
    if boss1 == true then

        if wizard_second + 0.1 < os.clock() then
            if wizardpos < 50 then
                wizardpos = wizardpos + 4 
            end
            if wizard_time == 0 then
                wizard_time = os.clock()
            end
            wizard_second = os.clock()
        end
        if wizardpos >= 50 then
            boss1 = "fight"
        end
        if dragon_action == false and wizardpos <= 50 then
            wizardframe = 1
        end

        if boss1 == "fight" and boss_attack == 0 and character_talk == false then
            if dialouge_num < 19 then
                wizardframe = 1
                dialouge_num = 19
                dialouge_talk = true
                dialouge_switch = true
                dialouge_finished = false
                dialouge_talk = true
                current_dialouge = dialouge[dialouge_num]
            elseif dialouge_num == 20 and dialouge_letter < 40 then
                dialouge_num = 20
                dialouge_talk = true
                dialouge_switch = true
                dialouge_finished = false
                dialouge_talk = true
                current_dialouge = dialouge[dialouge_num]
            elseif dialouge_num == 21 and dialouge_letter < 51 then
                dialouge_num = 21
                dialouge_talk = true
                dialouge_switch = true
                dialouge_finished = false
                dialouge_talk = true
                current_dialouge = dialouge[dialouge_num]
            end
        end
    end
end