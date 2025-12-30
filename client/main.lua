-- Notification System - Client Main
local notifications = {}
local callbacks = {}
local notificationIdCounter = 0
local nuiFocusActive = false
local lastTheme = ""
local nearbyPlayers = {}
local selectedPlayer = nil
local isPlayerSelectionActive = false
local playerSelectionId = nil

-- Initialize locale system
local locale = exports[GetCurrentResourceName()]:GetLocale()
locale:Init(Config.Locale)

-- Get nearby players within radius
function GetNearbyPlayers(radius)
  local players = {}
  local playerPed = PlayerPedId()
  local playerCoords = GetEntityCoords(playerPed)
  
  for _, playerId in ipairs(GetActivePlayers()) do
    if playerId ~= PlayerId() then
      local targetPed = GetPlayerPed(playerId)
      local targetCoords = GetEntityCoords(targetPed)
      local distance = #(playerCoords - targetCoords)
      
      if distance <= radius then
        table.insert(players, {
          id = GetPlayerServerId(playerId),
          playerId = playerId,
          ped = targetPed,
          coords = targetCoords,
          distance = distance,
          name = GetPlayerName(playerId)
        })
      end
    end
  end
  
  -- Sort by distance
  table.sort(players, function(a, b)
    return a.distance < b.distance
  end)
  
  return players
end

-- Clear nearby players list
function ClearNearbyPlayers()
  nearbyPlayers = {}
  selectedPlayer = nil
end

