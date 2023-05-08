require('roniepaolo.base')
require('roniepaolo.highlights')
require('roniepaolo.maps')
require('roniepaolo.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('roniepaolo.macos')
end
if is_win == 1 then
  require('roniepaolo.windows')
end
if is_wsl == 1 then
  require('roniepaolo.wsl')
end
