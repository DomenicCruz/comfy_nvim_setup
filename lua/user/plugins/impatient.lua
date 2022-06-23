--Unlike most plugins which provide a setup() function, Impatient uses a configuration table stored in the global state, _G.__luacache_config. This must be populated before require('impatient') is run.
local status_ok, impatient = pcall(require, "impatient")
if not status_ok then
  return
end

impatient.enable_profile()
