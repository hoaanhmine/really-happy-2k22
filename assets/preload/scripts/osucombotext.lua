leftright = "downright" --can be "downright" or "downleft", also for up there's "upright" and "upleft"
customfont = "" --put the name here of your font (on the mods/fonts folder) to have your custom font (just set "" with nothing to use default font)

function onCreatePost()
    if leftright == "downright" then
    makeLuaText("osucombo", "0x", 500, 775, 620) --left: 0 right: 775
    setTextSize("osucombo", 100)
    setTextAlignment("osucombo", "right")
    addLuaText('osucombo')
    makeLuaText("osucombosh", "0x", 500, 775, 620) --left: 0 right: 775
    setTextSize("osucombosh", 100)
    setTextAlignment("osucombosh", "right")
    addLuaText('osucombosh')
    setProperty('osucombosh.alpha', 0)
    elseif leftright == "downleft" then
        makeLuaText("osucombo", "0x", 500, 0, 620) --left: 0 right: 775
        setTextSize("osucombo", 100)
        setTextAlignment("osucombo", "left")
        addLuaText('osucombo')
        makeLuaText("osucombosh", "0x", 500, 0, 620) --left: 0 right: 775
        setTextSize("osucombosh", 100)
        setTextAlignment("osucombosh", "left")
        addLuaText('osucombosh')
        setProperty('osucombosh.alpha', 0)
    elseif leftright == "upleft" then
        makeLuaText("osucombo", "0x", 500, 0, 0) --left: 0 right: 775
        setTextSize("osucombo", 100)
        setTextAlignment("osucombo", "left")
        addLuaText('osucombo')
        makeLuaText("osucombosh", "0x", 500, 0, 620) --left: 0 right: 775
        setTextSize("osucombosh", 100)
        setTextAlignment("osucombosh", "left")
        addLuaText('osucombosh')
        setProperty('osucombosh.alpha', 0)
    elseif leftright == "upright" then
        makeLuaText("osucombo", "0x", 500, 775, 0) --left: 0 right: 775
        setTextSize("osucombo", 100)
        setTextAlignment("osucombo", "right")
        addLuaText('osucombo')
        makeLuaText("osucombosh", "0x", 500, 775, 0) --left: 0 right: 775
        setTextSize("osucombosh", 100)
        setTextAlignment("osucombosh", "right")
        addLuaText('osucombosh')
        setProperty('osucombosh.alpha', 0)
    end
    debugPrint(getTextFont("osucombo"))
    if customfont == "" then
    else
    setTextFont("osucombo", customfont)
    setTextFont("osucombosh", customfont)
    end
end

