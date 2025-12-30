-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename AG0_1, AG1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local AG0_1, AG1_1, AG2_1, AG3_1, AG4_1, AG5_1
AG0_1 = {}
AG1_1 = {}
AG2_1 = "en"
function AG3_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2
  AG1_2 = GetCurrentResourceName
  AG1_2 = AG1_2()
  AG2_2 = LoadResourceFile
  AG3_2 = AG1_2
  AG4_2 = "locales/"
  AG5_2 = AG0_2
  AG6_2 = ".json"
  AG4_2 = AG4_2 .. AG5_2 .. AG6_2
  AG2_2 = AG2_2(AG3_2, AG4_2)
  if AG2_2 then
    AG3_2 = pcall
    AG4_2 = json
    AG4_2 = AG4_2.decode
    AG5_2 = AG2_2
    AG3_2, AG4_2 = AG3_2(AG4_2, AG5_2)
    if AG3_2 then
      AG1_1 = AG4_2
      AG2_1 = AG0_2
      AG5_2 = true
      return AG5_2
    else
      AG5_2 = print
      AG6_2 = "Error decoding locale JSON for "
      AG7_2 = AG0_2
      AG6_2 = AG6_2 .. AG7_2
      AG5_2(AG6_2)
    end
  end
  if "en" ~= AG0_2 then
    AG3_2 = AG0_1.LoadTranslations
    AG4_2 = "en"
    return AG3_2(AG4_2)
  end
  AG3_2 = false
  return AG3_2
end
AG0_1.LoadTranslations = AG3_1
function AG3_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2
  if not AG1_2 then
    AG2_2 = {}
    AG1_2 = AG2_2
  end
  AG2_2 = {}
  AG3_2 = string
  AG3_2 = AG3_2.gmatch
  AG4_2 = AG0_2
  AG5_2 = "[^.]+"
  AG3_2, AG4_2, AG5_2, AG6_2 = AG3_2(AG4_2, AG5_2)
  for AG7_2 in AG3_2, AG4_2, AG5_2, AG6_2 do
    AG8_2 = table
    AG8_2 = AG8_2.insert
    AG9_2 = AG2_2
    AG10_2 = AG7_2
    AG8_2(AG9_2, AG10_2)
  end
  AG3_2 = AG1_1
  AG4_2 = ipairs
  AG5_2 = AG2_2
  AG4_2, AG5_2, AG6_2, AG7_2 = AG4_2(AG5_2)
  for AG8_2, AG9_2 in AG4_2, AG5_2, AG6_2, AG7_2 do
    if AG3_2 then
      AG10_2 = type
      AG11_2 = AG3_2
      AG10_2 = AG10_2(AG11_2)
      if "table" == AG10_2 then
        AG10_2 = AG3_2[AG9_2]
        if AG10_2 then
          AG3_2 = AG3_2[AG9_2]
      end
    end
    else
      AG10_2 = print
      AG11_2 = "Translation key not found: "
      AG12_2 = AG0_2
      AG11_2 = AG11_2 .. AG12_2
      AG10_2(AG11_2)
      return AG0_2
    end
  end
  AG4_2 = type
  AG5_2 = AG3_2
  AG4_2 = AG4_2(AG5_2)
  if "string" == AG4_2 then
    AG4_2 = string
    AG4_2 = AG4_2.gsub
    AG5_2 = AG3_2
    AG6_2 = "{(%w+)}"
    function AG7_2(AG0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename AG0_1, AG1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local AG1_3, AG2_3, AG3_3
      AG1_3 = AG1_2
      AG1_3 = AG1_3[AG0_3]
      if nil ~= AG1_3 then
        AG1_3 = tostring
        AG2_3 = AG1_2
        AG2_3 = AG2_3[AG0_3]
        AG1_3 = AG1_3(AG2_3)
        if AG1_3 then
          goto AG_LABEL_15
        end
      end
      AG1_3 = "{"
      AG2_3 = AG0_3
      AG3_3 = "}"
      AG1_3 = AG1_3 .. AG2_3 .. AG3_3
      -- [FIX IF ERROR] Move ::AG_LABEL_15:: outside nested blocks until all 'goto AG_LABEL_15' can see it
      ::AG_LABEL_15::
      return AG1_3
    end
    return AG4_2(AG5_2, AG6_2, AG7_2)
  end
  return AG0_2
end
AG0_1.t = AG3_1
function AG3_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2
  AG1_2 = AG0_1.LoadTranslations
  AG2_2 = AG0_2
  AG1_2 = AG1_2(AG2_2)
  if not AG1_2 then
    AG2_2 = print
    AG3_2 = "Failed to initialize locale system with locale: "
    AG4_2 = AG0_2
    AG3_2 = AG3_2 .. AG4_2
    AG2_2(AG3_2)
  end
  return AG1_2
end
AG0_1.Init = AG3_1
AG3_1 = exports
AG4_1 = "GetLocale"
function AG5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = AG0_1
  return AG0_2
end
AG3_1(AG4_1, AG5_1)
