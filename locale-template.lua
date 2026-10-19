-- Minimal template for adding another language. Save as UTF-8.
-- Replace xxXX with the WoW locale code; load after enUS.lua in the TOC.
local _, ns = ...
if GetLocale() ~= "xxXX" then return end
local L = ns.L

-- Keep keys unchanged. Translate only the displayed text.
-- L["SETTINGS_CAT_MODULES"] = "Translated word for Modules"
-- Preserve format arguments, their order, and WoW escape sequences.
-- L["SETTINGS_CURRENT_PROFILE"] = "Translated current profile: %s"
-- Array values must preserve their numeric order (Sunday first for weekdays).
-- L["AFKMODE_WEEKDAYS"] = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" }
-- Omit untranslated keys so the English fallback remains available.