-- Draw selection marker on player
function DrawPlayerSelectionMarker()
  if not isPlayerSelectionActive or not selectedPlayer then
    return
  end
  
  local coords = selectedPlayer.coords
  local markerColor = { r = 139, g = 92, b = 246, a = 100 }
  
  -- Draw ground marker
  DrawMarker(
    1, -- Cylinder
    coords.x, coords.y, coords.z - 0.95,
    0.0, 0.0, 0.0,
    0.0, 0.0, 0.0,
    1.0, 1.0, 0.1,
    markerColor.r, markerColor.g, markerColor.b, markerColor.a,
    false, true, 2, false, nil, nil, false
  )
  
  -- Draw 3D text above player
  local onScreen, screenX, screenY = World3dToScreen2d(coords.x, coords.y, coords.z + 1.5)
  if onScreen then
    SetTextScale(0.3, 0.3)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(139, 92, 246, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(locale.t('ui.selected_indicator'))
    DrawText(screenX, screenY + 0.03)
  end
end

-- Initialize player selection list
function InitializePlayerSelection(playersList)
  ClearNearbyPlayers()
  
  for _, player in ipairs(playersList) do
    local playerData = {
      playerId = player.id,
      coords = player.coords,
      name = player.name,
      ped = player.ped
    }
    table.insert(nearbyPlayers, playerData)
  end
  
  -- Start marker drawing thread
  Citizen.CreateThread(function()
    while isPlayerSelectionActive do
      if selectedPlayer and selectedPlayer.ped then
        selectedPlayer.coords = GetEntityCoords(selectedPlayer.ped)
      end
      DrawPlayerSelectionMarker()
      Citizen.Wait(0)
    end
    ClearNearbyPlayers()
  end)
end

-- Handle player selection scroll from NUI
RegisterNUICallback("playerSelectionScroll", function(data, cb)
  local notificationId = data.id
  local direction = data.direction
  
  if isPlayerSelectionActive and playerSelectionId == notificationId then
    SelectNextPlayer(direction)
  end
  
  cb("ok")
end)

-- Select next/previous player in list
function SelectNextPlayer(direction)
  if #nearbyPlayers == 0 then
    return
  end
  
  local currentIndex = 0
  if selectedPlayer then
    for i, player in ipairs(nearbyPlayers) do
      if player.playerId == selectedPlayer.playerId then
        currentIndex = i
        break
      end
    end
  end
  
  local newIndex = currentIndex + direction
  if newIndex > #nearbyPlayers then
    newIndex = 1
  elseif newIndex < 1 then
    newIndex = #nearbyPlayers
  end
  
  selectedPlayer = nearbyPlayers[newIndex]
  
  SendNUIMessage({
    type = "updatePlayerSelection",
    id = playerSelectionId,
    selectedPlayer = {
      id = selectedPlayer.playerId,
      name = selectedPlayer.name,
      index = newIndex,
      total = #nearbyPlayers
    },
    totalPlayers = #nearbyPlayers
  })
end

-- Select player by index
function SelectPlayerByIndex(index)
  if index > #nearbyPlayers or index < 1 then
    return
  end
  
  selectedPlayer = nearbyPlayers[index]
  
  SendNUIMessage({
    type = "updatePlayerSelection",
    id = playerSelectionId,
    selectedPlayer = {
      id = selectedPlayer.playerId,
      name = selectedPlayer.name,
      index = index,
      total = #nearbyPlayers
    },
    totalPlayers = #nearbyPlayers
  })
end

-- Confirm player selection
function ConfirmPlayerSelection()
  if selectedPlayer and playerSelectionId then
    local callback = callbacks[playerSelectionId]
    if callback then
      callback("select", {
        playerId = selectedPlayer.playerId,
        name = selectedPlayer.name
      })
    end
    StopPlayerSelection()
    RemoveNotification(playerSelectionId)
  end
end

-- Cancel player selection
function CancelPlayerSelection()
  if playerSelectionId then
    local callback = callbacks[playerSelectionId]
    if callback then
      callback("cancel", nil)
    end
    StopPlayerSelection()
    RemoveNotification(playerSelectionId)
  end
end

-- Start player selection with radius
function StartPlayerSelection(notificationId, radius)
  isPlayerSelectionActive = true
  playerSelectionId = notificationId
  
  local players = GetNearbyPlayers(radius)
  
  if #players == 0 then
    local callback = callbacks[notificationId]
    if callback then
      callback("no_players", nil)
    end
    RemoveNotification(notificationId)
    return false
  end
  
  InitializePlayerSelection(players)
  
  if #nearbyPlayers > 0 then
    SelectPlayerByIndex(1)
  end
  
  -- Update notification UI
  local notificationData = notifications[notificationId]
  if notificationData then
    notificationData.totalPlayers = #players
    notificationData.selectedPlayer = selectedPlayer and {
      id = selectedPlayer.playerId,
      name = selectedPlayer.name,
      index = 1,
      total = #nearbyPlayers
    } or nil
    
    SendNUIMessage({
      type = "updatePlayerSelection",
      id = notificationId,
      totalPlayers = #players,
      selectedPlayer = notificationData.selectedPlayer,
      players = players
    })
  end
  
  -- Enable NUI focus after short delay
  Citizen.SetTimeout(100, function()
    SetNuiFocus(true, true)
    nuiFocusActive = true
  end)
  
  return true
end

-- Stop player selection
function StopPlayerSelection()
  isPlayerSelectionActive = false
  playerSelectionId = nil
  ClearNearbyPlayers()
  SetNuiFocus(false, false)
  nuiFocusActive = false
end

-- Get current theme based on time
function GetCurrentTheme()
  local currentHour = GetClockHours()
  
  if Config.DayNightThemeCycle then
    if currentHour >= Config.DayStart and currentHour < Config.NightStart then
      return "day"
    else
      return "night"
    end
  else
    return Config.Theme
  end
end

-- Send initial configuration to NUI
function SendConfigurationToNUI()
  local theme = GetCurrentTheme()
  SendNUIMessage({
    type = "sendData",
    config = Config,
    theme = Config.Themes[theme]
  })
end

-- Check and update theme if changed
function UpdateThemeIfChanged()
  local currentTheme = GetCurrentTheme()
  if currentTheme ~= lastTheme then
    lastTheme = currentTheme
    SendNUIMessage({
      type = "updateTheme",
      theme = Config.Themes[currentTheme]
    })
  end
end

-- Start theme update thread if day/night cycle enabled
if Config.DayNightThemeCycle then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(Config.ThemeUpdateInterval)
      UpdateThemeIfChanged()
    end
  end)
end

-- Generate unique notification ID
function GenerateNotificationId()
  notificationIdCounter = notificationIdCounter + 1
  return notificationIdCounter
end

