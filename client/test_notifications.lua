-- Notification System Test Suite
-- Tests all notification types in sequence with automatic progression
-- Command: /testnotify to start the test sequence

local testRunning = false
local currentTestIndex = 0
local testDelay = 5000 -- 5 seconds between tests

-- Test sequence with all notification types
local tests = {
  -- 1. Basic Notification
  {
    name = "Basic Notification",
    execute = function()
      exports['Notifier']:ShowNotification(
        "Basic Notification",
        "This is a simple informational message that will auto-dismiss.",
        "info",
        testDelay
      )
    end
  },

  -- 2. Success Notification
  {
    name = "Success Notification",
    execute = function()
      exports['Notifier']:ShowNotification(
        "Success!",
        "Your action was completed successfully.",
        "success",
        testDelay
      )
    end
  },

  -- 3. Warning Notification
  {
    name = "Warning Notification",
    execute = function()
      exports['Notifier']:ShowNotification(
        "Warning",
        "Please be careful with this action.",
        "warning",
        testDelay
      )
    end
  },

  -- 4. Error Notification
  {
    name = "Error Notification",
    execute = function()
      exports['Notifier']:ShowNotification(
        "Error",
        "Something went wrong. Please try again.",
        "error",
        testDelay
      )
    end
  },

  -- 5. Interactive Notification
  {
    name = "Interactive Notification",
    execute = function()
      exports['Notifier']:ShowInteractiveNotification(
        "Do you want to accept this mission?",
        "Mission Available",
        "info",
        {
          {text = "Accept", value = "accept", style = "success", key = "Y"},
          {text = "Decline", value = "decline", style = "error", key = "N"}
        },
        function(action, value)
          print("Interactive choice: " .. action .. " = " .. tostring(value))
        end
      )
    end
  },

  -- 6. Progress Notification
  {
    name = "Progress Notification",
    execute = function()
      local progressId = exports['Notifier']:ShowProgressNotification(
        "Loading resources...",
        "Loading",
        100,
        "info"
      )
      
      -- Simulate progress
      local progress = 0
      Citizen.CreateThread(function()
        while progress < 100 do
          Citizen.Wait(50)
          progress = progress + 2
          exports['Notifier']:UpdateProgressNotification(progressId, progress, "Loading: " .. progress .. "%")
        end
      end)
    end
  },

  -- 7. Input Notification
  {
    name = "Input Notification",
    execute = function()
      exports['Notifier']:ShowInputNotification(
        "Please enter your character name",
        "Character Setup",
        "Enter name...",
        "info",
        function(action, value)
          if action == "submit" then
            print("Input received: " .. tostring(value))
          end
        end
      )
    end
  },

  -- 8. Achievement Notification (Common)
  {
    name = "Achievement - Common",
    execute = function()
      exports['Notifier']:ShowAchievementNotification(
        "First Steps",
        "Complete your first mission",
        "🎯",
        "common"
      )
    end
  },

  -- 9. Achievement Notification (Rare)
  {
    name = "Achievement - Rare",
    execute = function()
      exports['Notifier']:ShowAchievementNotification(
        "Master Explorer",
        "Discover all hidden locations",
        "🗺️",
        "rare"
      )
    end
  },

  -- 10. Achievement Notification (Legendary)
  {
    name = "Achievement - Legendary",
    execute = function()
      exports['Notifier']:ShowAchievementNotification(
        "Ultimate Champion",
        "Reach maximum level in all skills",
        "👑",
        "legendary"
      )
    end
  },

  -- 11. Image Notification
  {
    name = "Image Notification",
    execute = function()
      exports['Notifier']:ShowImageNotification(
        "Check out this new vehicle!",
        "New Vehicle Available",
        "https://via.placeholder.com/400x200/4a9d6f/ffffff?text=New+Vehicle",
        testDelay
      )
    end
  },

  -- 12. Persistent Notification
  {
    name = "Persistent Notification",
    execute = function()
      local persistId = exports['Notifier']:ShowPersistentNotification(
        "Important Notice",
        "This notification will stay until manually closed. Click the X to dismiss.",
        "warning"
      )
      
      -- Auto-remove after delay for testing
      Citizen.SetTimeout(testDelay, function()
        exports['Notifier']:RemoveNotification(persistId)
      end)
    end
  },

  -- 13. Multi-Form Notification
  {
    name = "Multi-Form Notification",
    execute = function()
      exports['Notifier']:ShowMultiFormNotification(
        "Registration Form",
        "Please fill out the following information",
        {
          {name = "username", label = "Username", type = "text", placeholder = "Enter username", required = true},
          {name = "email", label = "Email", type = "email", placeholder = "your@email.com", required = true},
          {name = "age", label = "Age", type = "number", placeholder = "18", required = true},
          {name = "country", label = "Country", type = "select", required = true, options = {
            {text = "United States", value = "us"},
            {text = "United Kingdom", value = "uk"},
            {text = "Canada", value = "ca"},
            {text = "Australia", value = "au"}
          }},
          {name = "bio", label = "Bio", type = "textarea", placeholder = "Tell us about yourself..."},
          {name = "terms", label = "I agree to the terms", type = "checkbox", checkboxLabel = "Accept terms and conditions"}
        },
        "info",
        function(action, values)
          if action == "submit" then
            print("Form submitted:")
            for key, value in pairs(values) do
              print("  " .. key .. " = " .. tostring(value))
            end
          end
        end
      )
    end
  },

  -- 14. Survey Notification (Single Select)
  {
    name = "Survey - Single Select",
    execute = function()
      exports['Notifier']:ShowSurveyNotification(
        "Quick Poll",
        "What's your favorite game mode?",
        {
          {text = "Roleplay", value = "rp"},
          {text = "Racing", value = "racing"},
          {text = "PvP", value = "pvp"},
          {text = "Exploration", value = "explore"}
        },
        false,
        "info",
        function(action, value)
          if action == "submit" then
            print("Survey answer: " .. tostring(value.text))
          end
        end
      )
    end
  },

  -- 15. Survey Notification (Multi Select)
  {
    name = "Survey - Multi Select",
    execute = function()
      exports['Notifier']:ShowSurveyNotification(
        "Preferences",
        "Which activities do you enjoy? (Select all that apply)",
        {
          {text = "Driving", value = "drive"},
          {text = "Shopping", value = "shop"},
          {text = "Missions", value = "mission"},
          {text = "Social Events", value = "social"}
        },
        true,
        "info",
        function(action, values)
          if action == "submit" then
            print("Survey answers:")
            for _, v in ipairs(values) do
              print("  - " .. v.text)
            end
          end
        end
      )
    end
  },

  -- 16. Step Wizard Notification
  {
    name = "Step Wizard",
    execute = function()
      exports['Notifier']:ShowStepWizardNotification(
        "Tutorial",
        "Learn the basics",
        {
          {title = "Welcome", content = "Welcome to the server! This tutorial will guide you through the basics."},
          {title = "Movement", content = "Use WASD to move around. Press SHIFT to run and CTRL to crouch."},
          {title = "Interaction", content = "Press E to interact with objects and people in the world."},
          {title = "Inventory", content = "Press TAB to open your inventory and manage your items."},
          {title = "Complete", content = "You've completed the tutorial! Enjoy your time on the server."}
        },
        "info",
        function(action, value)
          print("Wizard action: " .. action .. " - Step: " .. tostring(value))
        end
      )
    end
  },

  -- 17. Timer Notification
  {
    name = "Timer Notification",
    execute = function()
      exports['Notifier']:ShowTimerNotification(
        "Event Starting Soon",
        "The race event will begin shortly!",
        30,
        "warning",
        function(action, remainingSeconds)
          if action == "finished" then
            print("Timer finished!")
          end
        end
      )
    end
  },

  -- 18. Player Selection Notification
  {
    name = "Player Selection",
    execute = function()
      exports['Notifier']:ShowPlayerSelectionNotification(
        "Select Player",
        "Choose a nearby player to interact with",
        15.0,
        "info",
        function(action, data)
          if action == "select" then
            print("Selected player: " .. data.name .. " (ID: " .. data.playerId .. ")")
          elseif action == "cancel" then
            print("Player selection cancelled")
          elseif action == "no_players" then
            print("No players found nearby")
          end
        end
      )
    end
  },

  -- 19. Grouped Notifications (Same type in quick succession)
  {
    name = "Grouped Notifications",
    execute = function()
      -- Send multiple similar notifications to test grouping
      for i = 1, 5 do
        Citizen.SetTimeout(i * 200, function()
          exports['Notifier']:ShowNotification(
            "Money Received",
            "You received $100",
            "success",
            testDelay
          )
        end)
      end
    end
  },

  -- 20. Notification History Test
  {
    name = "History Panel",
    execute = function()
      exports['Notifier']:ShowNotification(
        "History Test",
        "Press H to view notification history and see all previous notifications.",
        "info",
        testDelay
      )
      
      -- Auto-open history after 2 seconds
      Citizen.SetTimeout(2000, function()
        exports['Notifier']:ToggleNotificationHistory()
        
        -- Auto-close after 3 seconds
        Citizen.SetTimeout(3000, function()
          exports['Notifier']:ToggleNotificationHistory()
        end)
      end)
    end
  }
}

