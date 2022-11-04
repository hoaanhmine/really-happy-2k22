local NewHUDVersion = true

function onCreatePost()
	setProperty('botplayTxt.y', 350)
	setProperty('botplayTxt.x', 60)
    setProperty('scoreTxt.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
	setProperty('timeTxt.x', 100)
	setProperty('timeTxt.y', 250)
	makeLuaText('score', 'Score: 0')
	makeLuaText('fuckups', 'Misses: 0')
	makeLuaText('rate', 'Rate: ?')
	setTextAlignment('score', 'left')
	setTextSize('score', 25)
	setProperty('score.x', 200)
	setProperty('score.y', 300)
	addLuaText('score')
	setProperty('fuckups.x', 200)
	setProperty('fuckups.y', 350)
	setTextSize('fuckups', 25)
	addLuaText('fuckups')
	setProperty('rate.x', 200)
	setProperty('rate.y', 400)
	setTextSize('rate', 25)
	addLuaText('rate')
    setProperty('healthBar.visible', false)
    setProperty('healthBarBG.visible', false)
	setProperty('iconP2.visible', false)
	makeLuaText('songnamelol', '' ..songName, 0, 10, 500);
	setTextSize('songnamelol', 25);
	addLuaText('songnamelol');
	makeLuaText('songlen', '', 1000, -220, 379)
	setTextSize('songlen', 25)
end

function onCreate()
    makeLuaText('healthText', '' .. math.floor(getProperty("health") * 50), 90, 80, 450 ..'%')
	makeLuaText('healthTextOpponent', '' .. math.floor(getProperty("health") * 50), 90, 65, 675 ..'%')
    addLuaText('healthText')
    setTextSize('healthText', 25);
end

function onUpdate(elapsed)
    setTextString('healthText', '' .. math.floor(getProperty("health") * 50) ..'%')
	setTextString('healthTextOpponent', '100' - math.floor(getProperty("health") * 50) ..'%')
	if (botPlay) == true then
		setProperty('score.visible', false)
		setProperty('fuckups.visible', false)
		setProperty('rate.visible', false)
	else
		setProperty('score.visible', true)
		setProperty('fuckups.visible', true)
		setProperty('rate.visible', true)
	end
	if getProperty('health') < 0.4 and (not botPlay) then
	    doTweenColor('fuckups', 'fuckups', 'FF0000', 0.2, 'linear')

	    doTweenColor('score', 'score', 'FF0000', 0.2, 'linear')
	
	    doTweenColor('rate', 'rate', 'FF0000', 0.2, 'linear')

	    doTweenColor('healthText', 'healthText', 'FF0000', 0.2, 'linear')

	    doTweenColor('iconP1', 'iconP1', 'FF0000', 0.2, 'linear')

	    doTweenColor('healthTextOpponent', 'healthTextOpponent', 'FF0000', 0.2, 'linear')

	    doTweenColor('iconP2', 'iconP2', 'FF0000', 0.2, 'linear')
	
	    doTweenColor('songnamelol', 'songnamelol', 'FF0000', 0.2, 'linear')
		
	    doTweenColor('timeTxt', 'timeTxt', 'FF0000', 0.2, 'linear')

	    doTweenColor('songlen', 'songlen', 'FF0000', 0.2, 'linear')
	else
	    doTweenColor('fuckups', 'fuckups', 'FFFFFF', 0.2, 'linear')

	    doTweenColor('score', 'score', 'FFFFFF', 0.2, 'linear')
	
	    doTweenColor('rate', 'rate', 'FFFFFF', 0.2, 'linear')

	    doTweenColor('healthText', 'healthText', 'FFFFFF', 0.2, 'linear')

	    doTweenColor('iconP1', 'iconP1', 'FFFFFF', 0.2, 'linear')

	    doTweenColor('healthTextOpponent', 'healthTextOpponent', 'FFFFFF', 0.2, 'linear')

	    doTweenColor('iconP2', 'iconP2', 'FFFFFF', 0.2, 'linear')
	
	    doTweenColor('songnamelol', 'songnamelol', 'FFFFFF', 0.2, 'linear')
		
	    doTweenColor('timeTxt', 'timeTxt', 'FFFFFF', 0.2, 'linear')

	    doTweenColor('songlen', 'songlen', 'FFFFFF', 0.2, 'linear')
	end
	if NewHUDVersion == true then
		setProperty('songnamelol.x', 150)
		setProperty('songnamelol.y', 450)
	end
	setTextString('fuckups', 'Misses: ' .. misses);
	setTextString('score', 'Score: ' .. score);
end

function onUpdatePost()
    setProperty('iconP1.x', 50)
    setProperty('iconP1.y', 275)
	if NewHUDVersion == true then
		addLuaText('songlen', true)
		setProperty('iconP2.visible', true)
		setProperty('iconP2.x', 30)
		setProperty('iconP2.y', 500)
		setProperty('iconP1.x', 200)
		setProperty('iconP1.y', 500)
		setProperty('healthText.x', 212)
		setProperty('healthText.y', 645)
		setProperty('healthTextOpponent.x', 60)
		setProperty('healthTextOpponent.y', 645)
		setProperty('botplayTxt.y', 575)
		setProperty('botplayTxt.x', 240)
		addLuaText('healthTextOpponent')
	    setTextSize('healthTextOpponent', 25);
		setProperty('timeTxt.x', 7)
		setProperty('timeTxt.y', 375)
		setProperty('OpponentName.y', 100)
		setProperty('score.x', 375)
		setProperty('score.y', 525)
		setProperty('fuckups.x', 375)
		setProperty('fuckups.y', 575)
		setProperty('rate.x', 375)
		setProperty('rate.y', 625)
		setTextSize('songnamelol', 30);
		setProperty('songnamelol.x', 55)
		setProperty('songnamelol.y', 450)
		scaleObject('iconP1', 0.9, 0.9);
		scaleObject('iconP2', 0.9, 0.9);
	end
end

function onSongStart()
	local timetut = math.floor(getProperty('songLength')/1000)
	local timee = string.format("%.2d:%.2d", timetut/60%60, timetut%60)
    setTextString('songlen', '/' .. timee)
end

function onRecalculateRating()
	setTextString('rate', 'Rate: ' .. string.format("%.2f%%", rating * 100));
end