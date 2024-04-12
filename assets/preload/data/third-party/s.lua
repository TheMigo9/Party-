function onUpdate()--hud created by mrinsanoxd
            setTextString('botplayTxt', 'TyphoFunkin')
        end
       
function onCreatePost()
    doTweenAlpha('camGameOff' ,'camGame', 0, 0.00000001, 'linear')
end

function onBeatHit()
	if curBeat == 8 then 
    doTweenAlpha('camGameOff' ,'camGame', 1, 0.00000001, 'linear')
	end
end

function onCreatePost() -- no countdown
	setProperty('startTimer.finished', true);
end

function onSongStart()
    setProperty("timeBar.color",getColorFromHex("FF0000"))
end

function onUpdatePost(elapsed)
    setProperty('healthBar.flipX',true)
    setProperty('healthBar.x',75)
    setProperty('timeBar.x',775)
    setProperty('healthBar.y', 700)
    setProperty('timeTxt.x',775)
    setProperty('iconP1.x', 25)
    setProperty('scoreTxt.y', 660)
    setProperty('scoreTxt.x', -180)
    setProperty('iconP1.flipX',true)
    setProperty('iconP1.y', 610)
    setProperty('iconP2.visible', false)
end

function onCreate()
    makeLuaText('watermark', "OPTIMIZED BY MRINSANOXD", 0, 0, 0);
    setTextSize('watermark', 20);
    addLuaText('watermark');
    
end