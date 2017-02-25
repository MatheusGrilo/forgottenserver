function onSay(player, words, param)
	if(param == "off") then
		if(player:isLiveCasting()) then
			player:stopLiveCasting()
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have stopped your live cast.")
		end
	else
		if not(player:isLiveCasting()) then
			local password = param:trim()
			password = password:gsub('%W','')
			if(password:len() > 30) then
				player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Invalid cast password. Your password may not exceed 30 characters in length.")
				return false
			end
			player:startLiveCasting(param)
			player:sendChannelMessage("", "You have started a live cast. To stop live cast, simply type " .. words .. " off (not possible in cast channel)", TALKTYPE_CHANNEL_O, CHANNEL_CAST)
			if(password:len() > 0) then
				player:sendChannelMessage("", "Your cast password is: " .. password .. "", TALKTYPE_CHANNEL_O, CHANNEL_CAST)
			end
			player:sendChannelMessage("", "To view a list of available live cast commands, type /commands in the cast channel.", TALKTYPE_CHANNEL_O, CHANNEL_CAST)
		end
	end
	return false
end