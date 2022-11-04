function onCountdownTick(counter)
	if counter == 1 then
		doTweenZoom('wizoom', 'camGame', getProperty('defaultCamZoom') + 0.3, 0.005, 'cubeInOut')
	end
	if counter == 2 then
		doTweenZoom('wizoom', 'camGame', getProperty('defaultCamZoom') + 0.3, 0.005, 'cubeInOut')
	end
	if counter == 3 then
		doTweenZoom('wizoom', 'camGame', getProperty('defaultCamZoom') + 0.3, 0.005, 'cubeInOut')
	end
end

function onTweenCompleted(tag, loops, loopsLeft)
	if tag == 'wizoom' then
		doTweenZoom('wizoomend', 'camGame', getProperty('defaultCamZoom'), 0.2, 'cubeInOut')
	end
end