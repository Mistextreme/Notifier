-- Locale System
-- Handles loading and translating localized strings from JSON files

local LocaleModule = {}
local translations = {}
local currentLocale = "en"

-- Load translations from locale JSON file
function LocaleModule.LoadTranslations(locale)
  local resourceName = GetCurrentResourceName()
  local localeFile = LoadResourceFile(resourceName, "locales/" .. locale .. ".json")
  
  if localeFile then
    local success, decoded = pcall(json.decode, localeFile)
    if success then
      translations = decoded
      currentLocale = locale
      return true
    else
      print("Error decoding locale JSON for " .. locale)
    end
  end
  
  -- Fallback to English if not already trying English
  if locale ~= "en" then
    return LocaleModule.LoadTranslations("en")
  end
  
  return false
end

-- Translate a key with optional parameters
-- Example: t("ui.player_id", {id = 123}) returns "ID: 123"
function LocaleModule.t(key, params)
  if not params then
    params = {}
  end
  
  -- Split key by dots to navigate nested structure
  local keyParts = {}
  for part in string.gmatch(key, "[^.]+") do
    table.insert(keyParts, part)
  end
  
  -- Navigate through translation table
  local value = translations
  for _, keyPart in ipairs(keyParts) do
    if value and type(value) == "table" and value[keyPart] then
      value = value[keyPart]
    else
      print("Translation key not found: " .. key)
      return key
    end
  end
  
  -- Replace placeholders with parameter values
  if type(value) == "string" then
    return string.gsub(value, "{(%w+)}", function(placeholder)
      if params[placeholder] ~= nil then
        return tostring(params[placeholder])
      end
      return "{" .. placeholder .. "}"
    end)
  end
  
  return key
end

-- Initialize locale system with specified locale
function LocaleModule.Init(locale)
  local success = LocaleModule.LoadTranslations(locale)
  if not success then
    print("Failed to initialize locale system with locale: " .. locale)
  end
  return success
end

-- Export GetLocale function for external access
exports("GetLocale", function()
  return LocaleModule
end)