function onUpdatePost(elapsed)
    setTextString("osucombosh", getProperty("combo") .. "x")
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        if leftright == "downright" then
        setProperty("osucombo.scale.x", 1.25)
        setProperty("osucombo.scale.y", 1.25)
        setProperty("osucombo.x", 725) --left: 50 right: 725
        setProperty("osucombo.y", 610)
        doTweenX("osuxs", "osucombo.scale", 1, 0.25, "linear")
        doTweenY("osuys", "osucombo.scale", 1, 0.25, "linear")
        doTweenX("osux", "osucombo", 775, 0.25, "linear")
        doTweenY("osuy", "osucombo", 620, 0.25, "linear")
        setTextString("osucombo", getProperty("combo")-1 .. "x")
        runTimer("combocauter", 0.25)
        setProperty("osucombosh.scale.x", 1.75)
        setProperty("osucombosh.scale.y", 1.75)
        setProperty("osucombosh.x", 600) --left: 50 right: 725
        setProperty("osucombosh.y", 590)
        setProperty('osucombosh.alpha', 0.5)
        doTweenX("osuxss", "osucombosh.scale", 1, 0.25, "linear")
        doTweenY("osuyss", "osucombosh.scale", 1, 0.25, "linear")
        doTweenX("osuxsh", "osucombosh", 775, 0.25, "linear")
        doTweenY("osuysh", "osucombosh", 620, 0.25, "linear")
        doTweenAlpha("osuassh", "osucombosh", 0, 0.25, "linear")
        elseif leftright == "downleft" then
            setProperty("osucombo.scale.x", 1.25)
            setProperty("osucombo.scale.y", 1.25)
            setProperty("osucombo.x", 50) --left: 50 right: 725
            setProperty("osucombo.y", 610)
            doTweenX("osuxs", "osucombo.scale", 1, 0.25, "linear")
            doTweenY("osuys", "osucombo.scale", 1, 0.25, "linear")
            doTweenX("osux", "osucombo", 0, 0.25, "linear")
            doTweenY("osuy", "osucombo", 620, 0.25, "linear")
            setTextString("osucombo", getProperty("combo")-1 .. "x")
            runTimer("combocauter", 0.25)
            setProperty("osucombosh.scale.x", 1.75)
            setProperty("osucombosh.scale.y", 1.75)
            setProperty("osucombosh.x", 175) --left: 50 right: 725
            setProperty("osucombosh.y", 590)
            setProperty('osucombosh.alpha', 0.5)
            doTweenX("osuxss", "osucombosh.scale", 1, 0.25, "linear")
            doTweenY("osuyss", "osucombosh.scale", 1, 0.25, "linear")
            doTweenX("osuxsh", "osucombosh", 0, 0.25, "linear")
            doTweenY("osuysh", "osucombosh", 620, 0.25, "linear")
            doTweenAlpha("osuassh", "osucombosh", 0, 0.25, "linear")
        elseif leftright == "upleft" then
            setProperty("osucombo.scale.x", 1.25)
            setProperty("osucombo.scale.y", 1.25)
            setProperty("osucombo.x", 50) --left: 50 right: 725
            setProperty("osucombo.y", 10)
            doTweenX("osuxs", "osucombo.scale", 1, 0.25, "linear")
            doTweenY("osuys", "osucombo.scale", 1, 0.25, "linear")
            doTweenX("osux", "osucombo", 0, 0.25, "linear")
            doTweenY("osuy", "osucombo", 0, 0.25, "linear")
            setTextString("osucombo", getProperty("combo")-1 .. "x")
            runTimer("combocauter", 0.25)
            setProperty("osucombosh.scale.x", 1.75)
            setProperty("osucombosh.scale.y", 1.75)
            setProperty("osucombosh.x", 175) --left: 50 right: 725
            setProperty("osucombosh.y", 30)
            setProperty('osucombosh.alpha', 0.5)
            doTweenX("osuxss", "osucombosh.scale", 1, 0.25, "linear")
            doTweenY("osuyss", "osucombosh.scale", 1, 0.25, "linear")
            doTweenX("osuxsh", "osucombosh", 0, 0.25, "linear")
            doTweenY("osuysh", "osucombosh", 0, 0.25, "linear")
            doTweenAlpha("osuassh", "osucombosh", 0, 0.25, "linear")
        elseif leftright == "upright" then
            setProperty("osucombo.scale.x", 1.25)
            setProperty("osucombo.scale.y", 1.25)
            setProperty("osucombo.x", 725) --left: 50 right: 725
            setProperty("osucombo.y", 10)
            doTweenX("osuxs", "osucombo.scale", 1, 0.25, "linear")
            doTweenY("osuys", "osucombo.scale", 1, 0.25, "linear")
            doTweenX("osux", "osucombo", 775, 0.25, "linear")
            doTweenY("osuy", "osucombo", 0, 0.25, "linear")
            setTextString("osucombo", getProperty("combo")-1 .. "x")
            runTimer("combocauter", 0.25)
            setProperty("osucombosh.scale.x", 1.75)
            setProperty("osucombosh.scale.y", 1.75)
            setProperty("osucombosh.x", 600) --left: 50 right: 725
            setProperty("osucombosh.y", 30)
            setProperty('osucombosh.alpha', 0.5)
            doTweenX("osuxss", "osucombosh.scale", 1, 0.25, "linear")
            doTweenY("osuyss", "osucombosh.scale", 1, 0.25, "linear")
            doTweenX("osuxsh", "osucombosh", 775, 0.25, "linear")
            doTweenY("osuysh", "osucombosh", 0, 0.25, "linear")
            doTweenAlpha("osuassh", "osucombosh", 0, 0.25, "linear")
        end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == "combocauter" then
        setTextString("osucombo", getProperty("combo") .. "x")
    end
end

function noteMiss()
    cancelTimer("combocauter")
    setTextString("osucombo", getProperty("combo") .. "x")
end

function noteMissPress()
    cancelTimer("combocauter")
    setTextString("osucombo", getProperty("combo") .. "x")
end