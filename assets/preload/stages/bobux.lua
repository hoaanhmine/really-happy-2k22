local xx = 420.95;
local yy = 413;
local xx2 = 952.9;
local yy2 = 650;
local ofs = 60;
local followchars = true;

function onCreate()
	makeLuaSprite('VecindarioBG-old', 'VecindarioBG-old', -550, -200);
	addLuaSprite('VecindarioBG-old', false);
	setProperty('VecindarioBG-old.alpha', 0)

	makeLuaSprite('VecindarioBG', 'VecindarioBG', -550, -200);
	setScrollFactor('VecindarioBG', 0.9, 0.9);
	addLuaSprite('VecindarioBG', false);

	makeLuaSprite('Destruido', 'Destruido', -1000, -360);
	scaleObject('Destruido', 1.4, 1.4);
	setProperty('Destruido.alpha', 0)

	addLuaSprite('Destruido', false);
	
	addCharacterToList('suicide', 'dad')
	addCharacterToList('mouse-smile-old', 'dad')
	addCharacterToList('bf-retro', 'boyfriend')
	
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dsides')
	
	precacheImage('white')
	precacheImage('black')
end

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'risa' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
			end
        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
		end
	end
	if curStep == 127 then
		setProperty('VecindarioBG.alpha', 0)
		setProperty('Destruido.alpha', 1)
		setProperty('defaultCamZoom', 0.5)

		makeLuaSprite('bartop', '', -750, -1160)
		makeGraphic('bartop', 3420, 1080, '000000')
		addLuaSprite('bartop', true)
		setObjectCamera('bartop', 'camera')
		setScrollFactor('bartop', 0, 0)

		makeLuaSprite('barbot', '', -750, 860)
		makeGraphic('barbot', 3420, 1080, '000000')
		addLuaSprite('barbot', true)
		setScrollFactor('barbot', 0, 0)
		setObjectCamera('barbot', 'camera')
	end
	if curStep == 384 then
		setProperty('VecindarioBG-old.alpha', 1)
		setProperty('Destruido.alpha', 0)
		triggerEvent('Change Character', '0', 'bf-retro')
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-retro')
		setProperty('defaultCamZoom', 0.7)
		yy2 = 550;
	end
	if curStep == 512 then
		setProperty('VecindarioBG-old.alpha', 0)
		setProperty('Destruido.alpha', 1)
		triggerEvent('Change Character', '0', 'bf-dsides')
		triggerEvent('Change Character', '1', 'suicide')
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dsides')
		setProperty('defaultCamZoom', 0.5)
		yy2 = 650;
	end
	if curStep == 640 then
		setProperty('VecindarioBG-old.alpha', 1)
		setProperty('Destruido.alpha', 0)
		triggerEvent('Change Character', '0', 'bf-retro')
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-retro')
		triggerEvent('Change Character', '1', 'mouse-smile-old')
		setProperty('defaultCamZoom', 0.7)
		yy2 = 550;
	end
	if curStep == 784 then
		setProperty('VecindarioBG-old.alpha', 0)
		setProperty('Destruido.alpha', 0)
		setProperty('camHUD.alpha', 0)
		setProperty('boyfriend.alpha', 0)
		setProperty('defaultCamZoom', 0.9)
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dsides')
		triggerEvent('Change Character', '0', 'bf-dsides')
		makeLuaSprite('antonio pripizduchi', 'white', -500, -100)
		addLuaSprite('antonio pripizduchi', false)
		scaleObject('antonio pripizduchi', 25, 10)
	end
	if curStep == 930 then
		setProperty('Destruido.alpha', 1)
		triggerEvent('Change Character', '0', 'bf-dsides')
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dsides')
		setProperty('defaultCamZoom', 0.5)
		yy2 = 650;
		removeLuaSprite('antonio pripizduchi', true)
		doTweenAlpha('idkshitty2', 'camHUD', 1, 0.1, 'smoothIn')
	end
	if curStep == 1003 then
		doTweenAlpha('idkshitty', 'boyfriend', 1, 1, 'smoothIn')
	end
	if curStepp == 1679 then
		doTweenAlpha('idkshitty3', 'cam', 0, 7, 'smoothIn')
	end
end

function opponentNoteHit()
	if dadName == 'mouse-smile' or dadName == 'mouse-smile-old' then
	else
		triggerEvent('Screen Shake', '0.09, 0.01', '0.09, 0.01')
	end
end