-- Send notification to NUI
function SendNotificationToNUI(notificationData)
  local sanitizedData = {
    id = tonumber(notificationData.id),
    type = tostring(notificationData.type),
    message = tostring(notificationData.message or ""),
    notificationType = tostring(notificationData.notificationType or "info"),
    duration = tonumber(notificationData.duration),
    timestamp = tonumber(notificationData.timestamp),
    title = tostring(notificationData.title or ""),
    progress = tonumber(notificationData.progress),
    maxProgress = tonumber(notificationData.maxProgress),
    placeholder = tostring(notificationData.placeholder or ""),
    description = tostring(notificationData.description or ""),
    icon = tostring(notificationData.icon or ""),
    rarity = tostring(notificationData.rarity or ""),
    imageUrl = tostring(notificationData.imageUrl or ""),
    totalSeconds = notificationData.totalSeconds or 0,
    remainingSeconds = notificationData.remainingSeconds or 0,
    fields = notificationData.fields or nil,
    multiSelect = notificationData.multiSelect or false,
    steps = notificationData.steps or nil,
    currentStep = notificationData.currentStep or 0
  }
  
  -- Sanitize options array
  if notificationData.options and type(notificationData.options) == "table" then
    sanitizedData.options = {}
    for i, option in ipairs(notificationData.options) do
      sanitizedData.options[i] = {
        text = tostring(option.text or ""),
        value = tostring(option.value or ""),
        style = tostring(option.style or "info"),
        key = tostring(option.key or nil)
      }
    end
  end
  
  SendNUIMessage({
    type = "notification",
    data = sanitizedData
  })
end

-- Show basic notification
function ShowNotification(title, message, notificationType, duration)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    type = "basic",
    title = title,
    message = message,
    notificationType = notificationType or "info",
    duration = duration or 5000,
    timestamp = GetGameTimer()
  }
  
  notifications[id] = notificationData
  SendNotificationToNUI(notificationData)
  
  return id
end

-- Show interactive notification with options
function ShowInteractiveNotification(message, title, notificationType, options, callback)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    notificationType = notificationType or "info",
    type = "interactive",
    title = title,
    message = message
  }
  
  if options then
    notificationData.options = {}
    for i, option in ipairs(options) do
      notificationData.options[i] = {
        text = option.text,
        value = option.value,
        style = option.style,
        key = option.key
      }
    end
  end
  
  notifications[id] = notificationData
  
  if callback then
    callbacks[id] = callback
  end
  
  SetNuiFocus(true, true)
  nuiFocusActive = true
  
  SendNotificationToNUI(notificationData)
  
  return id
end

-- Show progress notification
function ShowProgressNotification(message, title, maxProgress, notificationType)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    type = "progress",
    notificationType = notificationType or "info",
    title = title,
    message = message,
    progress = 0,
    maxProgress = maxProgress or 100
  }
  
  notifications[id] = notificationData
  SendNotificationToNUI(notificationData)
  
  return id
end

-- Update progress notification
function UpdateProgressNotification(id, progress, message)
  local notification = notifications[id]
  if notification and notification.type == "progress" then
    notification.progress = progress
    if message then
      notification.message = message
    end
    
    SendNUIMessage({
      type = "updateProgress",
      id = id,
      progress = progress,
      message = message
    })
    
    -- Auto-remove when complete
    if progress >= notification.maxProgress then
      Citizen.SetTimeout(1000, function()
        RemoveNotification(id)
      end)
    end
  end
end

-- Show persistent notification (stays until manually closed)
function ShowPersistentNotification(title, message, notificationType)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    type = "persistent",
    title = title,
    message = message,
    notificationType = notificationType or "warning"
  }
  
  notifications[id] = notificationData
  SendNotificationToNUI(notificationData)
  
  return id
end

-- Show input notification
function ShowInputNotification(message, title, placeholder, notificationType, callback)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    type = "input",
    title = title,
    message = message,
    placeholder = placeholder,
    notificationType = notificationType or "info"
  }
  
  notifications[id] = notificationData
  
  if callback then
    callbacks[id] = callback
  end
  
  SetNuiFocus(true, true)
  nuiFocusActive = true
  
  SendNotificationToNUI(notificationData)
  
  return id
end

-- Show achievement notification
function ShowAchievementNotification(title, description, icon, rarity)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    type = "achievement",
    title = title,
    description = description,
    icon = icon or "🏆",
    rarity = rarity,
    duration = 8000
  }
  
  notifications[id] = notificationData
  SendNotificationToNUI(notificationData)
  
  return id
