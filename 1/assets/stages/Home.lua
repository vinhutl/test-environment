function onCreate()
  makeAnimatedLuaSprite('Main_BG', 'idfk/Main_BG', -550, -200)
  addAnimationByPrefix('Main_BG', 'MAIN BG', 'MAIN BG', 15, true)
  addLuaSprite('Main_BG', false)
  setProperty('Main_BG.visible', false)

  makeLuaSprite('Broken_Door_BG', 'idfk/Broken_Door_BG', -500, -325)
  addLuaSprite('Broken_Door_BG', false)
  setProperty('Broken_Door_BG.alpha', 1)

  makeLuaSprite('MAIN_overlay', 'idfk/MAIN_overlay', 0, -75)
  addLuaSprite('MAIN_overlay', true)
  setProperty('MAIN_overlay.alpha', 0.3)
  setObjectCamera('MAIN_overlay', 'HUD')
end

function onUpdate()
	setProperty('dad.visible', false)
	setProperty('gf.visible', false)
	setProperty('iconP2.visible', false)

	if curStep <133 then
      triggerEvent('Camera Follow Pos','40','360')
    end

    if curStep == 249 then
    	setProperty('flash.alpha', 1)
    end

    if curStep == 260 then 
         setProperty('flash.alpha', 0)
    end  

    if curStep >= 260 then
    	setProperty('Main_BG.visible', true)
    	setProperty('Broken_Door_BG.visible', false)
	    setProperty('dad.visible', true)
	    setProperty('iconP2.visible', true)
	end

	if curStep == 1416 then
    	setProperty('flash.alpha', 1)
    end

    if curStep == 1540 then 
        setProperty('flash.alpha', 0)
    end
end

local notePositions = {}

function onCreatePost()
    notePositions = {
        defaultPlayerStrumX0,
        defaultPlayerStrumX1,
        defaultPlayerStrumX2,
        defaultPlayerStrumX3,
        defaultOpponentStrumX0,
        defaultOpponentStrumX1,
        defaultOpponentStrumX2,
        defaultOpponentStrumX3
    }
    
    for i = 1, 8, 1 do
        noteTweenX('noteTween'..i, i-1, notePositions[i], 0.01, 'linear')
    end
    
end