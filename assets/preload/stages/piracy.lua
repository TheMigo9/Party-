-- cam shit
local xx = 830;
local yy = 420;
local xx2 = 830;
local yy2 = 420;
local piracyOfs = 70; -- cam ofs
local bfOfs = 65; -- cam ofs
local ofs = 10; -- does not matter
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	-- le bg fuckin shit
	makeLuaSprite('light', 'bgs/Third Party/piracy_bg', -460,-290);
	scaleObject('light',2,2);
	addLuaSprite('light', false);

    makeLuaText('dia','',400,100,100)
    setTextSize('dia',24)
    setTextFont('dia','vcr.ttf')
    addLuaText('dia')
	
precacheImage('menuSTATIC')
precacheImage('static')


	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onCreatePost()
	doTweenColor('rr1r','dadGroup','6754da',0.3,'expoout')
	doTweenColor('saqqed','boyfriendGroup','6754da',0.3,'expoout')
	doTweenColor('werwer','light','6754da',0.3,'expoout')
	for i=0,3 do
		setPropertyFromGroup('strumLineNotes', i, 'visible', false)
		setPropertyFromGroup('strumLineNotes', i, 'x', -300)--getPropertyFromGroup('strumLineNotes', i, 'x') + (i * 200))
		setPropertyFromGroup('strumLineNotes', i, 'y', -150)
	end
	triggerEvent('Camera Follow Pos','830','420')

    makeLuaSprite('overlay','bla',-180,-160)
    setObjectCamera('overlay','camHUD')
    setGraphicSize('overlay',1680)
    addLuaSprite('overlay',true)

    makeLuaText('introText','PIRACY IS A CRIME.',1280,100,-100)
    setTextSize('introText',48)
    setTextFont('introText','vcr.ttf')
    setObjectCamera('introText','camHUD')
    screenCenter('introText','x')
    addLuaText('introText')
	--doTweenColor('rr1rwwww','light','6754da',0.3,'expoout')
end
--tts('victim')
function tts(textAdd)
    lop = lop .. ' ' .. textAdd
    setTextString('dia',lop)
end
function tts2(textAdd)
    screenCenter('introText','x')
    setProperty('overlay.alpha',1)
    setProperty('introText.alpha',1)
    lop = lop .. ' ' .. textAdd
    setTextString('introText',lop)
end

function clear()
    lop = ''
    setTextString('dia',lop)
    setProperty('overlay.alpha',0)
    setProperty('introText.alpha',0)
end

function onStepHit()
    if (curStep == 1) then
        doTweenY('zxczxczxc','introText',334,0.5,'elasticout')
    end
    if (curStep == 26) then
        doTweenAlpha('asdasdassd','overlay',0,0.6)
        doTweenAlpha('asdassadsadassd','introText',0,0.6)
    end
    if (curStep == 416) then
	makeAnimatedLuaSprite('menuSTATIC', 'bgs/Third Party/menuSTATIC', -460, -290);
	addAnimationByPrefix('menuSTATIC', 'menuSTATIC', 'menuSTATIC', 24, true);
	objectPlayAnimation('menuSTATIC', 'menuSTATIC', true);
	setScrollFactor('menuSTATIC', 1, 1);
	scaleObject('menuSTATIC', 2.5, 2.5);
   	addLuaSprite('menuSTATIC', false);
	end
    if (curStep == 672) then
	removeLuaSprite('menuSTATIC');
	end
    if (curStep == 1064) then
    makeAnimatedLuaSprite('static', 'bgs/Third Party/static', -460, -290);
	addAnimationByPrefix('static', 'idle', 'menuSTATICNEW instance 1', 24, true);
	scaleObject('static', 4, 4);	
	addLuaSprite('static', false);
	end
end

function onUpdate(elapsed)
	camshit()
    setShaderFloat("vcr with no glitch", "iTime", os.clock())
    setObjectOrder('boyfriendGroup', getObjectOrder('dadGroup') - 1)
end

function camshit()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
			ofs = piracyOfs;
            yy = 420;

            --if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
            --    triggerEvent('Camera Follow Pos',xx-ofs,yy)
            --end
            --if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
            --    triggerEvent('Camera Follow Pos',xx+ofs,yy)
            --end
            --if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
            --    triggerEvent('Camera Follow Pos',xx,yy-ofs)
            --end
            --if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
            --    triggerEvent('Camera Follow Pos',xx,yy+ofs)
            --end
            --if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
            --    triggerEvent('Camera Follow Pos',xx,yy)
            --end
            --if getProperty('dad.animation.curAnim.name') == 'idle' then
            --    triggerEvent('Camera Follow Pos',xx,yy)
            --end
        else
            setProperty('defaultCamZoom',1.4)
			ofs = bfOfs;
            yy = 300;
            --if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
            --    triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            --end
            --if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
            --    triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            --end
            --if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
            --    triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            --end
            --if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
            --    triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            --end
            --if getProperty('dad.animation.curAnim.name') == 'idle' then
            --    triggerEvent('Camera Follow Pos',xx2,yy2)
            --end
        end

        -- globally applied no matter whos turn it is
        if getProperty('dad.animation.curAnim.name') == 'singUP' then
            triggerEvent('Camera Follow Pos',xx,yy-ofs)
        elseif getProperty('dad.animation.curAnim.name') == 'singDOWN' then
            triggerEvent('Camera Follow Pos',xx,yy+ofs)
        else
            triggerEvent('Camera Follow Pos','830',yy)
        end

        -- bf offsetting
        if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
            setProperty('boyfriend.angle', 14)
            setProperty('boyfriend.x', 520)
            setProperty('boyfriend.y', 150)
        end
        if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
            setProperty('boyfriend.angle', 0)
            setProperty('boyfriend.x', 680)
            setProperty('boyfriend.y', 200)
        end
        if getProperty('dad.animation.curAnim.name') == 'singUP' then
            setProperty('boyfriend.x', 740)
            setProperty('boyfriend.y', 320)
            setProperty('boyfriend.angle', 140)
        end
        if getProperty('dad.animation.curAnim.name') == 'idle' then
            setProperty('boyfriend.angle', 0)
            setProperty('boyfriend.x', 670)
            setProperty('boyfriend.y', 70)
        end
        if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
            setProperty('boyfriend.angle', -10)
            setProperty('boyfriend.x', 800)
            setProperty('boyfriend.y', 170)
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end

function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
        return;
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
            return;
        ]])
        if (temp) then temp() end
    end
end