end

-- Show image notification
function ShowImageNotification(message, title, imageUrl, duration)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    type = "image",
    title = title,
    message = message,
    imageUrl = imageUrl,
    duration = duration or 7000
  }
  
  notifications[id] = notificationData
  SendNotificationToNUI(notificationData)
  
  return id
end

-- Show multi-form notification
function ShowMultiFormNotification(title, message, fields, notificationType, callback)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    type = "multi-form",
    title = title,
    message = message,
    notificationType = notificationType or "info",
    fields = fields
  }
  
  notifications[id] = notificationData
  
  if callback then
    callbacks[id] = callback
  end
  
  SetNuiFocus(true, true)
  nuiFocusActive = true
  
  SendNotificationToNUI(notificationData)
  
  return id
end

-- Show survey notification
function ShowSurveyNotification(title, message, options, multiSelect, notificationType, callback)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    type = "survey",
    title = title,
    message = message,
    notificationType = notificationType or "info",
    multiSelect = multiSelect or false,
    options = options
  }
  
  notifications[id] = notificationData
  
  if callback then
    callbacks[id] = callback
  end
  
  SetNuiFocus(true, true)
  nuiFocusActive = true
  
  SendNotificationToNUI(notificationData)
  
  return id
end

-- Show step wizard notification
function ShowStepWizardNotification(title, message, steps, notificationType, callback)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    type = "step-wizard",
    title = title,
    message = message,
    notificationType = notificationType or "info",
    steps = steps
  }
  
  notifications[id] = notificationData
  
  if callback then
    callbacks[id] = callback
  end
  
  SetNuiFocus(true, true)
  nuiFocusActive = true
  
  SendNotificationToNUI(notificationData)
  
  return id
end

-- Show timer notification
function ShowTimerNotification(title, message, totalSeconds, notificationType, callback)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    type = "timer",
    title = title,
    message = message,
    totalSeconds = totalSeconds,
    remainingSeconds = totalSeconds,
    notificationType = notificationType or "info",
    timestamp = GetGameTimer()
  }
  
  notifications[id] = notificationData
  
  if callback then
    callbacks[id] = callback
  end
  
  SendNotificationToNUI(notificationData)
  
  -- Timer countdown function
  local function timerTick()
    if notifications[id] then
      notifications[id].remainingSeconds = notifications[id].remainingSeconds - 1
      
      SendNUIMessage({
        type = "updateTimer",
        id = id,
        remainingSeconds = notifications[id].remainingSeconds,
        totalSeconds = notifications[id].totalSeconds
      })
      
      if notifications[id].remainingSeconds <= 0 then
        if callbacks[id] then
          callbacks[id]("finished", 0)
        end
        RemoveNotification(id)
      else
        Citizen.SetTimeout(1000, timerTick)
      end
    end
  end
  
  Citizen.SetTimeout(1000, timerTick)
  
  return id
end

-- Show player selection notification
function ShowPlayerSelectionNotification(title, message, radius, notificationType, callback)
  local id = GenerateNotificationId()
  
  local notificationData = {
    id = id,
    type = "playerselection",
    title = title,
    message = message,
    notificationType = notificationType or "info",
    radius = radius or 10.0,
    selectedPlayer = nil,
    totalPlayers = 0,
    players = {}
  }
  
  notifications[id] = notificationData
  
  if callback then
    callbacks[id] = callback
  end
  
  SendNotificationToNUI(notificationData)
  
  -- Start player selection with delay
  Citizen.SetTimeout(50, function()
    if not StartPlayerSelection(id, radius) then
      return
    end
  end)
  
  return id
end

-- Toggle notification history
function ToggleNotificationHistory()
  SendNUIMessage({
    type = "toggleHistory"
  })
end

-- Clear notification history
function ClearNotificationHistory()
  SendNUIMessage({
    type = "clearHistory"
  })
end

