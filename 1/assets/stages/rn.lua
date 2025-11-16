function onCreate()
	makeLuaSprite('city', 'city', 0, 0)
	setScrollFactor('city', 0.8, 0.8)
	addLuaSprite('city', false)

	makeLuaSprite('stage', 'stage', 0, 0)
	setScrollFactor('stage', 1, 1)
	addLuaSprite('stage', false)

	makeLuaSprite('chairs', 'chairs', 0, -250)
	setScrollFactor('chairs', 1, 1)
	addLuaSprite('chairs', false)

	makeLuaSprite('tables', 'tables', 0, -250)
	setScrollFactor('tables', 1, 1)
	addLuaSprite('tables', false)

	makeLuaSprite('lamp', 'lamp', 100, 0)
	setScrollFactor('lamp', 1.5, 1.5)
	addLuaSprite('lamp', false)

	makeLuaSprite('forground', 'forground', -200, 0)
	setScrollFactor('forground', 0.8, 0.8)
	addLuaSprite('forground', true)

end

function onCreatePost()
  if songName == 'last-memories' then
		setProperty('chairs.visible', false)
		setProperty('tables.visible', false)

		doTweenX('DAD', 'dad', 1100, 0.001, 'linear')
            
        doTweenY('ermDAD', 'dad', 543, 0.001, 'linear')

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
      

    if songName == 'my-battle' then
		setProperty('chairs.visible', true)
		setProperty('tables.visible', true)
    end
end

function onUpdate()
	if songName == 'last-memories' then
		setProperty('chairs.visible', false)
		setProperty('tables.visible', false)
    end

    if songName == 'my-battle' then
		setProperty('chairs.visible', true)
		setProperty('tables.visible', true)
    end
end