-- Run the next test in sequence
local function RunNextTest()
  currentTestIndex = currentTestIndex + 1
  
  if currentTestIndex > #tests then
    print("^2[Notifier Test] All tests completed!^0")
    testRunning = false
    currentTestIndex = 0
    return
  end
  
  local test = tests[currentTestIndex]
  print(string.format("^3[Notifier Test] Running test %d/%d: %s^0", currentTestIndex, #tests, test.name))
  
  -- Execute the test
  test.execute()
  
  -- Schedule next test
  Citizen.SetTimeout(testDelay + 1000, function()
    if testRunning then
      RunNextTest()
    end
  end)
end

-- Start test sequence
local function StartTestSequence()
  if testRunning then
    print("^1[Notifier Test] Test sequence already running!^0")
    return
  end
  
  print("^2[Notifier Test] Starting notification test sequence...^0")
  print("^3[Notifier Test] This will test all " .. #tests .. " notification types.^0")
  print("^3[Notifier Test] Each test runs for " .. (testDelay / 1000) .. " seconds.^0")
  
  testRunning = true
  currentTestIndex = 0
  RunNextTest()
end

-- Stop test sequence
local function StopTestSequence()
  if not testRunning then
    print("^1[Notifier Test] No test sequence running!^0")
    return
  end
  
  print("^2[Notifier Test] Stopping test sequence...^0")
  testRunning = false
  currentTestIndex = 0
  exports['Notifier']:ClearAllNotifications()
end

-- Commands
RegisterCommand("testnotify", function()
  StartTestSequence()
end, false)

RegisterCommand("stoptest", function()
  StopTestSequence()
end, false)

RegisterCommand("testnotify:single", function(source, args)
  local testNum = tonumber(args[1])
  if not testNum or testNum < 1 or testNum > #tests then
    print("^1[Notifier Test] Invalid test number. Use 1-" .. #tests .. "^0")
    print("^3Available tests:^0")
    for i, test in ipairs(tests) do
      print(string.format("  %d. %s", i, test.name))
    end
    return
  end
  
  local test = tests[testNum]
  print(string.format("^3[Notifier Test] Running: %s^0", test.name))
  test.execute()
end, false)

RegisterCommand("testnotify:list", function()
  print("^2[Notifier Test] Available notification types:^0")
  for i, test in ipairs(tests) do
    print(string.format("  ^3%d^0. %s", i, test.name))
  end
  print("^3Commands:^0")
  print("  ^5/testnotify^0 - Run all tests in sequence")
  print("  ^5/testnotify:single [number]^0 - Run a specific test")
  print("  ^5/testnotify:list^0 - Show this list")
  print("  ^5/stoptest^0 - Stop the test sequence")
end, false)

-- Show available commands on resource start
Citizen.CreateThread(function()
  Citizen.Wait(1000)
  print("^2===========================================^0")
  print("^2[Notifier Test] Test suite loaded!^0")
  print("^3Commands:^0")
  print("  ^5/testnotify^0 - Run all notification tests")
  print("  ^5/testnotify:single [1-" .. #tests .. "]^0 - Run specific test")
  print("  ^5/testnotify:list^0 - List all tests")
  print("  ^5/stoptest^0 - Stop test sequence")
  print("^2===========================================^0")
end)