-- Remove notification
function RemoveNotification(id)
  local notification = notifications[id]
  if notification then
    -- Stop player selection if active
    if notification.type == "playerselection" then
      StopPlayerSelection()
    end
    
    -- Disable NUI focus for interactive notifications
    if notification.type == "interactive" or 
       notification.type == "input" or 
       notification.type == "step-wizard" or 
       notification.type == "survey" or 
       notification.type == "multi-form" then
      SetNuiFocus(false, false)
      nuiFocusActive = false
    end
    
    notifications[id] = nil
    
    SendNUIMessage({
      type = "removeNotification",
      id = id
    })
  end
  
  -- Clean up callback
  if callbacks[id] then
    callbacks[id] = nil
  end
end

-- Clear all notifications
function ClearAllNotifications()
  local hasInteractive = false
  
  for id, notification in pairs(notifications) do
    if notification.type == "interactive" or notification.type == "input" then
      hasInteractive = true
      break
    end
  end
  
  if hasInteractive then
    SetNuiFocus(false, false)
  end
  
  notifications = {}
  callbacks = {}
  
  SendNUIMessage({
    type = "clearAll"
  })
end

-- Initialize NUI on resource start
Citizen.CreateThread(function()
  Citizen.Wait(1000)
  SendConfigurationToNUI()
end)

-- NUI Callbacks
RegisterNUICallback("notificationAction", function(data, cb)
  local id = data.id
  local callback = callbacks[id]
  
  if callback then
    callback(data.action, data.value)
  end
  
  -- Remove notification unless persistent
  local notification = notifications[id]
  if notification and notification.type ~= "persistent" then
    RemoveNotification(id)
  end
  
  cb("ok")
end)

RegisterNUICallback("removeNotification", function(data, cb)
  RemoveNotification(data.id)
  cb("ok")
end)

RegisterNUICallback("historyToggled", function(data, cb)
  if data.open then
    SetNuiFocus(true, true)
  else
    SetNuiFocus(false, false)
  end
  cb("ok")
end)

RegisterNUICallback("historyCleared", function(data, cb)
  cb("ok")
end)

-- Export functions
exports("ShowPlayerSelectionNotification", ShowPlayerSelectionNotification)
exports("ShowMultiFormNotification", ShowMultiFormNotification)
exports("ShowSurveyNotification", ShowSurveyNotification)
exports("ShowStepWizardNotification", ShowStepWizardNotification)
exports("ShowTimerNotification", ShowTimerNotification)
exports("ShowNotification", ShowNotification)
exports("ShowInteractiveNotification", ShowInteractiveNotification)
exports("ShowProgressNotification", ShowProgressNotification)
exports("UpdateProgressNotification", UpdateProgressNotification)
exports("ShowPersistentNotification", ShowPersistentNotification)
exports("ShowInputNotification", ShowInputNotification)
exports("ShowAchievementNotification", ShowAchievementNotification)
exports("ShowImageNotification", ShowImageNotification)
exports("RemoveNotification", RemoveNotification)
exports("ClearAllNotifications", ClearAllNotifications)
exports("ToggleNotificationHistory", ToggleNotificationHistory)
exports("ClearNotificationHistory", ClearNotificationHistory)

-- Network Events for server-triggered notifications
RegisterNetEvent("showNotification")
AddEventHandler("showNotification", function(title, message, notificationType, duration)
  exports[GetCurrentResourceName()]:ShowNotification(title, message, notificationType, duration)
end)

RegisterNetEvent("showInteractiveNotification")
AddEventHandler("showInteractiveNotification", function(message, title, notificationType, options, callbackEvent)
  exports[GetCurrentResourceName()]:ShowInteractiveNotification(
    message, title, notificationType, options,
    function(action, value)
      if callbackEvent then
        TriggerServerEvent(callbackEvent, action, value)
      end
    end
  )
end)

RegisterNetEvent("showProgressNotification")
AddEventHandler("showProgressNotification", function(message, title, maxProgress, notificationType)
  local id = exports[GetCurrentResourceName()]:ShowProgressNotification(message, title, maxProgress, notificationType)
  TriggerServerEvent("notificationIdResponse", id)
end)

RegisterNetEvent("updateProgressNotification")
AddEventHandler("updateProgressNotification", function(id, progress, message)
  exports[GetCurrentResourceName()]:UpdateProgressNotification(id, progress, message)
end)

RegisterNetEvent("showPersistentNotification")
AddEventHandler("showPersistentNotification", function(title, message, notificationType)
  exports[GetCurrentResourceName()]:ShowPersistentNotification(title, message, notificationType)
end)

