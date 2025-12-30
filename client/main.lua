-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename AG0_1, AG1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local AG0_1, AG1_1, AG2_1, AG3_1, AG4_1, AG5_1, AG6_1, AG7_1, AG8_1, AG9_1, AG10_1, AG11_1, AG12_1, AG13_1, AG14_1, AG15_1, AG16_1, AG17_1, AG18_1, AG19_1, AG20_1, AG21_1, AG22_1, AG23_1, AG24_1
AG0_1 = {}
AG1_1 = {}
AG2_1 = 0
AG3_1 = false
AG4_1 = ""
AG5_1 = {}
AG6_1 = nil
AG7_1 = false
AG8_1 = nil
AG9_1 = exports
AG10_1 = GetCurrentResourceName
AG10_1 = AG10_1()
AG9_1 = AG9_1[AG10_1]
AG10_1 = AG9_1
AG9_1 = AG9_1.GetLocale
AG9_1 = AG9_1(AG10_1)
AG10_1 = AG9_1.Init
AG11_1 = Config
AG11_1 = AG11_1.Locale
AG10_1(AG11_1)
function AG10_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2
  AG1_2 = {}
  AG2_2 = PlayerPedId
  AG2_2 = AG2_2()
  AG3_2 = GetEntityCoords
  AG4_2 = AG2_2
  AG3_2 = AG3_2(AG4_2)
  AG4_2 = ipairs
  AG5_2 = GetActivePlayers
  AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2 = AG5_2()
  AG4_2, AG5_2, AG6_2, AG7_2 = AG4_2(AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2)
  for AG8_2, AG9_2 in AG4_2, AG5_2, AG6_2, AG7_2 do
    AG10_2 = PlayerId
    AG10_2 = AG10_2()
    if AG9_2 ~= AG10_2 then
      AG10_2 = GetPlayerPed
      AG11_2 = AG9_2
      AG10_2 = AG10_2(AG11_2)
      AG11_2 = GetEntityCoords
      AG12_2 = AG10_2
      AG11_2 = AG11_2(AG12_2)
      AG12_2 = AG3_2 - AG11_2
      AG12_2 = #AG12_2
      if AG0_2 >= AG12_2 then
        AG13_2 = table
        AG13_2 = AG13_2.insert
        AG14_2 = AG1_2
        AG15_2 = {}
        AG16_2 = GetPlayerServerId
        AG17_2 = AG9_2
        AG16_2 = AG16_2(AG17_2)
        AG15_2.id = AG16_2
        AG15_2.playerId = AG9_2
        AG15_2.ped = AG10_2
        AG15_2.coords = AG11_2
        AG15_2.distance = AG12_2
        AG16_2 = GetPlayerName
        AG17_2 = AG9_2
        AG16_2 = AG16_2(AG17_2)
        AG15_2.name = AG16_2
        AG13_2(AG14_2, AG15_2)
      end
    end
  end
  AG4_2 = table
  AG4_2 = AG4_2.sort
  AG5_2 = AG1_2
  function AG6_2(AG0_3, AG1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG2_3, AG3_3
    AG2_3 = AG0_3.distance
    AG3_3 = AG1_3.distance
    AG2_3 = AG2_3 < AG3_3
    return AG2_3
  end
  AG4_2(AG5_2, AG6_2)
  return AG1_2
end
function AG11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = {}
  AG5_1 = AG0_2
  AG0_2 = nil
  AG6_1 = AG0_2
end
function AG12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2, AG19_2, AG20_2, AG21_2, AG22_2, AG23_2, AG24_2, AG25_2, AG26_2
  AG0_2 = AG7_1
  if AG0_2 then
    AG0_2 = AG6_1
    if AG0_2 then
      goto AG_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::AG_LABEL_8:: outside nested blocks until all 'goto AG_LABEL_8' can see it
  ::AG_LABEL_8::
  AG0_2 = AG6_1.coords
  AG1_2 = {}
  AG1_2.r = 139
  AG1_2.g = 92
  AG1_2.b = 246
  AG1_2.a = 100
  AG2_2 = DrawMarker
  AG3_2 = 1
  AG4_2 = AG0_2.x
  AG5_2 = AG0_2.y
  AG6_2 = AG0_2.z
  AG6_2 = AG6_2 - 0.95
  AG7_2 = 0.0
  AG8_2 = 0.0
  AG9_2 = 0.0
  AG10_2 = 0.0
  AG11_2 = 0.0
  AG12_2 = 0.0
  AG13_2 = 1.0
  AG14_2 = 1.0
  AG15_2 = 0.1
  AG16_2 = AG1_2.r
  AG17_2 = AG1_2.g
  AG18_2 = AG1_2.b
  AG19_2 = AG1_2.a
  AG20_2 = false
  AG21_2 = true
  AG22_2 = 2
  AG23_2 = false
  AG24_2 = nil
  AG25_2 = nil
  AG26_2 = false
  AG2_2(AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2, AG19_2, AG20_2, AG21_2, AG22_2, AG23_2, AG24_2, AG25_2, AG26_2)
  AG2_2 = World3dToScreen2d
  AG3_2 = AG0_2.x
  AG4_2 = AG0_2.y
  AG5_2 = AG0_2.z
  AG5_2 = AG5_2 + 1.5
  AG2_2, AG3_2, AG4_2 = AG2_2(AG3_2, AG4_2, AG5_2)
  if AG2_2 then
    AG5_2 = SetTextScale
    AG6_2 = 0.3
    AG7_2 = 0.3
    AG5_2(AG6_2, AG7_2)
    AG5_2 = SetTextFont
    AG6_2 = 0
    AG5_2(AG6_2)
    AG5_2 = SetTextProportional
    AG6_2 = 1
    AG5_2(AG6_2)
    AG5_2 = SetTextColour
    AG6_2 = 139
    AG7_2 = 92
    AG8_2 = 246
    AG9_2 = 255
    AG5_2(AG6_2, AG7_2, AG8_2, AG9_2)
    AG5_2 = SetTextEntry
    AG6_2 = "STRING"
    AG5_2(AG6_2)
    AG5_2 = SetTextCentre
    AG6_2 = 1
    AG5_2(AG6_2)
    AG5_2 = AddTextComponentString
    AG6_2 = AG9_1.t
    AG7_2 = "ui.selected_indicator"
    AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2, AG19_2, AG20_2, AG21_2, AG22_2, AG23_2, AG24_2, AG25_2, AG26_2 = AG6_2(AG7_2)
    AG5_2(AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2, AG19_2, AG20_2, AG21_2, AG22_2, AG23_2, AG24_2, AG25_2, AG26_2)
    AG5_2 = DrawText
    AG6_2 = AG3_2
    AG7_2 = AG4_2 + 0.03
    AG5_2(AG6_2, AG7_2)
  end
end
function AG13_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2
  AG1_2 = AG11_1
  AG1_2()
  AG1_2 = ipairs
  AG2_2 = AG0_2
  AG1_2, AG2_2, AG3_2, AG4_2 = AG1_2(AG2_2)
  for AG5_2, AG6_2 in AG1_2, AG2_2, AG3_2, AG4_2 do
    AG7_2 = {}
    AG8_2 = AG6_2.id
    AG7_2.playerId = AG8_2
    AG8_2 = AG6_2.coords
    AG7_2.coords = AG8_2
    AG8_2 = AG6_2.name
    AG7_2.name = AG8_2
    AG8_2 = AG6_2.ped
    AG7_2.ped = AG8_2
    AG8_2 = table
    AG8_2 = AG8_2.insert
    AG9_2 = AG5_1
    AG10_2 = AG7_2
    AG8_2(AG9_2, AG10_2)
  end
  AG1_2 = Citizen
  AG1_2 = AG1_2.CreateThread
  function AG2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_3, AG1_3
    while true do
      AG0_3 = AG7_1
      if not AG0_3 then
        break
      end
      AG0_3 = AG6_1
      if AG0_3 then
        AG0_3 = AG6_1.ped
        if AG0_3 then
          AG0_3 = GetEntityCoords
          AG1_3 = AG6_1.ped
          AG0_3 = AG0_3(AG1_3)
          AG6_1.coords = AG0_3
        end
      end
      AG0_3 = AG12_1
      AG0_3()
      AG0_3 = Citizen
      AG0_3 = AG0_3.Wait
      AG1_3 = 0
      AG0_3(AG1_3)
    end
    AG0_3 = AG11_1
    AG0_3()
  end
  AG1_2(AG2_2)
end
AG14_1 = RegisterNUICallback
AG15_1 = "playerSelectionScroll"
function AG16_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2, AG5_2
  AG2_2 = AG0_2.id
  AG3_2 = AG0_2.direction
  AG4_2 = AG7_1
  if AG4_2 then
    AG4_2 = AG8_1
    if AG4_2 == AG2_2 then
      AG4_2 = SelectNextPlayer
      AG5_2 = AG3_2
      AG4_2(AG5_2)
    end
  end
  AG4_2 = AG1_2
  AG5_2 = "ok"
  AG4_2(AG5_2)
end
AG14_1(AG15_1, AG16_1)
function AG14_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2
  AG1_2 = AG5_1
  AG1_2 = #AG1_2
  if 0 == AG1_2 then
    return
  end
  AG1_2 = 0
  AG2_2 = AG6_1
  if AG2_2 then
    AG2_2 = ipairs
    AG3_2 = AG5_1
    AG2_2, AG3_2, AG4_2, AG5_2 = AG2_2(AG3_2)
    for AG6_2, AG7_2 in AG2_2, AG3_2, AG4_2, AG5_2 do
      AG8_2 = AG7_2.playerId
      AG9_2 = AG6_1.playerId
      if AG8_2 == AG9_2 then
        AG1_2 = AG6_2
        break
      end
    end
  end
  AG2_2 = AG1_2 + AG0_2
  AG3_2 = AG5_1
  AG3_2 = #AG3_2
  if AG2_2 > AG3_2 then
    AG2_2 = 1
  elseif AG2_2 < 1 then
    AG3_2 = AG5_1
    AG2_2 = #AG3_2
  end
  AG3_2 = AG5_1
  AG3_2 = AG3_2[AG2_2]
  AG6_1 = AG3_2
  AG3_2 = SendNUIMessage
  AG4_2 = {}
  AG4_2.type = "updatePlayerSelection"
  AG5_2 = AG8_1
  AG4_2.id = AG5_2
  AG5_2 = {}
  AG6_2 = AG6_1.playerId
  AG5_2.id = AG6_2
  AG6_2 = AG6_1.name
  AG5_2.name = AG6_2
  AG5_2.index = AG2_2
  AG6_2 = AG5_1
  AG6_2 = #AG6_2
  AG5_2.total = AG6_2
  AG4_2.selectedPlayer = AG5_2
  AG5_2 = AG5_1
  AG5_2 = #AG5_2
  AG4_2.totalPlayers = AG5_2
  AG3_2(AG4_2)
end
SelectNextPlayer = AG14_1
function AG14_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2
  AG1_2 = AG5_1
  AG1_2 = #AG1_2
  if AG0_2 > AG1_2 or AG0_2 < 1 then
    return
  end
  AG1_2 = AG5_1
  AG1_2 = AG1_2[AG0_2]
  AG6_1 = AG1_2
  AG1_2 = SendNUIMessage
  AG2_2 = {}
  AG2_2.type = "updatePlayerSelection"
  AG3_2 = AG8_1
  AG2_2.id = AG3_2
  AG3_2 = {}
  AG4_2 = AG6_1.playerId
  AG3_2.id = AG4_2
  AG4_2 = AG6_1.name
  AG3_2.name = AG4_2
  AG3_2.index = AG0_2
  AG4_2 = AG5_1
  AG4_2 = #AG4_2
  AG3_2.total = AG4_2
  AG2_2.selectedPlayer = AG3_2
  AG3_2 = AG5_1
  AG3_2 = #AG3_2
  AG2_2.totalPlayers = AG3_2
  AG1_2(AG2_2)
end
SelectPlayerByIndex = AG14_1
function AG14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2
  AG0_2 = AG6_1
  if AG0_2 then
    AG0_2 = AG8_1
    if AG0_2 then
      AG1_2 = AG8_1
      AG0_2 = AG1_1
      AG0_2 = AG0_2[AG1_2]
      if AG0_2 then
        AG1_2 = AG0_2
        AG2_2 = "select"
        AG3_2 = {}
        AG4_2 = AG6_1.playerId
        AG3_2.playerId = AG4_2
        AG4_2 = AG6_1.name
        AG3_2.name = AG4_2
        AG1_2(AG2_2, AG3_2)
      end
      AG1_2 = StopPlayerSelection
      AG1_2()
      AG1_2 = RemoveNotification
      AG2_2 = AG8_1
      AG1_2(AG2_2)
    end
  end
end
ConfirmPlayerSelection = AG14_1
function AG14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2
  AG0_2 = AG8_1
  if AG0_2 then
    AG1_2 = AG8_1
    AG0_2 = AG1_1
    AG0_2 = AG0_2[AG1_2]
    if AG0_2 then
      AG1_2 = AG0_2
      AG2_2 = "cancel"
      AG3_2 = nil
      AG1_2(AG2_2, AG3_2)
    end
    AG1_2 = StopPlayerSelection
    AG1_2()
    AG1_2 = RemoveNotification
    AG2_2 = AG8_1
    AG1_2(AG2_2)
  end
end
CancelPlayerSelection = AG14_1
function AG14_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2, AG5_2, AG6_2
  AG2_2 = true
  AG7_1 = AG2_2
  AG8_1 = AG0_2
  AG2_2 = AG10_1
  AG3_2 = AG1_2
  AG2_2 = AG2_2(AG3_2)
  AG3_2 = #AG2_2
  if 0 == AG3_2 then
    AG3_2 = AG1_1
    AG3_2 = AG3_2[AG0_2]
    if AG3_2 then
      AG4_2 = AG3_2
      AG5_2 = "no_players"
      AG6_2 = nil
      AG4_2(AG5_2, AG6_2)
    end
    AG4_2 = RemoveNotification
    AG5_2 = AG0_2
    AG4_2(AG5_2)
    AG4_2 = false
    return AG4_2
  end
  AG3_2 = AG13_1
  AG4_2 = AG2_2
  AG3_2(AG4_2)
  AG3_2 = AG5_1
  AG3_2 = #AG3_2
  if AG3_2 > 0 then
    AG3_2 = SelectPlayerByIndex
    AG4_2 = 1
    AG3_2(AG4_2)
  end
  AG3_2 = AG0_1
  AG3_2 = AG3_2[AG0_2]
  if AG3_2 then
    AG4_2 = #AG2_2
    AG3_2.totalPlayers = AG4_2
    AG4_2 = AG6_1
    if AG4_2 then
      AG4_2 = {}
      AG5_2 = AG6_1.playerId
      AG4_2.id = AG5_2
      AG5_2 = AG6_1.name
      AG4_2.name = AG5_2
      AG4_2.index = 1
      AG5_2 = AG5_1
      AG5_2 = #AG5_2
      AG4_2.total = AG5_2
      if AG4_2 then
        goto AG_LABEL_55
      end
    end
    AG4_2 = nil
    -- [FIX IF ERROR] Move ::AG_LABEL_55:: outside nested blocks until all 'goto AG_LABEL_55' can see it
    ::AG_LABEL_55::
    AG3_2.selectedPlayer = AG4_2
    AG4_2 = SendNUIMessage
    AG5_2 = {}
    AG5_2.type = "updatePlayerSelection"
    AG5_2.id = AG0_2
    AG6_2 = #AG2_2
    AG5_2.totalPlayers = AG6_2
    AG6_2 = AG3_2.selectedPlayer
    AG5_2.selectedPlayer = AG6_2
    AG5_2.players = AG2_2
    AG4_2(AG5_2)
  end
  AG4_2 = Citizen
  AG4_2 = AG4_2.SetTimeout
  AG5_2 = 100
  function AG6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_3, AG1_3, AG2_3
    AG0_3 = SetNuiFocus
    AG1_3 = true
    AG2_3 = true
    AG0_3(AG1_3, AG2_3)
    AG0_3 = true
    AG3_1 = AG0_3
  end
  AG4_2(AG5_2, AG6_2)
  AG4_2 = true
  return AG4_2
end
function AG15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2
  AG0_2 = false
  AG7_1 = AG0_2
  AG0_2 = nil
  AG8_1 = AG0_2
  AG0_2 = AG11_1
  AG0_2()
  AG0_2 = SetNuiFocus
  AG1_2 = false
  AG2_2 = false
  AG0_2(AG1_2, AG2_2)
  AG0_2 = false
  AG3_1 = AG0_2
end
StopPlayerSelection = AG15_1
function AG15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = GetClockHours
  AG0_2 = AG0_2()
  AG1_2 = Config
  AG1_2 = AG1_2.DayNightThemeCycle
  if AG1_2 then
    AG1_2 = Config
    AG1_2 = AG1_2.DayStart
    if AG0_2 >= AG1_2 then
      AG1_2 = Config
      AG1_2 = AG1_2.NightStart
      if AG0_2 < AG1_2 then
        AG1_2 = "day"
        return AG1_2
    end
    else
      AG1_2 = "night"
      return AG1_2
    end
  else
    AG1_2 = Config
    AG1_2 = AG1_2.Theme
    return AG1_2
  end
end
function AG16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2
  AG0_2 = AG15_1
  AG0_2 = AG0_2()
  AG1_2 = SendNUIMessage
  AG2_2 = {}
  AG2_2.type = "sendData"
  AG3_2 = Config
  AG2_2.config = AG3_2
  AG3_2 = Config
  AG3_2 = AG3_2.Themes
  AG3_2 = AG3_2[AG0_2]
  AG2_2.theme = AG3_2
  AG1_2(AG2_2)
end
function AG17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2
  AG0_2 = AG15_1
  AG0_2 = AG0_2()
  AG1_2 = AG4_1
  if AG0_2 ~= AG1_2 then
    AG4_1 = AG0_2
    AG1_2 = SendNUIMessage
    AG2_2 = {}
    AG2_2.type = "updateTheme"
    AG3_2 = Config
    AG3_2 = AG3_2.Themes
    AG3_2 = AG3_2[AG0_2]
    AG2_2.theme = AG3_2
    AG1_2(AG2_2)
  end
end
AG18_1 = Config
AG18_1 = AG18_1.DayNightThemeCycle
if AG18_1 then
  AG18_1 = Citizen
  AG18_1 = AG18_1.CreateThread
  function AG19_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_2, AG1_2
    while true do
      AG0_2 = Citizen
      AG0_2 = AG0_2.Wait
      AG1_2 = Config
      AG1_2 = AG1_2.ThemeUpdateInterval
      AG0_2(AG1_2)
      AG0_2 = AG17_1
      AG0_2()
    end
  end
  AG18_1(AG19_1)
end
function AG18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = AG2_1
  AG0_2 = AG0_2 + 1
  AG2_1 = AG0_2
  AG0_2 = AG2_1
  return AG0_2
end
function AG19_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2
  AG1_2 = {}
  AG2_2 = tonumber
  AG3_2 = AG0_2.id
  AG2_2 = AG2_2(AG3_2)
  AG1_2.id = AG2_2
  AG2_2 = tostring
  AG3_2 = AG0_2.type
  AG2_2 = AG2_2(AG3_2)
  AG1_2.type = AG2_2
  AG2_2 = tostring
  AG3_2 = AG0_2.message
  if not AG3_2 then
    AG3_2 = ""
  end
  AG2_2 = AG2_2(AG3_2)
  AG1_2.message = AG2_2
  AG2_2 = tostring
  AG3_2 = AG0_2.notificationType
  if not AG3_2 then
    AG3_2 = "info"
  end
  AG2_2 = AG2_2(AG3_2)
  AG1_2.notificationType = AG2_2
  AG2_2 = tonumber
  AG3_2 = AG0_2.duration
  AG2_2 = AG2_2(AG3_2)
  AG1_2.duration = AG2_2
  AG2_2 = tonumber
  AG3_2 = AG0_2.timestamp
  AG2_2 = AG2_2(AG3_2)
  AG1_2.timestamp = AG2_2
  AG2_2 = tostring
  AG3_2 = AG0_2.title
  if not AG3_2 then
    AG3_2 = ""
  end
  AG2_2 = AG2_2(AG3_2)
  AG1_2.title = AG2_2
  AG2_2 = tonumber
  AG3_2 = AG0_2.progress
  AG2_2 = AG2_2(AG3_2)
  AG1_2.progress = AG2_2
  AG2_2 = tonumber
  AG3_2 = AG0_2.maxProgress
  AG2_2 = AG2_2(AG3_2)
  AG1_2.maxProgress = AG2_2
  AG2_2 = tostring
  AG3_2 = AG0_2.placeholder
  if not AG3_2 then
    AG3_2 = ""
  end
  AG2_2 = AG2_2(AG3_2)
  AG1_2.placeholder = AG2_2
  AG2_2 = tostring
  AG3_2 = AG0_2.description
  if not AG3_2 then
    AG3_2 = ""
  end
  AG2_2 = AG2_2(AG3_2)
  AG1_2.description = AG2_2
  AG2_2 = tostring
  AG3_2 = AG0_2.icon
  if not AG3_2 then
    AG3_2 = ""
  end
  AG2_2 = AG2_2(AG3_2)
  AG1_2.icon = AG2_2
  AG2_2 = tostring
  AG3_2 = AG0_2.rarity
  if not AG3_2 then
    AG3_2 = ""
  end
  AG2_2 = AG2_2(AG3_2)
  AG1_2.rarity = AG2_2
  AG2_2 = tostring
  AG3_2 = AG0_2.imageUrl
  if not AG3_2 then
    AG3_2 = ""
  end
  AG2_2 = AG2_2(AG3_2)
  AG1_2.imageUrl = AG2_2
  AG2_2 = AG0_2.totalSeconds
  if not AG2_2 then
    AG2_2 = 0
  end
  AG1_2.totalSeconds = AG2_2
  AG2_2 = AG0_2.remainingSeconds
  if not AG2_2 then
    AG2_2 = 0
  end
  AG1_2.remainingSeconds = AG2_2
  AG2_2 = AG0_2.fields
  if not AG2_2 then
    AG2_2 = nil
  end
  AG1_2.fields = AG2_2
  AG2_2 = AG0_2.multiSelect
  if not AG2_2 then
    AG2_2 = false
  end
  AG1_2.multiSelect = AG2_2
  AG2_2 = AG0_2.steps
  if not AG2_2 then
    AG2_2 = nil
  end
  AG1_2.steps = AG2_2
  AG2_2 = AG0_2.currentStep
  if not AG2_2 then
    AG2_2 = 0
  end
  AG1_2.currentStep = AG2_2
  AG2_2 = AG0_2.options
  if AG2_2 then
    AG2_2 = type
    AG3_2 = AG0_2.options
    AG2_2 = AG2_2(AG3_2)
    if "table" == AG2_2 then
      AG2_2 = {}
      AG1_2.options = AG2_2
      AG2_2 = ipairs
      AG3_2 = AG0_2.options
      AG2_2, AG3_2, AG4_2, AG5_2 = AG2_2(AG3_2)
      for AG6_2, AG7_2 in AG2_2, AG3_2, AG4_2, AG5_2 do
        AG8_2 = AG1_2.options
        AG9_2 = {}
        AG10_2 = tostring
        AG11_2 = AG7_2.text
        if not AG11_2 then
          AG11_2 = ""
        end
        AG10_2 = AG10_2(AG11_2)
        AG9_2.text = AG10_2
        AG10_2 = tostring
        AG11_2 = AG7_2.value
        if not AG11_2 then
          AG11_2 = ""
        end
        AG10_2 = AG10_2(AG11_2)
        AG9_2.value = AG10_2
        AG10_2 = tostring
        AG11_2 = AG7_2.style
        if not AG11_2 then
          AG11_2 = "info"
        end
        AG10_2 = AG10_2(AG11_2)
        AG9_2.style = AG10_2
        AG10_2 = tostring
        AG11_2 = AG7_2.key
        if not AG11_2 then
          AG11_2 = nil
        end
        AG10_2 = AG10_2(AG11_2)
        AG9_2.key = AG10_2
        AG8_2[AG6_2] = AG9_2
      end
    end
  end
  AG2_2 = SendNUIMessage
  AG3_2 = {}
  AG3_2.type = "notification"
  AG3_2.data = AG1_2
  AG2_2(AG3_2)
end
function AG20_1(AG0_2, AG1_2, AG2_2, AG3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG4_2, AG5_2, AG6_2, AG7_2
  AG4_2 = AG18_1
  AG4_2 = AG4_2()
  AG5_2 = {}
  AG5_2.id = AG4_2
  AG5_2.type = "basic"
  AG5_2.title = AG0_2
  AG5_2.message = AG1_2
  AG6_2 = AG2_2 or AG6_2
  if not AG2_2 then
    AG6_2 = "info"
  end
  AG5_2.notificationType = AG6_2
  AG6_2 = AG3_2 or AG6_2
  if not AG3_2 then
    AG6_2 = 5000
  end
  AG5_2.duration = AG6_2
  AG6_2 = GetGameTimer
  AG6_2 = AG6_2()
  AG5_2.timestamp = AG6_2
  AG6_2 = AG0_1
  AG6_2[AG4_2] = AG5_2
  AG6_2 = AG19_1
  AG7_2 = AG5_2
  AG6_2(AG7_2)
  return AG4_2
end
ShowNotification = AG20_1
function AG20_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2
  AG5_2 = AG18_1
  AG5_2 = AG5_2()
  AG6_2 = {}
  AG6_2.id = AG5_2
  AG7_2 = AG2_2 or AG7_2
  if not AG2_2 then
    AG7_2 = "info"
  end
  AG6_2.notificationType = AG7_2
  AG6_2.type = "interactive"
  AG6_2.title = AG1_2
  AG6_2.message = AG0_2
  if AG3_2 then
    AG7_2 = {}
    AG6_2.options = AG7_2
    AG7_2 = ipairs
    AG8_2 = AG3_2
    AG7_2, AG8_2, AG9_2, AG10_2 = AG7_2(AG8_2)
    for AG11_2, AG12_2 in AG7_2, AG8_2, AG9_2, AG10_2 do
      AG13_2 = AG6_2.options
      AG14_2 = {}
      AG15_2 = AG12_2.text
      AG14_2.text = AG15_2
      AG15_2 = AG12_2.value
      AG14_2.value = AG15_2
      AG15_2 = AG12_2.style
      AG14_2.style = AG15_2
      AG15_2 = AG12_2.key
      AG14_2.key = AG15_2
      AG13_2[AG11_2] = AG14_2
    end
  end
  AG7_2 = AG0_1
  AG7_2[AG5_2] = AG6_2
  if AG4_2 then
    AG7_2 = AG1_1
    AG7_2[AG5_2] = AG4_2
  end
  AG7_2 = SetNuiFocus
  AG8_2 = true
  AG9_2 = true
  AG7_2(AG8_2, AG9_2)
  AG7_2 = true
  AG3_1 = AG7_2
  AG7_2 = AG19_1
  AG8_2 = AG6_2
  AG7_2(AG8_2)
  return AG5_2
end
ShowInteractiveNotification = AG20_1
function AG20_1(AG0_2, AG1_2, AG2_2, AG3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG4_2, AG5_2, AG6_2, AG7_2
  AG4_2 = AG18_1
  AG4_2 = AG4_2()
  AG5_2 = {}
  AG5_2.id = AG4_2
  AG5_2.type = "progress"
  AG6_2 = AG3_2 or AG6_2
  if not AG3_2 then
    AG6_2 = "info"
  end
  AG5_2.notificationType = AG6_2
  AG5_2.title = AG1_2
  AG5_2.message = AG0_2
  AG5_2.progress = 0
  AG6_2 = AG2_2 or AG6_2
  if not AG2_2 then
    AG6_2 = 100
  end
  AG5_2.maxProgress = AG6_2
  AG6_2 = AG0_1
  AG6_2[AG4_2] = AG5_2
  AG6_2 = AG19_1
  AG7_2 = AG5_2
  AG6_2(AG7_2)
  return AG4_2
end
ShowProgressNotification = AG20_1
function AG20_1(AG0_2, AG1_2, AG2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG3_2, AG4_2, AG5_2
  AG3_2 = AG0_1
  AG3_2 = AG3_2[AG0_2]
  if AG3_2 then
    AG3_2 = AG0_1
    AG3_2 = AG3_2[AG0_2]
    AG3_2 = AG3_2.type
    if "progress" == AG3_2 then
      AG3_2 = AG0_1
      AG3_2 = AG3_2[AG0_2]
      AG3_2.progress = AG1_2
      if AG2_2 then
        AG3_2 = AG0_1
        AG3_2 = AG3_2[AG0_2]
        AG3_2.message = AG2_2
      end
      AG3_2 = SendNUIMessage
      AG4_2 = {}
      AG4_2.type = "updateProgress"
      AG4_2.id = AG0_2
      AG4_2.progress = AG1_2
      AG4_2.message = AG2_2
      AG3_2(AG4_2)
      AG3_2 = AG0_1
      AG3_2 = AG3_2[AG0_2]
      AG3_2 = AG3_2.maxProgress
      if AG1_2 >= AG3_2 then
        AG3_2 = Citizen
        AG3_2 = AG3_2.SetTimeout
        AG4_2 = 1000
        function AG5_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename AG0_1, AG1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local AG0_3, AG1_3
          AG0_3 = RemoveNotification
          AG1_3 = AG0_2
          AG0_3(AG1_3)
        end
        AG3_2(AG4_2, AG5_2)
      end
    end
  end
end
UpdateProgressNotification = AG20_1
function AG20_1(AG0_2, AG1_2, AG2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG3_2, AG4_2, AG5_2, AG6_2
  AG3_2 = AG18_1
  AG3_2 = AG3_2()
  AG4_2 = {}
  AG4_2.id = AG3_2
  AG4_2.type = "persistent"
  AG4_2.title = AG0_2
  AG4_2.message = AG1_2
  AG5_2 = AG2_2 or AG5_2
  if not AG2_2 then
    AG5_2 = "warning"
  end
  AG4_2.notificationType = AG5_2
  AG5_2 = AG0_1
  AG5_2[AG3_2] = AG4_2
  AG5_2 = AG19_1
  AG6_2 = AG4_2
  AG5_2(AG6_2)
  return AG3_2
end
ShowPersistentNotification = AG20_1
function AG20_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2
  AG5_2 = AG18_1
  AG5_2 = AG5_2()
  AG6_2 = {}
  AG6_2.id = AG5_2
  AG6_2.type = "input"
  AG6_2.title = AG1_2
  AG6_2.message = AG0_2
  AG6_2.placeholder = AG2_2
  AG7_2 = AG3_2 or AG7_2
  if not AG3_2 then
    AG7_2 = "info"
  end
  AG6_2.notificationType = AG7_2
  AG7_2 = AG0_1
  AG7_2[AG5_2] = AG6_2
  if AG4_2 then
    AG7_2 = AG1_1
    AG7_2[AG5_2] = AG4_2
  end
  AG7_2 = SetNuiFocus
  AG8_2 = true
  AG9_2 = true
  AG7_2(AG8_2, AG9_2)
  AG7_2 = true
  AG3_1 = AG7_2
  AG7_2 = AG19_1
  AG8_2 = AG6_2
  AG7_2(AG8_2)
  return AG5_2
end
ShowInputNotification = AG20_1
function AG20_1(AG0_2, AG1_2, AG2_2, AG3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG4_2, AG5_2, AG6_2, AG7_2
  AG4_2 = AG18_1
  AG4_2 = AG4_2()
  AG5_2 = {}
  AG5_2.id = AG4_2
  AG5_2.type = "achievement"
  AG5_2.title = AG0_2
  AG5_2.description = AG1_2
  AG6_2 = AG2_2 or AG6_2
  if not AG2_2 then
    AG6_2 = "\240\159\143\134"
  end
  AG5_2.icon = AG6_2
  AG5_2.rarity = AG3_2
  AG5_2.duration = 8000
  AG6_2 = AG0_1
  AG6_2[AG4_2] = AG5_2
  AG6_2 = AG19_1
  AG7_2 = AG5_2
  AG6_2(AG7_2)
  return AG4_2
end
ShowAchievementNotification = AG20_1
function AG20_1(AG0_2, AG1_2, AG2_2, AG3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG4_2, AG5_2, AG6_2, AG7_2
  AG4_2 = AG18_1
  AG4_2 = AG4_2()
  AG5_2 = {}
  AG5_2.id = AG4_2
  AG5_2.type = "image"
  AG5_2.title = AG1_2
  AG5_2.message = AG0_2
  AG5_2.imageUrl = AG2_2
  AG6_2 = AG3_2 or AG6_2
  if not AG3_2 then
    AG6_2 = 7000
  end
  AG5_2.duration = AG6_2
  AG6_2 = AG0_1
  AG6_2[AG4_2] = AG5_2
  AG6_2 = AG19_1
  AG7_2 = AG5_2
  AG6_2(AG7_2)
  return AG4_2
end
ShowImageNotification = AG20_1
function AG20_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2
  AG5_2 = AG18_1
  AG5_2 = AG5_2()
  AG6_2 = {}
  AG6_2.id = AG5_2
  AG6_2.type = "multi-form"
  AG6_2.title = AG0_2
  AG6_2.message = AG1_2
  AG7_2 = AG3_2 or AG7_2
  if not AG3_2 then
    AG7_2 = "info"
  end
  AG6_2.notificationType = AG7_2
  AG6_2.fields = AG2_2
  AG7_2 = AG0_1
  AG7_2[AG5_2] = AG6_2
  if AG4_2 then
    AG7_2 = AG1_1
    AG7_2[AG5_2] = AG4_2
  end
  AG7_2 = SetNuiFocus
  AG8_2 = true
  AG9_2 = true
  AG7_2(AG8_2, AG9_2)
  AG7_2 = true
  AG3_1 = AG7_2
  AG7_2 = AG19_1
  AG8_2 = AG6_2
  AG7_2(AG8_2)
  return AG5_2
end
ShowMultiFormNotification = AG20_1
function AG20_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG6_2, AG7_2, AG8_2, AG9_2, AG10_2
  AG6_2 = AG18_1
  AG6_2 = AG6_2()
  AG7_2 = {}
  AG7_2.id = AG6_2
  AG7_2.type = "survey"
  AG7_2.title = AG0_2
  AG7_2.message = AG1_2
  AG8_2 = AG4_2 or AG8_2
  if not AG4_2 then
    AG8_2 = "info"
  end
  AG7_2.notificationType = AG8_2
  AG8_2 = AG3_2 or AG8_2
  if not AG3_2 then
    AG8_2 = false
  end
  AG7_2.multiSelect = AG8_2
  AG7_2.options = AG2_2
  AG8_2 = AG0_1
  AG8_2[AG6_2] = AG7_2
  if AG5_2 then
    AG8_2 = AG1_1
    AG8_2[AG6_2] = AG5_2
  end
  AG8_2 = SetNuiFocus
  AG9_2 = true
  AG10_2 = true
  AG8_2(AG9_2, AG10_2)
  AG8_2 = true
  AG3_1 = AG8_2
  AG8_2 = AG19_1
  AG9_2 = AG7_2
  AG8_2(AG9_2)
  return AG6_2
end
ShowSurveyNotification = AG20_1
function AG20_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2
  AG5_2 = AG18_1
  AG5_2 = AG5_2()
  AG6_2 = {}
  AG6_2.id = AG5_2
  AG6_2.type = "step-wizard"
  AG6_2.title = AG0_2
  AG6_2.message = AG1_2
  AG7_2 = AG3_2 or AG7_2
  if not AG3_2 then
    AG7_2 = "info"
  end
  AG6_2.notificationType = AG7_2
  AG6_2.steps = AG2_2
  AG7_2 = AG0_1
  AG7_2[AG5_2] = AG6_2
  if AG4_2 then
    AG7_2 = AG1_1
    AG7_2[AG5_2] = AG4_2
  end
  AG7_2 = SetNuiFocus
  AG8_2 = true
  AG9_2 = true
  AG7_2(AG8_2, AG9_2)
  AG7_2 = true
  AG3_1 = AG7_2
  AG7_2 = AG19_1
  AG8_2 = AG6_2
  AG7_2(AG8_2)
  return AG5_2
end
ShowStepWizardNotification = AG20_1
function AG20_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2
  AG5_2 = AG18_1
  AG5_2 = AG5_2()
  AG6_2 = {}
  AG6_2.id = AG5_2
  AG6_2.type = "playerselection"
  AG6_2.title = AG0_2
  AG6_2.message = AG1_2
  AG7_2 = AG3_2 or AG7_2
  if not AG3_2 then
    AG7_2 = "info"
  end
  AG6_2.notificationType = AG7_2
  AG7_2 = AG2_2 or AG7_2
  if not AG2_2 then
    AG7_2 = 10.0
  end
  AG6_2.radius = AG7_2
  AG6_2.selectedPlayer = nil
  AG6_2.totalPlayers = 0
  AG7_2 = {}
  AG6_2.players = AG7_2
  AG7_2 = AG0_1
  AG7_2[AG5_2] = AG6_2
  if AG4_2 then
    AG7_2 = AG1_1
    AG7_2[AG5_2] = AG4_2
  end
  AG7_2 = AG19_1
  AG8_2 = AG6_2
  AG7_2(AG8_2)
  AG7_2 = Citizen
  AG7_2 = AG7_2.SetTimeout
  AG8_2 = 50
  function AG9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_3, AG1_3, AG2_3
    AG0_3 = AG14_1
    AG1_3 = AG5_2
    AG2_3 = AG2_2
    AG0_3 = AG0_3(AG1_3, AG2_3)
    if not AG0_3 then
      return
    end
  end
  AG7_2(AG8_2, AG9_2)
  return AG5_2
end
ShowPlayerSelectionNotification = AG20_1
function AG20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = SendNUIMessage
  AG1_2 = {}
  AG1_2.type = "toggleHistory"
  AG0_2(AG1_2)
end
ToggleNotificationHistory = AG20_1
function AG20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = SendNUIMessage
  AG1_2 = {}
  AG1_2.type = "clearHistory"
  AG0_2(AG1_2)
end
ClearNotificationHistory = AG20_1
function AG20_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2
  AG1_2 = AG0_1
  AG1_2 = AG1_2[AG0_2]
  if AG1_2 then
    AG1_2 = AG0_1
    AG1_2 = AG1_2[AG0_2]
    AG2_2 = AG1_2.type
    if "playerselection" == AG2_2 then
      AG2_2 = StopPlayerSelection
      AG2_2()
    end
    AG2_2 = AG1_2.type
    if "interactive" ~= AG2_2 then
      AG2_2 = AG1_2.type
      if "input" ~= AG2_2 then
        AG2_2 = AG1_2.type
        if "step-wizard" ~= AG2_2 then
          AG2_2 = AG1_2.type
          if "survey" ~= AG2_2 then
            AG2_2 = AG1_2.type
            if "multi-form" ~= AG2_2 then
              goto AG_LABEL_33
            end
          end
        end
      end
    end
    AG2_2 = SetNuiFocus
    AG3_2 = false
    AG4_2 = false
    AG2_2(AG3_2, AG4_2)
    AG2_2 = false
    AG3_1 = AG2_2
    -- [FIX IF ERROR] Move ::AG_LABEL_33:: outside nested blocks until all 'goto AG_LABEL_33' can see it
    ::AG_LABEL_33::
    AG2_2 = AG0_1
    AG2_2[AG0_2] = nil
    AG2_2 = SendNUIMessage
    AG3_2 = {}
    AG3_2.type = "removeNotification"
    AG3_2.id = AG0_2
    AG2_2(AG3_2)
  end
  AG1_2 = AG1_1
  AG1_2 = AG1_2[AG0_2]
  if AG1_2 then
    AG1_2 = AG1_1
    AG1_2[AG0_2] = nil
  end
end
RemoveNotification = AG20_1
function AG20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2
  AG0_2 = false
  AG1_2 = pairs
  AG2_2 = AG0_1
  AG1_2, AG2_2, AG3_2, AG4_2 = AG1_2(AG2_2)
  for AG5_2, AG6_2 in AG1_2, AG2_2, AG3_2, AG4_2 do
    AG7_2 = AG6_2.type
    if "interactive" ~= AG7_2 then
      AG7_2 = AG6_2.type
      if "input" ~= AG7_2 then
        goto AG_LABEL_14
      end
    end
    AG0_2 = true
    do break end
    -- [FIX IF ERROR] Move ::AG_LABEL_14:: outside nested blocks until all 'goto AG_LABEL_14' can see it
    ::AG_LABEL_14::
  end
  if AG0_2 then
    AG1_2 = SetNuiFocus
    AG2_2 = false
    AG3_2 = false
    AG1_2(AG2_2, AG3_2)
  end
  AG1_2 = {}
  AG0_1 = AG1_2
  AG1_2 = {}
  AG1_1 = AG1_2
  AG1_2 = SendNUIMessage
  AG2_2 = {}
  AG2_2.type = "clearAll"
  AG1_2(AG2_2)
end
ClearAllNotifications = AG20_1
AG20_1 = Citizen
AG20_1 = AG20_1.CreateThread
function AG21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = Citizen
  AG0_2 = AG0_2.Wait
  AG1_2 = 1000
  AG0_2(AG1_2)
  AG0_2 = AG16_1
  AG0_2()
end
AG20_1(AG21_1)
AG20_1 = RegisterNUICallback
AG21_1 = "notificationAction"
function AG22_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2, AG5_2
  AG3_2 = AG0_2.id
  AG2_2 = AG1_1
  AG2_2 = AG2_2[AG3_2]
  if AG2_2 then
    AG3_2 = AG2_2
    AG4_2 = AG0_2.action
    AG5_2 = AG0_2.value
    AG3_2(AG4_2, AG5_2)
  end
  AG4_2 = AG0_2.id
  AG3_2 = AG0_1
  AG3_2 = AG3_2[AG4_2]
  if AG3_2 then
    AG4_2 = AG3_2.type
    if "persistent" ~= AG4_2 then
      AG4_2 = RemoveNotification
      AG5_2 = AG0_2.id
      AG4_2(AG5_2)
    end
  end
  AG4_2 = AG1_2
  AG5_2 = "ok"
  AG4_2(AG5_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNUICallback
AG21_1 = "removeNotification"
function AG22_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2
  AG2_2 = RemoveNotification
  AG3_2 = AG0_2.id
  AG2_2(AG3_2)
  AG2_2 = AG1_2
  AG3_2 = "ok"
  AG2_2(AG3_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNUICallback
AG21_1 = "historyToggled"
function AG22_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2
  AG2_2 = AG0_2.open
  if AG2_2 then
    AG2_2 = SetNuiFocus
    AG3_2 = true
    AG4_2 = true
    AG2_2(AG3_2, AG4_2)
  else
    AG2_2 = SetNuiFocus
    AG3_2 = false
    AG4_2 = false
    AG2_2(AG3_2, AG4_2)
  end
  AG2_2 = AG1_2
  AG3_2 = "ok"
  AG2_2(AG3_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNUICallback
AG21_1 = "historyCleared"
function AG22_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2
  AG2_2 = AG1_2
  AG3_2 = "ok"
  AG2_2(AG3_2)
end
AG20_1(AG21_1, AG22_1)
function AG20_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2
  AG5_2 = AG18_1
  AG5_2 = AG5_2()
  AG6_2 = {}
  AG6_2.id = AG5_2
  AG6_2.type = "timer"
  AG6_2.title = AG0_2
  AG6_2.message = AG1_2
  AG6_2.totalSeconds = AG2_2
  AG6_2.remainingSeconds = AG2_2
  AG7_2 = AG3_2 or AG7_2
  if not AG3_2 then
    AG7_2 = "info"
  end
  AG6_2.notificationType = AG7_2
  AG7_2 = GetGameTimer
  AG7_2 = AG7_2()
  AG6_2.timestamp = AG7_2
  AG7_2 = AG0_1
  AG7_2[AG5_2] = AG6_2
  if AG4_2 then
    AG7_2 = AG1_1
    AG7_2[AG5_2] = AG4_2
  end
  AG7_2 = AG19_1
  AG8_2 = AG6_2
  AG7_2(AG8_2)
  function AG7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_3, AG1_3, AG2_3, AG3_3
    AG1_3 = AG5_2
    AG0_3 = AG0_1
    AG0_3 = AG0_3[AG1_3]
    if AG0_3 then
      AG1_3 = AG5_2
      AG0_3 = AG0_1
      AG0_3 = AG0_3[AG1_3]
      AG2_3 = AG5_2
      AG1_3 = AG0_1
      AG1_3 = AG1_3[AG2_3]
      AG1_3 = AG1_3.remainingSeconds
      AG1_3 = AG1_3 - 1
      AG0_3.remainingSeconds = AG1_3
      AG0_3 = SendNUIMessage
      AG1_3 = {}
      AG1_3.type = "updateTimer"
      AG2_3 = AG5_2
      AG1_3.id = AG2_3
      AG3_3 = AG5_2
      AG2_3 = AG0_1
      AG2_3 = AG2_3[AG3_3]
      AG2_3 = AG2_3.remainingSeconds
      AG1_3.remainingSeconds = AG2_3
      AG3_3 = AG5_2
      AG2_3 = AG0_1
      AG2_3 = AG2_3[AG3_3]
      AG2_3 = AG2_3.totalSeconds
      AG1_3.totalSeconds = AG2_3
      AG0_3(AG1_3)
      AG1_3 = AG5_2
      AG0_3 = AG0_1
      AG0_3 = AG0_3[AG1_3]
      AG0_3 = AG0_3.remainingSeconds
      if AG0_3 <= 0 then
        AG1_3 = AG5_2
        AG0_3 = AG1_1
        AG0_3 = AG0_3[AG1_3]
        if AG0_3 then
          AG1_3 = AG0_3
          AG2_3 = "finished"
          AG3_3 = 0
          AG1_3(AG2_3, AG3_3)
        end
        AG1_3 = RemoveNotification
        AG2_3 = AG5_2
        AG1_3(AG2_3)
      else
        AG0_3 = Citizen
        AG0_3 = AG0_3.SetTimeout
        AG1_3 = 1000
        AG2_3 = AG7_2
        AG0_3(AG1_3, AG2_3)
      end
    end
  end
  AG8_2 = Citizen
  AG8_2 = AG8_2.SetTimeout
  AG9_2 = 1000
  AG10_2 = AG7_2
  AG8_2(AG9_2, AG10_2)
  return AG5_2
end
ShowTimerNotification = AG20_1
AG20_1 = exports
AG21_1 = "ShowPlayerSelectionNotification"
AG22_1 = ShowPlayerSelectionNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ShowMultiFormNotification"
AG22_1 = ShowMultiFormNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ShowSurveyNotification"
AG22_1 = ShowSurveyNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ShowStepWizardNotification"
AG22_1 = ShowStepWizardNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ShowTimerNotification"
AG22_1 = ShowTimerNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ShowNotification"
AG22_1 = ShowNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ShowInteractiveNotification"
AG22_1 = ShowInteractiveNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ShowProgressNotification"
AG22_1 = ShowProgressNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "UpdateProgressNotification"
AG22_1 = UpdateProgressNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ShowPersistentNotification"
AG22_1 = ShowPersistentNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ShowInputNotification"
AG22_1 = ShowInputNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ShowAchievementNotification"
AG22_1 = ShowAchievementNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ShowImageNotification"
AG22_1 = ShowImageNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "RemoveNotification"
AG22_1 = RemoveNotification
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ClearAllNotifications"
AG22_1 = ClearAllNotifications
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ToggleNotificationHistory"
AG22_1 = ToggleNotificationHistory
AG20_1(AG21_1, AG22_1)
AG20_1 = exports
AG21_1 = "ClearNotificationHistory"
AG22_1 = ClearNotificationHistory
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showNotification"
function AG22_1(AG0_2, AG1_2, AG2_2, AG3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2
  AG4_2 = exports
  AG5_2 = GetCurrentResourceName
  AG5_2 = AG5_2()
  AG4_2 = AG4_2[AG5_2]
  AG5_2 = AG4_2
  AG4_2 = AG4_2.ShowNotification
  AG6_2 = AG0_2
  AG7_2 = AG1_2
  AG8_2 = AG2_2
  AG9_2 = AG3_2
  AG4_2(AG5_2, AG6_2, AG7_2, AG8_2, AG9_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showInteractiveNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showInteractiveNotification"
function AG22_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2
  AG5_2 = exports
  AG6_2 = GetCurrentResourceName
  AG6_2 = AG6_2()
  AG5_2 = AG5_2[AG6_2]
  AG6_2 = AG5_2
  AG5_2 = AG5_2.ShowInteractiveNotification
  AG7_2 = AG0_2
  AG8_2 = AG1_2
  AG9_2 = AG2_2
  AG10_2 = AG3_2
  function AG11_2(AG0_3, AG1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG2_3, AG3_3, AG4_3, AG5_3
    AG2_3 = AG4_2
    if AG2_3 then
      AG2_3 = TriggerServerEvent
      AG3_3 = AG4_2
      AG4_3 = AG0_3
      AG5_3 = AG1_3
      AG2_3(AG3_3, AG4_3, AG5_3)
    end
  end
  AG5_2(AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showProgressNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showProgressNotification"
function AG22_1(AG0_2, AG1_2, AG2_2, AG3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2
  AG4_2 = exports
  AG5_2 = GetCurrentResourceName
  AG5_2 = AG5_2()
  AG4_2 = AG4_2[AG5_2]
  AG5_2 = AG4_2
  AG4_2 = AG4_2.ShowProgressNotification
  AG6_2 = AG0_2
  AG7_2 = AG1_2
  AG8_2 = AG2_2
  AG9_2 = AG3_2
  AG4_2 = AG4_2(AG5_2, AG6_2, AG7_2, AG8_2, AG9_2)
  AG5_2 = TriggerServerEvent
  AG6_2 = "notificationIdResponse"
  AG7_2 = AG4_2
  AG5_2(AG6_2, AG7_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "updateProgressNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "updateProgressNotification"
function AG22_1(AG0_2, AG1_2, AG2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG3_2, AG4_2, AG5_2, AG6_2, AG7_2
  AG3_2 = exports
  AG4_2 = GetCurrentResourceName
  AG4_2 = AG4_2()
  AG3_2 = AG3_2[AG4_2]
  AG4_2 = AG3_2
  AG3_2 = AG3_2.UpdateProgressNotification
  AG5_2 = AG0_2
  AG6_2 = AG1_2
  AG7_2 = AG2_2
  AG3_2(AG4_2, AG5_2, AG6_2, AG7_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showPersistentNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showPersistentNotification"
function AG22_1(AG0_2, AG1_2, AG2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG3_2, AG4_2, AG5_2, AG6_2, AG7_2
  AG3_2 = exports
  AG4_2 = GetCurrentResourceName
  AG4_2 = AG4_2()
  AG3_2 = AG3_2[AG4_2]
  AG4_2 = AG3_2
  AG3_2 = AG3_2.ShowPersistentNotification
  AG5_2 = AG0_2
  AG6_2 = AG1_2
  AG7_2 = AG2_2
  AG3_2(AG4_2, AG5_2, AG6_2, AG7_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showInputNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showInputNotification"
function AG22_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2
  AG5_2 = exports
  AG6_2 = GetCurrentResourceName
  AG6_2 = AG6_2()
  AG5_2 = AG5_2[AG6_2]
  AG6_2 = AG5_2
  AG5_2 = AG5_2.ShowInputNotification
  AG7_2 = AG0_2
  AG8_2 = AG1_2
  AG9_2 = AG2_2
  AG10_2 = AG3_2
  function AG11_2(AG0_3, AG1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG2_3, AG3_3, AG4_3, AG5_3
    AG2_3 = AG4_2
    if AG2_3 then
      AG2_3 = TriggerServerEvent
      AG3_3 = AG4_2
      AG4_3 = AG0_3
      AG5_3 = AG1_3
      AG2_3(AG3_3, AG4_3, AG5_3)
    end
  end
  AG5_2(AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showAchievementNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showAchievementNotification"
function AG22_1(AG0_2, AG1_2, AG2_2, AG3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2
  AG4_2 = exports
  AG5_2 = GetCurrentResourceName
  AG5_2 = AG5_2()
  AG4_2 = AG4_2[AG5_2]
  AG5_2 = AG4_2
  AG4_2 = AG4_2.ShowAchievementNotification
  AG6_2 = AG0_2
  AG7_2 = AG1_2
  AG8_2 = AG2_2
  AG9_2 = AG3_2
  AG4_2(AG5_2, AG6_2, AG7_2, AG8_2, AG9_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showImageNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showImageNotification"
function AG22_1(AG0_2, AG1_2, AG2_2, AG3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2
  AG4_2 = exports
  AG5_2 = GetCurrentResourceName
  AG5_2 = AG5_2()
  AG4_2 = AG4_2[AG5_2]
  AG5_2 = AG4_2
  AG4_2 = AG4_2.ShowImageNotification
  AG6_2 = AG0_2
  AG7_2 = AG1_2
  AG8_2 = AG2_2
  AG9_2 = AG3_2
  AG4_2(AG5_2, AG6_2, AG7_2, AG8_2, AG9_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showMultiFormNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showMultiFormNotification"
function AG22_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2
  AG5_2 = exports
  AG6_2 = GetCurrentResourceName
  AG6_2 = AG6_2()
  AG5_2 = AG5_2[AG6_2]
  AG6_2 = AG5_2
  AG5_2 = AG5_2.ShowMultiFormNotification
  AG7_2 = AG0_2
  AG8_2 = AG1_2
  AG9_2 = AG2_2
  AG10_2 = AG3_2
  function AG11_2(AG0_3, AG1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG2_3, AG3_3, AG4_3, AG5_3
    AG2_3 = AG4_2
    if AG2_3 then
      AG2_3 = TriggerServerEvent
      AG3_3 = AG4_2
      AG4_3 = AG0_3
      AG5_3 = AG1_3
      AG2_3(AG3_3, AG4_3, AG5_3)
    end
  end
  AG5_2(AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showSurveyNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showSurveyNotification"
function AG22_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2
  AG6_2 = exports
  AG7_2 = GetCurrentResourceName
  AG7_2 = AG7_2()
  AG6_2 = AG6_2[AG7_2]
  AG7_2 = AG6_2
  AG6_2 = AG6_2.ShowSurveyNotification
  AG8_2 = AG0_2
  AG9_2 = AG1_2
  AG10_2 = AG2_2
  AG11_2 = AG3_2
  AG12_2 = AG4_2
  function AG13_2(AG0_3, AG1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG2_3, AG3_3, AG4_3, AG5_3
    AG2_3 = AG5_2
    if AG2_3 then
      AG2_3 = TriggerServerEvent
      AG3_3 = AG5_2
      AG4_3 = AG0_3
      AG5_3 = AG1_3
      AG2_3(AG3_3, AG4_3, AG5_3)
    end
  end
  AG6_2(AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showStepWizardNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showStepWizardNotification"
function AG22_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2
  AG5_2 = exports
  AG6_2 = GetCurrentResourceName
  AG6_2 = AG6_2()
  AG5_2 = AG5_2[AG6_2]
  AG6_2 = AG5_2
  AG5_2 = AG5_2.ShowStepWizardNotification
  AG7_2 = AG0_2
  AG8_2 = AG1_2
  AG9_2 = AG2_2
  AG10_2 = AG3_2
  function AG11_2(AG0_3, AG1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG2_3, AG3_3, AG4_3, AG5_3
    AG2_3 = AG4_2
    if AG2_3 then
      AG2_3 = TriggerServerEvent
      AG3_3 = AG4_2
      AG4_3 = AG0_3
      AG5_3 = AG1_3
      AG2_3(AG3_3, AG4_3, AG5_3)
    end
  end
  AG5_2(AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showTimerNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showTimerNotification"
function AG22_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2
  AG5_2 = exports
  AG6_2 = GetCurrentResourceName
  AG6_2 = AG6_2()
  AG5_2 = AG5_2[AG6_2]
  AG6_2 = AG5_2
  AG5_2 = AG5_2.ShowTimerNotification
  AG7_2 = AG0_2
  AG8_2 = AG1_2
  AG9_2 = AG2_2
  AG10_2 = AG3_2
  function AG11_2(AG0_3, AG1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG2_3, AG3_3, AG4_3, AG5_3
    AG2_3 = AG4_2
    if AG2_3 then
      AG2_3 = TriggerServerEvent
      AG3_3 = AG4_2
      AG4_3 = AG0_3
      AG5_3 = AG1_3
      AG2_3(AG3_3, AG4_3, AG5_3)
    end
  end
  AG5_2(AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "showPlayerSelectionNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "showPlayerSelectionNotification"
function AG22_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2
  AG5_2 = exports
  AG6_2 = GetCurrentResourceName
  AG6_2 = AG6_2()
  AG5_2 = AG5_2[AG6_2]
  AG6_2 = AG5_2
  AG5_2 = AG5_2.ShowPlayerSelectionNotification
  AG7_2 = AG0_2
  AG8_2 = AG1_2
  AG9_2 = AG2_2
  AG10_2 = AG3_2
  function AG11_2(AG0_3, AG1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG2_3, AG3_3, AG4_3, AG5_3
    AG2_3 = AG4_2
    if AG2_3 then
      AG2_3 = TriggerServerEvent
      AG3_3 = AG4_2
      AG4_3 = AG0_3
      AG5_3 = AG1_3
      AG2_3(AG3_3, AG4_3, AG5_3)
    end
  end
  AG5_2(AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "removeNotification"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "removeNotification"
function AG22_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2
  AG1_2 = exports
  AG2_2 = GetCurrentResourceName
  AG2_2 = AG2_2()
  AG1_2 = AG1_2[AG2_2]
  AG2_2 = AG1_2
  AG1_2 = AG1_2.RemoveNotification
  AG3_2 = AG0_2
  AG1_2(AG2_2, AG3_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "clearAllNotifications"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "clearAllNotifications"
function AG22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = exports
  AG1_2 = GetCurrentResourceName
  AG1_2 = AG1_2()
  AG0_2 = AG0_2[AG1_2]
  AG1_2 = AG0_2
  AG0_2 = AG0_2.ClearAllNotifications
  AG0_2(AG1_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "toggleNotificationHistory"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "toggleNotificationHistory"
function AG22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = exports
  AG1_2 = GetCurrentResourceName
  AG1_2 = AG1_2()
  AG0_2 = AG0_2[AG1_2]
  AG1_2 = AG0_2
  AG0_2 = AG0_2.ToggleNotificationHistory
  AG0_2(AG1_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterNetEvent
AG21_1 = "clearNotificationHistory"
AG20_1(AG21_1)
AG20_1 = AddEventHandler
AG21_1 = "clearNotificationHistory"
function AG22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = exports
  AG1_2 = GetCurrentResourceName
  AG1_2 = AG1_2()
  AG0_2 = AG0_2[AG1_2]
  AG1_2 = AG0_2
  AG0_2 = AG0_2.ClearNotificationHistory
  AG0_2(AG1_2)
end
AG20_1(AG21_1, AG22_1)
AG20_1 = RegisterCommand
AG21_1 = "toggleui"
function AG22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2
  AG0_2 = AG3_1
  AG0_2 = not AG0_2
  AG3_1 = AG0_2
  AG0_2 = SetNuiFocus
  AG1_2 = AG3_1
  AG2_2 = AG3_1
  AG0_2(AG1_2, AG2_2)
end
AG23_1 = false
AG20_1(AG21_1, AG22_1, AG23_1)
AG20_1 = RegisterCommand
AG21_1 = "togglehistory"
function AG22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = ToggleNotificationHistory
  AG0_2()
end
AG23_1 = false
AG20_1(AG21_1, AG22_1, AG23_1)
AG20_1 = RegisterCommand
AG21_1 = "clearhistory"
function AG22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = ClearNotificationHistory
  AG0_2()
end
AG23_1 = false
AG20_1(AG21_1, AG22_1, AG23_1)
AG20_1 = RegisterKeyMapping
AG21_1 = "toggleui"
AG22_1 = AG9_1.t
AG23_1 = "commands.toggle_focus"
AG22_1 = AG22_1(AG23_1)
AG23_1 = "keyboard"
AG24_1 = Config
AG24_1 = AG24_1.NuiFocus
AG20_1(AG21_1, AG22_1, AG23_1, AG24_1)
AG20_1 = RegisterKeyMapping
AG21_1 = "togglehistory"
AG22_1 = AG9_1.t
AG23_1 = "commands.toggle_history"
AG22_1 = AG22_1(AG23_1)
AG23_1 = "keyboard"
AG24_1 = Config
AG24_1 = AG24_1.History
AG20_1(AG21_1, AG22_1, AG23_1, AG24_1)
