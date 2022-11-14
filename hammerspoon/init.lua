local meh = {'ctrl', 'alt', 'shift'}
local hyper = {'ctrl', 'alt', 'shift', 'cmd'}

hs.hotkey.bind(meh, 'n', function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
    center.x = center.x - center.x / 2
    hs.mouse.absolutePosition(center)
    hs.eventtap.leftClick(hs.mouse.absolutePosition(), 50)
end)

hs.hotkey.bind(meh, 'h', function()
    local screen = hs.mouse.getCurrentScreen()

    if screen:name() == 'Built-in Retina Display' then
        hs.eventtap.keyStroke(hyper, 'h', 20000)
    else
        local rect = screen:fullFrame()
        local center = hs.geometry.rectMidPoint(rect)
        center.x = center.x - center.x / 2
        hs.mouse.absolutePosition(center)
        hs.eventtap.leftClick(hs.mouse.absolutePosition(), 50)
    end
end)

hs.hotkey.bind(meh, 'l', function()
    local screen = hs.mouse.getCurrentScreen()

    if screen:name() == 'Built-in Retina Display' then
        hs.eventtap.keyStroke(hyper, 'l', 20000)
    else
        local rect = screen:fullFrame()
        local center = hs.geometry.rectMidPoint(rect)
        center.x = center.x + center.x / 2
        hs.mouse.absolutePosition(center)
        hs.eventtap.leftClick(hs.mouse.absolutePosition(), 50)
    end
end)