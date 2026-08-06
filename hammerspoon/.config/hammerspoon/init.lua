-- ============================================================
-- 1. Application Workspace / Display Placement
-- ============================================================

local targetApps = {
    ["com.brave.Browser"]         = true,
    ["com.cmuxterm.app"]          = true,
    ["com.tinyspeck.slackmacgap"] = true,
    ["com.hnc.Discord"]           = true,
    ["com.microsoft.teams2"]      = true,
    ["com.apple.mail"]            = true,
    ["com.apple.finder"]          = true,
    ["com.apple.TextEdit"]        = true,
}

local appWatcher = hs.application.watcher.new(function(appName, eventType, app)
    if eventType == hs.application.watcher.LAUNCHED then
        if targetApps[app:bundleID()] then
            local win = app:mainWindow()
            if win then
                win:moveToScreen(hs.screen.primaryScreen())
            end
        end
    end
end)
appWatcher:start()


-- ============================================================
-- 2. Focus Management (Vim-style: Alt + H/J/K/L)
-- ============================================================

hs.hotkey.bind({"alt"}, "h", function() hs.window.focusedWindow():focusWindowWest() end)
hs.hotkey.bind({"alt"}, "j", function() hs.window.focusedWindow():focusWindowSouth() end)
hs.hotkey.bind({"alt"}, "k", function() hs.window.focusedWindow():focusWindowNorth() end)
hs.hotkey.bind({"alt"}, "l", function() hs.window.focusedWindow():focusWindowEast() end)


-- ============================================================
-- 3. Window Positioning (1/4 Left, 1/2 Center, 1/4 Right)
-- ============================================================

local function positionWindow(preset)
    local win = hs.window.focusedWindow()
    if not win then return end
    
    local f = win:frame()
    local screen = win:screen():frame()

    if preset == "left" then
        -- Left 1/4 (Full height)
        win:setFrame({
            x = screen.x,
            y = screen.y,
            w = screen.w * 0.25,
            h = screen.h
        })
    elseif preset == "center" then
        -- Center 1/2 (Full height)
        win:setFrame({
            x = screen.x + (screen.w * 0.25),
            y = screen.y,
            w = screen.w * 0.50,
            h = screen.h
        })
    elseif preset == "right" then
        -- Right 1/4 (Full height)
        win:setFrame({
            x = screen.x + (screen.w * 0.75),
            y = screen.y,
            w = screen.w * 0.25,
            h = screen.h
        })
    elseif preset == "top" then
        -- Top 1/2 (Keeps current X and W)
        win:setFrame({
            x = f.x,
            y = screen.y,
            w = f.w,
            h = screen.h * 0.5
        })
    elseif preset == "bottom" then
        -- Bottom 1/2 (Keeps current X and W)
        win:setFrame({
            x = f.x,
            y = screen.y + (screen.h * 0.5),
            w = f.w,
            h = screen.h * 0.5
        });
    end
end

-- Horizontal Snapping: 1/4 Left, 1/2 Center, 1/4 Right
hs.hotkey.bind({"alt", "shift"}, "h", function() positionWindow("left") end)
hs.hotkey.bind({"alt", "shift"}, "c", function() positionWindow("center") end)
hs.hotkey.bind({"alt", "shift"}, "l", function() positionWindow("right") end)

-- Vertical Snapping: Top 1/2, Bottom 1/2 (Preserves Width & X position)
hs.hotkey.bind({"alt", "shift"}, "k", function() positionWindow("top") end)
hs.hotkey.bind({"alt", "shift"}, "j", function() positionWindow("bottom") end)

-- ============================================================
-- 4. Quick App Launchers (Alt + Key)
-- ============================================================

local function launchApp(appNameOrBundleID)
    -- Toggles/launches the app or brings it to focus if already running
    hs.application.launchOrFocus(appNameOrBundleID)
end

-- Example Hotkeys:
hs.hotkey.bind({"alt"}, "b", function() launchApp("Brave Browser") end)
hs.hotkey.bind({"alt"}, "t", function() launchApp("cmux") end)
hs.hotkey.bind({"alt"}, "s", function() launchApp("Slack") end)
hs.hotkey.bind({"alt"}, "d", function() launchApp("Discord") end)
hs.hotkey.bind({"alt"}, "m", function() launchApp("Mail") end)
hs.hotkey.bind({"alt"}, "f", function() launchApp("Finder") end)

-- Reload notification
hs.alert.show("Hammerspoon Config Reloaded")
