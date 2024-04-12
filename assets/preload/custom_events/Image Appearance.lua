function onEvent(name, value1, value2)
	if name == "Image Appearance" then
		makeLuaSprite('image', value1, 0, 0);
		addLuaSprite('image', true);
		setProperty('image.alpha',0)
		doTweenAlpha('flTw','image',1,'linear')
		doTweenColor('hello', 'image', 'FFFFFFFF', 0.000001, 'quartIn');
		setObjectCamera('image', 'other');
		runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'image', 0, 0.000001, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('image', true);
	end
end