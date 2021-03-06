-- Call up the bar
--require("bar")

-- Window borders
-- require("border")

-- Hotkey mash
local mash = {"cmd", "alt"}
local mash_move = {"cmd", "ctrl"}
local mashed = {"cmd", "alt", "ctrl"}

-- Reload config
hs.hotkey.bind(mash, "R", function()
  hs.reload()
end)
hs.alert("Reloaded Config")

-- instant window resizing
hs.window.animationDuration = 0

-- Focus
-- next window right
hs.hotkey.bind(mashed, "Right", function()
    local win = hs.window.focusedWindow()
    if (win == nil) then return end
    win:focusWindowEast()
end)
-- next window left
hs.hotkey.bind(mashed, "Left", function()
    local win = hs.window.focusedWindow()
    if (win == nil) then return end
    win:focusWindowWest()
end)
-- next window up
hs.hotkey.bind(mashed, "Up", function()
    local win = hs.window.focusedWindow()
    if (win == nil) then return end
    win:focusWindowNorth()
end)
-- next window down
hs.hotkey.bind(mashed, "Down", function()
    local win = hs.window.focusedWindow()
    if (win == nil) then return end
    win:focusWindowSouth()
end)

-- Resize window to tile horizontally
hs.hotkey.bind(mash, "Left", function()
  local win = hs.window.focusedWindow()
  if (win == nil) then return end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 30
  f.y = max.y + 40
  f.w = max.w / 2 - 40
  f.h = max.h - 80
  win:setFrame(f)
end)

-- Resize window to tile horizontally
hs.hotkey.bind(mash, "Right", function()
  local win = hs.window.focusedWindow()
  if (win == nil) then return end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + max.w / 2 + 10
  f.y = max.y + 40
  f.w = max.w / 2 - 40
  f.h = max.h - 80
  win:setFrame(f)
end)

-- Resize window to tile vertically
hs.hotkey.bind(mash, "Up", function()
  local win = hs.window.focusedWindow()
  if (win == nil) then return end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 30
  f.y = max.y + 40
  f.w = max.w - 60
  f.h = max.h / 2 - 50
  win:setFrame(f)
end)

-- Resize window to tile vertically
hs.hotkey.bind(mash, "Down", function()
  local win = hs.window.focusedWindow()
  if (win == nil) then return end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 30
  f.y = max.y + (max.h / 2) + 10
  f.w = max.w - 60
  f.h = max.h / 2 - 50
  win:setFrame(f)
end)

-- left, upper corner
hs.hotkey.bind(mash, "pad7", function()
    local win = hs.window.focusedWindow()
    if (win == nil) then return end
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + 30
    f.y = max.y + 40
    f.w = max.w / 2 - 40
    f.h = max.h / 2 - 60
    win:setFrame(f)
end)

-- Right, lower corner
hs.hotkey.bind(mash, "pad3", function()
    local win = hs.window.focusedWindow()
    if (win == nil) then return end
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2) + 10
    f.y = max.y + (max.h / 2) + 10
    f.w = max.w / 2 - 40
    f.h = max.h / 2 - 50
    win:setFrame(f)
end)

-- Right upper corner
hs.hotkey.bind(mash, "pad9", function()
    local win = hs.window.focusedWindow()
    if (win == nil) then return end
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2) + 10
    f.y = max.y + 40
    f.w = max.w / 2 - 40
    f.h = max.h / 2 - 60
    win:setFrame(f)
end)

-- Left lower corner
hs.hotkey.bind(mash, "pad1", function()
    local win = hs.window.focusedWindow()
    if (win == nil) then return end
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + 30
    f.y = max.y + (max.h / 2) + 10
    f.w = max.w / 2 - 40
    f.h = max.h / 2 - 50
    win:setFrame(f)
end)

-- Basic movement: Arrow Keys
-- Up, Down, Left, Right
-- Num Pad: 7, 9, 1, 3

hs.hotkey.bind(mash_move, "Left", function()
        local win = hs.window.focusedWindow()
        if (win == nil) then return end
        local f = win:frame()
        f.w = f.w - 20
        win:setFrame(f)
end)

hs.hotkey.bind(mash_move, "Right", function()
        local win = hs.window.focusedWindow()
        if (win == nil) then return end
        local f = win:frame()
        f.w = f.w + 20
        win:setFrame(f)
end)

hs.hotkey.bind(mash_move, "Down", function()
        local win = hs.window.focusedWindow()
        if (win == nil) then return end
        local f = win:frame()
        f.h = f.h + 20
        win:setFrame(f)
end)

hs.hotkey.bind(mash_move, "Up", function()
        local win = hs.window.focusedWindow()
        if (win == nil) then return end
        local f = win:frame()
        f.h = f.h - 20
        win:setFrame(f)
end)

-- Basic movement

hs.hotkey.bind(mash_move, "K", function()
      local win = hs.window.focusedWindow()
      if (win == nil) then return end
      local f = win:frame()
      f.y = f.y - 10
      win:setFrame(f)
end)

hs.hotkey.bind(mash_move, "H", function()
      local win = hs.window.focusedWindow()
      if (win == nil) then return end
      local f = win:frame()
      f.x = f.x - 10
      win:setFrame(f)
end)

hs.hotkey.bind(mash_move, "L", function()
      local win = hs.window.focusedWindow()
      if (win == nil) then return end
      local f = win:frame()
      f.x = f.x + 10
      win:setFrame(f)
end)

hs.hotkey.bind(mash_move, "J", function()
      local win = hs.window.focusedWindow()
      if (win == nil) then return end
      local f = win:frame()
      f.y = f.y + 10
      win:setFrame(f)
end)

-- Fullscreen
hs.hotkey.bind(mash, "pad5", function()
  local win = hs.window.focusedWindow()
  if (win == nil) then return end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 30
  f.y = max.y + 40
  f.w = max.w - 60
  f.h = max.h - 80
  win:setFrame(f)
end)

-- Fullscreen
hs.hotkey.bind(mash, "G", function()
  local win = hs.window.focusedWindow()
  if (win == nil) then return end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 30
  f.y = max.y + 40
  f.w = max.w - 60
  f.h = max.h - 80
  win:setFrame(f)
end)

-- Launch Iterm2
--hs.hotkey.bind(mash, "T", function() os.execute("/Applications/iTerm.app/Contents/MacOS/iTerm2 --new-window &") 
--end)

-- Multi monitor
-- Move Next / Preivous Screen
hs.hotkey.bind(mash_move, "N", hs.grid.pushWindowNextScreen)
hs.hotkey.bind(mash_move, "P", hs.grid.pushWindowPrevScreen)
