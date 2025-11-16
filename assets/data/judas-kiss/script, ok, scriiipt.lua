function onUpdate()
	setProperty('dad.visible', false)
	setProperty('iconP2.visible', false)
    
    noteTweenX('oppo0', 0, -1000, 0.01, 'quartInOut')
    noteTweenX('oppo1', 1, -1000, 0.01, 'quartInOut')
    noteTweenX('oppo2', 2, -1000, 0.01, 'quartInOut')
    noteTweenX('oppo3', 3, -1000, 0.01, 'quartInOut')
    noteTweenX('play0', 4, 415, 0.01, 'quartInOut')
    noteTweenX('play1', 5, 525, 0.01, 'quartInOut')
    noteTweenX('play2', 6, 635, 0.01, 'quartInOut')
    noteTweenX('play3', 7, 745, 0.01, 'quartInOut')

end