function onCreate()
    makeLuaSprite('sea', 'BEACH/anpther/sea', -400, -400)
    addLuaSprite('sea', false)
    setScrollFactor('sea', 1.3, 1.3)
    scaleObject('sea', 1, 1)
end

function onUpdate()
    if curStep <64 then
      triggerEvent('Camera Follow Pos','350','200')
    end
end