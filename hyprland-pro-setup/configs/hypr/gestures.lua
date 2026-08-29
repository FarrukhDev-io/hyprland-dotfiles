-------------------------------------------------------
-- Gestures (Advanced Trackpad Magic)
-------------------------------------------------------

-- 1. Workspaces (Chapga va O'ngga 3-barmoqli o'tish)
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- 2. Mission Control (Tepaga 3-barmoqli tortish orqali barcha oynalarni ko'rish)
hl.gesture({
    fingers = 3,
    direction = "vertical",
    action = function ()
        hl.dispatch(hl.dsp.exec_cmd("pkill -x rofi || rofi -show window"))
    end
})

-- 3. Fullscreen Yoyish (4-barmoq bilan Pinch-out)
hl.gesture({ 
    fingers = 4, 
    direction = "pinchout", 
    action = function ()
        hl.dispatch(hl.dsp.window.fullscreen({ action="set" })) 
    end
})

-- 4. Fullscreen Yig'ish (4-barmoq bilan Pinch-in)
hl.gesture({ 
    fingers = 4, 
    direction = "pinchin", 
    action = function ()
        hl.dispatch(hl.dsp.window.fullscreen({ action="unset" })) 
    end
})
