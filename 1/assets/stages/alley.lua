function onCreate()
	makeLuaSprite('alley', 'alley/Alley', 0, 0)
	setScrollFactor('alley', 1, 1)
	addLuaSprite('alley', false)

	makeLuaSprite('alley forground', 'alley/alley forground', -400, -200)
	setScrollFactor('alley forground', 0.6, 0.6)
	addLuaSprite('alley forground', true)
	
	--makeAnimatedLuaSprite('newfireglow', 'pow/newfireglow', 650, 400)
	--addAnimationByPrefix('newfireglow', 'FireStage', 'FireStage', 20, true)
	--addLuaSprite('newfireglow', false)
    --setObjectOrder('newfireglow', 2)
    --setProperty('newfireglow.alpha', 0.7)
end