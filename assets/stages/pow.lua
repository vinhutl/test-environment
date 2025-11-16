function onCreate()
	makeLuaSprite('back', 'pow/back', 0, 0)
	setScrollFactor('back', 1, 1)
	addLuaSprite('back', false)

	makeLuaSprite('mid', 'pow/mid', 0, 0)
	setScrollFactor('mid', 1, 1)
	addLuaSprite('mid', false)

    makeLuaSprite('Destroyed_boombox', 'Destroyed_boombox', 0, 0)
    setScrollFactor('Destroyed_boombox', 1, 1)
    addLuaSprite('Destroyed_boombox', false)

    makeLuaSprite('front', 'pow/front', 500, 250)
	setScrollFactor('front', 1.5, 1.5)
	addLuaSprite('front', true)

	makeAnimatedLuaSprite('newfireglow', 'pow/newfireglow', 650, 400)
	addAnimationByPrefix('newfireglow', 'FireStage', 'FireStage', 20, true)
	addLuaSprite('newfireglow', false)
    setObjectOrder('newfireglow', 2)
    setProperty('newfireglow.alpha', 0.7)

    makeAnimatedLuaSprite('newfireglow2', 'pow/newfireglow', 400, 450)
	addAnimationByPrefix('newfireglow2', 'FireStage', 'FireStage', 20, true)
	addLuaSprite('newfireglow2', false)
    setObjectOrder('newfireglow2', 2)
    setProperty('newfireglow2.alpha', 0.7)

    makeAnimatedLuaSprite('newfireglow3', 'pow/newfireglow', 1300, 350)
	addAnimationByPrefix('newfireglow3', 'FireStage', 'FireStage', 20, true)
	addLuaSprite('newfireglow3', false)
    setObjectOrder('newfireglow3', 2)
    setProperty('newfireglow3.alpha', 0.7)
end