RegisterNetEvent("showInputNotification")
AddEventHandler("showInputNotification", function(message, title, placeholder, notificationType, callbackEvent)
  exports[GetCurrentResourceName()]:ShowInputNotification(
    message, title, placeholder, notificationType,
    function(action, value)
      if callbackEvent then
        TriggerServerEvent(callbackEvent, action, value)
      end
    end
  )
end)

RegisterNetEvent("showAchievementNotification")
AddEventHandler("showAchievementNotification", function(title, description, icon, rarity)
  exports[GetCurrentResourceName()]:ShowAchievementNotification(title, description, icon, rarity)
end)

RegisterNetEvent("showImageNotification")
AddEventHandler("showImageNotification", function(message, title, imageUrl, duration)
  exports[GetCurrentResourceName()]:ShowImageNotification(message, title, imageUrl, duration)
end)

RegisterNetEvent("showMultiFormNotification")
AddEventHandler("showMultiFormNotification", function(title, message, fields, notificationType, callbackEvent)
  exports[GetCurrentResourceName()]:ShowMultiFormNotification(
    title, message, fields, notificationType,
    function(action, value)
      if callbackEvent then
        TriggerServerEvent(callbackEvent, action, value)
      end
    end
  )
end)

RegisterNetEvent("showSurveyNotification")
AddEventHandler("showSurveyNotification", function(title, message, options, multiSelect, notificationType, callbackEvent)
  exports[GetCurrentResourceName()]:ShowSurveyNotification(
    title, message, options, multiSelect, notificationType,
    function(action, value)
      if callbackEvent then
        TriggerServerEvent(callbackEvent, action, value)
      end
    end
  )
end)

RegisterNetEvent("showStepWizardNotification")
AddEventHandler("showStepWizardNotification", function(title, message, steps, notificationType, callbackEvent)
  exports[GetCurrentResourceName()]:ShowStepWizardNotification(
    title, message, steps, notificationType,
    function(action, value)
      if callbackEvent then
        TriggerServerEvent(callbackEvent, action, value)
      end
    end
  )
end)

RegisterNetEvent("showTimerNotification")
AddEventHandler("showTimerNotification", function(title, message, totalSeconds, notificationType, callbackEvent)
  exports[GetCurrentResourceName()]:ShowTimerNotification(
    title, message, totalSeconds, notificationType,
    function(action, value)
      if callbackEvent then
        TriggerServerEvent(callbackEvent, action, value)
      end
    end
  )
end)

RegisterNetEvent("showPlayerSelectionNotification")
AddEventHandler("showPlayerSelectionNotification", function(title, message, radius, notificationType, callbackEvent)
  exports[GetCurrentResourceName()]:ShowPlayerSelectionNotification(
    title, message, radius, notificationType,
    function(action, value)
      if callbackEvent then
        TriggerServerEvent(callbackEvent, action, value)
      end
    end
  )
end)

RegisterNetEvent("removeNotification")
AddEventHandler("removeNotification", function(id)
  exports[GetCurrentResourceName()]:RemoveNotification(id)
end)

RegisterNetEvent("clearAllNotifications")
AddEventHandler("clearAllNotifications", function()
  exports[GetCurrentResourceName()]:ClearAllNotifications()
end)

RegisterNetEvent("toggleNotificationHistory")
AddEventHandler("toggleNotificationHistory", function()
  exports[GetCurrentResourceName()]:ToggleNotificationHistory()
end)

RegisterNetEvent("clearNotificationHistory")
AddEventHandler("clearNotificationHistory", function()
  exports[GetCurrentResourceName()]:ClearNotificationHistory()
end)

-- Commands
RegisterCommand("toggleui", function()
  nuiFocusActive = not nuiFocusActive
  SetNuiFocus(nuiFocusActive, nuiFocusActive)
end, false)

RegisterCommand("togglehistory", function()
  ToggleNotificationHistory()
end, false)

RegisterCommand("clearhistory", function()
  ClearNotificationHistory()
end, false)

-- Key mappings
RegisterKeyMapping("toggleui", locale.t("commands.toggle_focus"), "keyboard", Config.NuiFocus)
RegisterKeyMapping("togglehistory", locale.t("commands.toggle_history"), "keyboard", Config.History)