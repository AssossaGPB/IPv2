os.unloadAPI(shell.dir() .. "/modules/cache.lua")
os.unloadAPI(shell.dir() .. "/modules/log.lua")
os.unloadAPI(shell.dir() .. "/modules/update.lua")

if os.loadAPI(shell.dir() .. "/modules/cache.lua") then
	print("cache.lua loaded")
end
if os.loadAPI(shell.dir() .. "/modules/log.lua") then
	print("log.lua loaded")
end

if os.loadAPI(shell.dir() .. "/modules/update.lua") then
	print("log.lua loaded")
end

_G["cache.lua"].init(".cache")
_G["cache.lua"].wCache("test", "nuff")
_G["log.lua"].setLogLevel(6)
_G["log.lua"].log("warn", "test")
_G["cache.lua"].writeCache()

_G["update.lua"].setType("router")
_G["update.lua"].setURL("http://pastebin.com/raw/d9u0SceS")
_G["update.lua"].setVersion("2016.7.29.02.07")
_G["update.lua"].checkForUpdates()
print("Needs updates? " .. tostring(_G["update.lua"].needsUpdates()))
