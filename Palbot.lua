localPath = scriptPath()
-- commonLib = loadstring(httpGet("https://raw.githubusercontent.com/AnkuLua/commonLib/master/commonLib.lua"))()
setDragDropTiming(100, 100)
setDragDropStepCount(10)
setDragDropStepInterval(100)
mainStatImages = {  "hpMain.png", "defMain.png", "atkMain.png", "spdMain.png", "criRateMain.png",
  "criDmgMain.png", "resMain.png", "accMain.png" }
runeRarityImages = {"runeLegendary.png", "runeHero.png", "runeRare.png", "runeMagic.png", "runeNormal.png"}

function automaticUpdates ()
  getNewestVersion = loadstring(httpGet("https://raw.githubusercontent.com/ahxxm/Palbot/master/version.lua"))
  latestVersion = getNewestVersion()
  currentVersion = dofile(localPath .."version.lua")
  if autoUpdate == true then
    if currentVersion == latestVersion then
      toast ("You are up to date!")
    else
      httpDownload("https://raw.githubusercontent.com/ahxxm/Palbot/master/version.lua", localPath .."version.lua")
      httpDownload("https://raw.githubusercontent.com/ahxxm/Palbot/master/Palbot.lua", localPath .."Palbot.lua")
      httpDownload("https://raw.githubusercontent.com/ahxxm/Palbot/master/imageupdater.lua", localPath .."imageupdater.lua")
      scriptExit("You have Updated Palbot!")
    end
  end
end

function defaultValues()
 -- run stats
  winCount = 0
  loseCount = 0
  arenaWinCount = 0
  arenaLoseCount = 0
  arenaDrawCount = 0
  runeSave = 0
  r6Count = 0
  r6Sold = 0
  r5Count = 0
  r5Sold = 0
  runeSold = 0
  riftBattle = 0

  -- default values
  bNum = 10
  delayAmt = 0
  imgAccuracy = 0.7
  runeAccuracy = 0.9
  textSizeNum = 12
  waitTimer = 30

  -- no activity options
  timerNoActivity = 0
  timerNoRaidActivity = Timer()
  maxNoActivityTimeout = 600
  connectionTimeout = 600
  maxNoRaidActivity = 180
  raidFailureCount = 0

  -- screen
  screenH = 0
  screenW = 0
  bottombar = 0
  sidebar = 0
  compareW = 0
  compareH = 0
  runeSubCnt = 0
  runeSubPercCnt = 0
  maxDetect = 0.9
end

function defaultTrueFalse ()
   isArenaRival = false
   stopMaxLevel = false
   isMaxLevel = false
   sellAllRune = false
   saveAllRune = false
   save6Star = false
   save5Star = false
   save6StarPct = false
   save5StarPct = false
   runArena = false
   arenaCheck = false
   runGiant = false
   runDragon = false
   runNecro = false
   runRiftRaid = false
   runLiveArena = false
   isArena = false
   immersiveMode = true
   is16by9 = false
   is16by10 = false
   slot8FodderScan = false
   keepLegendary = false
   keepHero = false
   keepRare = false
   keepMagic = false
   keepNormal = false
   keep6Star = false
   keep5Star = false
   keep4Star = false
   keep3Star = false
   keep2Star = false
   keep1Star = false
   keepAll = false
   customKeep = true
   runTestHighlight = false
   debug = false
   sellingRune = false
   runRival = false
   runMatchUp = false
end

function defaultRegionLocation ()
  mainStatRegion = Region(760, 350, 400, 60)
  runeSlotRegion = Region(574, 242, 770, 100)
  runeRarityRegion = Region(1160, 340, 170, 70)
  runeRankRegion = Region(630, 350, 130, 30)
  grindstoneRegion = Region(760, 450, 300, 100)
  enchantedGemRegion = Region(750, 350, 350, 150)
  raidJoinRegion = Region(1280, 825, 290, 105)
  raidReadyRegion = Region(1550, 950, 250, 75)
  okRaidRegion = Region(910, 615, 100, 80)
  raidVictoryTotalRegion = Region(125, 600, 150, 50)
  raidLossTotalRegion = Region(125, 725, 150, 50)
  raidOkRegion = Region(825, 625, 250, 250)
  sameSessionRegion = Region(780, 360, 180, 50)
  raidGetRegion = Region(1035, 635, 145, 115)
  startRegion = Region(1490, 765, 125, 55)
  startDialogRegion = Region(0, 0, 500, 75)
  victoryDefeatRegion = Region(860, 105, 230, 145)
  victoryDefeatStageRegion = Region(670, 235, 605, 65)
  victoryDiamondRegion = Region(1430, 485, 120, 120)
  okRegion = Region(900, 730, 120, 300)

  -- bigger replay and replay text
  replayRegion = Region(490, 550, 170, 75)
  toaNextStageRegion = Region(320, 510, 585, 145)


  reviveNoRegion = Region(1190, 675, 95, 60)
  noLeaderSkillRegion = Region(1160, 360, 110, 55)
  noLeaderSkillYesRegion = Region(740, 620, 105, 65)
  arenaWingRegion = Region(1455, 200, 200, 750)
  arenaRankRegion = Region(910, 115, 400, 400)
  arenaMatchupRegion = Region(200, 200, 250, 100)
  arenaRivalRegion = Region(200, 320, 250, 100)
  arenaRivalNumberRegion = Region(175, 325, 300, 150)
  arenaRivalDialogRegion = Region(0, 775, 125, 125)
  arenaBottomRegion = Region(985, 810, 230, 60)
  arenaOkRegion = Region(920, 625, 85, 55)
  arenaXRegion = Region(1600, 100, 200, 200)
  arenaFailLoadRegion = Region(575, 355, 255, 55)
  refreshListRegion = Region(1300, 200, 400, 400)
  refreshList2Region = Region(845, 560, 155, 55)
  refreshListNotReadyRegion = Region(925, 555, 110, 50)
  runeRegion = Region(630, 345, 135, 130)
  runeMainStatRegion = Region(775, 335, 460, 90)
  runeYesRegion = Region(740, 625, 100, 55)
  sellRegion = Region(750, 820, 100, 60)
  getRegion = Region(985, 635, 500, 515)
  runeSellTextRegion = Region(535, 360, 865, 130)
  refillYesRegion = Region(735, 625, 105, 55)
  refillNoRegion = Region(1050, 625, 120, 60)
  notEnoughEnergyRegion = Region(955, 355, 225, 65)
  notEnoughWingRegion = Region(850, 355, 260, 65)
  rechargeFlashRegion = Region(455, 395, 195, 235)
  yesPurchaseRegion = Region(745, 635, 110, 60)
  okPurchaseRegion = Region(915, 625, 90, 60)
  closePurchaseRegion = Region(1568, 121, 61, 60)
  dialogTextCenterRegion = Region(600, 0, 750, 275)
  dialogToaRegion = Region(710, 65, 305, 85)
  closeXCairoDungeonRegion = Region(1635, 75, 70, 70)
  closeXScenarioRegion = Region(1825, 55, 70, 70)
  closeXMagicShopRegion = Region(1815, 55, 70, 70)
  closeXToaRegion = Region(1650, 75, 70, 70)
  closeXPurchaseRegion = Region(1600, 0, 320, 320)
  closeXStartDialog = Region(1820, 0, 100, 100)
  yesRegion = Region(740, 600, 125, 300)
  dialogCairoDungeonRegion = Region(715, 70, 485, 60)
  dungeonListRegion = Region(235, 265, 550, 800)
  dungeonBattleRegion = Region(800, 255, 850, 815)
  sdChargeRegion = Region(1450, 310, 185, 140)
  dropInfoRegion = Region(1045, 180, 175, 55)
  closeXRiftRegion = Region(1635, 35, 70, 70)
  RiftRaidQuitRegion = Region(1820, 0, 100, 100)
  riftBattleRegion = Region(1345, 850, 155, 65)
  riftRankRegion = Region(1440, 740, 225, 90)
  riftYesRegion = Region(650, 585, 285, 140)
  riftStrategyRegion = Region(290, 155, 270, 75)
  riftBackRegion = Region(1735, 900, 175, 160)
  playRegion = Region(325, 970, 60, 75)
  pauseRegion = Region(825, 430, 270, 85)
  connectionDelayRegion = Region(530, 330, 870, 195)
  connectionYesRegion = Region(740, 685, 95, 65)
  backButtonRegion = Region(1760, 960, 115, 95)
  samsungSearchRegion = Region(150, 75, 215, 50)
  dontShowRegion = Region(205, 950, 295, 85)
  touchStartRegion = Region(890, 400, 140, 155)
  monthlyEventXRegion = Region(1525, 35, 70, 70)
  mailboxXRegion = Region(1575, 115, 70, 70)
  closeXRegion = Region(1350, 0, 570, 350)
  iconPurchaseRegion = Region(1360, 895, 180, 170)
  battleIconRegion = Region(975, 880, 205, 190)
  moveIconRegion = Region(1730, 880, 190, 200)
  fodderCommandRegion = Region(640, 550, 600, 50)
  commandRegion = Region(660, 450, 600, 50)
  resultRegion = Region(1580, 200, 700, 250)
  battleSlot1Region = Region(400, 200, 170, 170)
  battleSlot2Region = Region(200, 305, 170, 170)
  battleSlot3Region = Region(600, 305, 170, 170)
  battleSlot4Region = Region(400, 410, 170, 170)
  dialogScenarioRegion = Region(950, 0, 1000, 200)
  closeDialogScenarioRegion = Region(1650, 0, 300, 200)
  liveArenaMapRegion = Region(0, 750, 250, 500)
  liveArenaTopRegion = Region(350, 0, 1100, 200)
  liveArenaBattleRegion = Region(1450, 420, 420, 125)
  liveArenaLookingRegion = Region(550, 400, 900, 200)
  liveArenaDialogRegion = Region(600, 0, 800, 150)
  liveArenaSameMonOkRegion = Region(750, 500, 450, 200)
  slot1Region = Region(0, 675, 200, 225)
  slot2Region = Region(0, 825, 200, 225)
  slot3Region = Region(190, 675, 200, 225)
  slot4Region = Region(190, 825, 200, 225)
  slot5Region = Region(300, 675, 200, 225)
  slot6Region = Region(300, 825, 200, 225)
  slot7Region = Region(470, 675, 200, 225)
  slot8Region = Region(470, 825, 200, 225)
  slot9Region = Region(620, 675, 200, 225)
  slot10Region = Region(620, 825, 200, 225)
  closeNowYesRegion = Region(600, 630, 350, 200)
  closeNowRegion = Region(525, 420, 75, 80)
  friend1Location = Location(15, 1060)
  runeSubRegion = Region(578,469,360,244)
  runeStatRegion = Region(0, 200, 700, 250)
  slot1MaxRegion = Region(450,668,345,165)
  slot2MaxRegion = Region(825,668,345,165)
  slot3MaxRegion = Region(1215,668,345,165)
  slot4MaxRegion = Region(435,797,345,165)
end

keepSell = "default"
runeRank = 1
runeRarity = 1
mainStat = "none"
subMatch = 1
capRuneNo = 1
slotString = "1"
function captureScreenshot()
  setImagePath(localPath .. "Runes/")
  rgn = Region(0, 0, getRealScreenSize():getX(), getRealScreenSize():getY())
  rgn:save(tostring("Rune" .. tostring(capRuneNo) .. ".png"))
  wait(1)
  capRuneNo = capRuneNo + 1
  setImagePath(localPath .. "1920x1080")
end
function zoomTest()
  wait(1)
  zoomOut()
  zoomOut()
  zoomOut()
  wait(4)
end
function testHighlight()
  while runTestHighlight do
     raidJoinRegion:highlight(10)
     wait(5)
  end
end
function showBattleToast(duration)
  local toastMessage = ""
  local totalBattle = riftBattle + loseCount + winCount
  local totalArenaBattle = arenaWinCount + arenaLoseCount
  local totalRuneCount = runeSave + r6Count + r6Sold + r5Count + r5Sold + runeSold
  local totalRuneSold = r6Sold + r5Sold + runeSold
  toastMessage = "Infinite runs"
  if totalBattle > 0 then
    toastMessage = toastMessage .. [[

Total Battles:]] .. totalBattle .. "  Win:" .. winCount .. "  Lose:" .. loseCount .. ""
  end
  if totalArenaBattle > 0 then
    toastMessage = toastMessage .. [[

Arena Battles:]] .. totalArenaBattle .. "  Win:" .. arenaWinCount .. "  Lose:" .. arenaLoseCount .. ""
  end
  if totalRuneCount > 0 then
    toastMessage = toastMessage .. [[

6* save:]] .. r6Count .. "  5* save:" .. r5Count .. "  6* sold:" .. r6Sold .. "  5* sold:" .. r5Sold .. "  Runes sold:" .. totalRuneSold
  end
  toast(toastMessage)
  toast(toastMessage)
  toast(toastMessage)
end
function printBattleMessage()
  local message = ""
  local totalBattle = riftBattle + loseCount + winCount
  local totalArenaBattle = arenaWinCount + arenaLoseCount
  local totalRuneCount = runeSave + r6Count + r6Sold + r5Count + r5Sold + runeSold
  local totalRuneSold = r6Sold + r5Sold + runeSold
  if totalBattle > 0 then
    message = message .. "Battle:" .. totalBattle .. "  W:" .. winCount .. "  L:" .. loseCount
  end
  if totalArenaBattle > 0 then
    message = message .. [[

Arena:]] .. totalArenaBattle .. "  W:" .. arenaWinCount .. "  L:" .. arenaLoseCount
  end
  if totalRuneCount > 0 then
    message = message .. [[

Rune 6*:]] .. r6Count .. "  5*:" .. r5Count .. "  Sold:" .. totalRuneSold
  end

  if message ~= "" then
    message = message .. [[

--------------------------]]
    if getVersion() < "6.6" then
      print(message)
    else
      setStopMessage(message)
    end
  end
end
function showBattleResult(command)
  local message = ""
  local totalBattle = riftBattle + loseCount + winCount
  local totalArenaBattle = arenaWinCount + arenaLoseCount
  local totalRuneCount = runeSave + r6Count + r6Sold + r5Count + r5Sold + runeSold
  local totalRuneSold = r6Sold + r5Sold + runeSold
  if stopMaxLevel then
    message = "Stop at Max Level"
  else
    message = "Infinite runs"
  end
  if runLiveArena then
    message = message .. [[

Live Arena:]] .. totalArenaBattle .. [[
  
W:]] .. arenaWinCount .. "  L:" .. arenaLoseCount
  else
    message = message .. [[

Battles:]] .. totalBattle .. "  W:" .. winCount .. "  L:" .. loseCount
    message = message .. [[

Arena:]] .. totalArenaBattle .. "  W:" .. arenaWinCount .. "  L:" .. arenaLoseCount
    message = message .. [[

Rune 6*:]] .. r6Count .. "  5*:" .. r5Count .. "  s:" .. totalRuneSold
  end
  resultRegion:highlightOff()
  resultRegion:highlight(message)
end
function hideBattleResult()
  resultRegion:highlightOff()
end
function showCommand(command)
  commandRegion:highlightOff()
  commandRegion:highlight(command)
end
function hideCommand()
  commandRegion:highlightOff()
end
function dialogBox()
  dialogInit()
  spinnerFarmLoc = {
    "This Dungeon",  -- eval runes
    "This Scenario", -- sell all + stop max
    "------------------------------------", -- 3
    "Giant's Keep",
    "Dragon's Lair",
    "Necropolis",
    "------------------------------------", -- 7
    "Rift Raid",
    "Rift Beast",    -- keep all
    "------------------------------------", -- 10
    "Live Arena",
  }
  addTextView("Farming Mode: ")
  addSpinner("farmLoc", spinnerFarmLoc, spinnerFarmLoc[1])
  addCheckBox("runArena", "Arena?", false)
  newRow()
  
  addCheckBox("refillEnergy", "Refill Energy", true)
  addTextView("  ")
  addCheckBox("dim", "Dim Screen", false)
  addTextView("  ")
  newRow()

  addTextView("-------------------- Advanced Options --------------------")
  newRow()
  spinnerResolution = {
    "Auto",
    "1920x1080",
    "Others"
  }
  addTextView("Resolution: ")
  addSpinner("screenRes", spinnerResolution, spinnerResolution[1])
  addTextView("  ")
  addCheckBox("immersiveMode", "Immersive", false) -- no virtual button
  addCheckBox("autoUpdate", "Auto Update", true)
  newRow()
  dialogShowFullScreen("QuickClick Summoners War")
end
function setDialogOptions()
  if farmLoc == spinnerFarmLoc[1] then
  elseif farmLoc == spinnerFarmLoc[2] then
    stopMaxLevel = true
    sellAllRune = true
  elseif farmLoc == spinnerFarmLoc[3] then
  elseif farmLoc == spinnerFarmLoc[4] then
    runGiant = true
  elseif farmLoc == spinnerFarmLoc[5] then
    runDragon = true
  elseif farmLoc == spinnerFarmLoc[6] then
    runNecro = true
  elseif farmLoc == spinnerFarmLoc[7] then
  elseif farmLoc == spinnerFarmLoc[8] then
    runRiftRaid = true
  elseif farmLoc == spinnerFarmLoc[9] then
    keepAll = true
  elseif farmLoc == spinnerFarmLoc[10] then
  elseif farmLoc == spinnerFarmLoc[11] then
    runLiveArena = true
  end
  
  if runArena then
     runRival = true
     runMatchUp = true
  end
  if dim then
    setBrightness(1)
  end
end
function setAdvancedOptions()
  local screen = getAppUsableScreenSize()
  screenW = screen:getX()
  screenH = screen:getY()
  if screenRes == spinnerResolution[1] then
    -- toast("AutoDetect:  " .. screenW .. "x" .. screenH .. "")
    if screenW == 1920 and screenH == 1080 then
       setImagePath(localPath .. "1920x1080")
       Settings:setScriptDimension(true, 1920)
       Settings:setCompareDimension(true, 1920)
       compareW = 1920
       compareH = 1080
       is16by9 = true
    else
       scriptExit("Res other than 1920x1080 is not supported")
    end
  elseif screenRes == "1920x1080" then
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by9 = true
  else
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by9 = true
  end
  setScriptMovement()
  if immersiveMode then
    setImmersiveMode(true)
  end
  Settings:set("MinSimilarity", imgAccuracy)
  setHighlightTextStyle(16777215, 4294967295, textSizeNum)
end
function setDimension16by9()
  local screen = getAppUsableScreenSize()
  screenW = screen:getX()
  screenH = screen:getY()
  compareW = 1920
  compareH = 1080
  Settings:setScriptDimension(true, screenW)
  Settings:setCompareDimension(true, compareW)
end
function setDimension16by10()
  local screen = getAppUsableScreenSize()
  screenW = screen:getX()
  screenH = screen:getY()
  compareW = 1920
  compareH = 1080
  Settings:setScriptDimension(true, screenW)
  Settings:setCompareDimension(true, compareW)
end

-- used for performance bench
tmpTimer = Timer()
function timerReset()
   tmpTimer:set()
end
function timerDone(msg)
   toast(msg .. tmpTimer:check())
   tmpTimer:set()
end

function start()
  nocacheSnapshot()
   if startRegion:exists(Pattern("start.png"):similar(imgAccuracy), 2) then
    startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 3)
    if noLeaderSkillRegion:exists(Pattern("noLeaderSkill.png"):similar(imgAccuracy), 2) then
      noLeaderSkillYesRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy), 0.1)
    end
  end
  cacheSnapshot()
end
function replayOrNext()
   -- next for toa, replay for others
   if not replayRegion:existsClick(Pattern("replay.png"), 5) then
      toaNextStageRegion:existsClick(Pattern("next.png"), 0.1)
   end
end
function refill()
  if refillEnergy then
    toast("Refilling Energy")
    nocacheSnapshot()
    refillYesRegion:existsClick(Pattern("yesRecharge.png"):similar(imgAccuracy * 0.9), 3)
    rechargeFlashRegion:existsClick(Pattern("rechargeFlash.png"):similar(imgAccuracy), 3)
    yesPurchaseRegion:existsClick(Pattern("yesPurchase.png"):similar(imgAccuracy), 3)
    okPurchaseRegion:existsClick(Pattern("okPurchase.png"):similar(imgAccuracy), 3)
    closePurchaseRegion:existsClick(Pattern("closePurchaseNew.png"):similar(imgAccuracy), 3)
  else
    refillNoRegion:existsClick(Pattern("noPurchase.png"):similar(imgAccuracy), 3)
    while waitTimer > 0 do
      showCommand("Out of Energy.  Waiting " .. waitTimer .. " minutes.")
      wait(60)
      waitTimer = waitTimer - 1
    end
    waitTimer = 30
    hideCommand()
    resetTimerNoActivity()
    wait(1)
    resetTimerNoActivity()
  end
end
function defeated()
  reviveNoRegion:existsClick(Pattern("noRevive.png"):similar(.7), 3)
  if stopMaxLevel == true then
    isBattleSlotMax()
  end
  wait(1)
  victoryDiamondRegion:existsClick(Pattern("victoryDiamond.png"):similar(.7), 3)
  wait(1)
  replayRegion:existsClick(Pattern("replay.png"):similar(.7), 3)
end
function victory()
  nocacheSnapshot()
  victoryDiamondRegion:existsClick(Pattern("victoryDiamond.png"):similar(imgAccuracy), 3)
  victoryDiamondRegion:existsClick(Pattern("victoryDiamond.png"):similar(imgAccuracy), 1)
  victoryDiamondRegion:existsClick(Pattern("victoryDiamond.png"):similar(imgAccuracy), 2)
  wait(0.5)
  if not okRegion:existsClick(Pattern("ok.png"):similar(imgAccuracy), 1.5) then
    sellGetRune()
  end
end
function cacheSnapshot()
  usePreviousSnap(false)
  startRegion:exists(Pattern("start.png"), 0.1)
  usePreviousSnap(true)
end
function nocacheSnapshot()
  usePreviousSnap(false)
end
function isBattleSlotMax()
  nocacheSnapshot()
  -- wait exp animation
  wait(2)
  slot2MaxRegion:highlight(0.3)
  if slot2MaxRegion:exists(Pattern("levelDone.png"):similar(maxDetect), 0.1) then
    slot2Max = true
    toast("Slot2Max")
  end
  slot3MaxRegion:highlight(0.3)
  if slot3MaxRegion:exists(Pattern("levelDone.png"):similar(maxDetect), 0.1) then
    slot3Max = true
    toast("Slot3Max")
  end
  slot4MaxRegion:highlight(0.3)
  if slot4MaxRegion:exists(Pattern("levelDone.png"):similar(maxDetect), 0.1) then
    slot4Max = true
    toast("Slot4Max")
  end
  if slot2Max or slot3Max or slot4Max then
     isMaxLevel = true
     toast("is max level")
  end
end
function resetTimerNoActivity()
  timerNoActivity:set()
end
function checkTimerNoActivity()
  if timerNoActivity:check() > maxNoActivityTimeout then
    dialogInit()
    addTextView("No Script Activity.", 14)
    dialogShow("Warning")
    return true
  else
    return false
  end
end
-- copied from commonLib.lua
function resumeROI(oldROI)
    if (oldROI) then
        Settings:setROI(oldROI)
    else
        Settings:setROI()
    end
end
function existsMultiMax(target, region)
  local oldROI = Settings:getROI()
  local maxScore = 0
  local maxIndex = 0
  local match
  if (region ~= nil) then Settings:setROI(region) end
  for i, t in ipairs(target) do
      if (i == 1) then usePreviousSnap(false) else usePreviousSnap(true) end
      if (exists(t, 0)) then -- check once
      local score = getLastMatch():getScore()
      if (score > maxScore) then
          maxScore = score
          maxIndex = i
          match = getLastMatch()
      end
      end
  end
  resumeROI(oldROI)
  usePreviousSnap(false)
  if (maxScore == 0) then
      return -1
  end
  return maxIndex, match
end
function findRuneRarity()
  runeRarityRegion:highlight()
  local bestMatchIndex = existsMultiMax(runeRarityImages, runeRarityRegion)
  if (bestMatchIndex == 1) then
    runeRarity = "Legendary"
    runeSubCnt = 4
  elseif (bestMatchIndex == 2) then
    runeRarity = "Hero"
    runeSubCnt = 3
  elseif (bestMatchIndex == 3) then
    runeRarity = "Rare"
    runeSubCnt = 2
  elseif (bestMatchIndex == 4) then
    runeRarity = "Magic"
    runeSubCnt = 1
  elseif (bestMatchIndex == 5) then
    runeRarity = "Normal"
    runeSubCnt = 0
  else
    runeRarity = "Legendary"
    runeSubCnt = 1
  end
  runeRarityRegion:highlight()
end
function findRuneRank()
  runeRankRegion:highlight()
  local loc = Location(732, 364)
  local r, g, b = getColor(loc)
  if (r > 200 and g > 200 and b > 200) then
    runeRank = 6
  else
    local loc = Location(715, 364)
    local r, g, b = getColor(loc)
    if (r > 200 and g > 200 and b > 200) then
      runeRank = 5
    else
      local loc = Location(698, 364)
      local r, g, b = getColor(loc)
      if (r > 200 and g > 200 and b > 200) then
        runeRank = 4
      else
        local loc = Location(681, 364)
        local r, g, b = getColor(loc)
        if (r > 200 and g > 200 and b > 200) then
          runeRank = 3
        else
          local loc = Location(664, 364)
          local r, g, b = getColor(loc)
          if (r > 200 and g > 200 and b > 200) then
            runeRank = 2
          else
            local loc = Location(647, 364)
            local r, g, b = getColor(loc)
            if (r > 200 and g > 200 and b > 200) then
              runeRank = 1
            else
              runeRank = 6
            end
          end
        end
      end
    end
  end
  runeRankRegion:highlight()
end
function findRuneSlot()
  runeSlotRegion:highlight()
  if(runeSlotRegion:exists(Pattern("slotOne.png"):similar(.9), .5)) then
    runeSlot = 1
    slotString = "1"
  elseif(runeSlotRegion:exists(Pattern("slotTwo.png"):similar(.9), .5)) then
    runeSlot = 2
    slotString = "2"
  elseif(runeSlotRegion:exists(Pattern("slotThree.png"):similar(.9), .5)) then
    runeSlot = 3
    slotString = "3"
  elseif (runeSlotRegion:exists(Pattern("slotFour.png"):similar(.9), .5)) then
    runeSlot = 4
    slotString = "4"
  elseif(runeSlotRegion:exists(Pattern("slotFive.png"):similar(.9), .5)) then
    runeSlot = 5
    slotString = "5"
  elseif (runeSlotRegion:exists(Pattern("slotSix.png"):similar(.9), .5)) then
    runeSlot = 6
    slotString = "6"
  else
    runeSlot = 1
    slotString = "1/3/5"
  end
  runeSlotRegion:highlight()
end
function findMainStat()
  mainStatRegion:highlight()
  local bestMatchIndex = existsMultiMax(mainStatImages, mainStatRegion)
  if (bestMatchIndex == 1) then
    if  mainStatRegion:exists(Pattern("percentMain.png"):similar(.70)) then
      mainStat = ("HP%")
    else
      mainStat = ("HP")
    end
  elseif (bestMatchIndex == 2) then
    if  mainStatRegion:exists(Pattern("percentMain.png"):similar(.70)) then
      mainStat = ("DEF%")
    else
      mainStat = ("DEF")
    end
  elseif (bestMatchIndex == 3) then
    if  mainStatRegion:exists(Pattern("percentMain.png"):similar(.70)) then
      mainStat = ("ATK%")
    else
      mainStat = ("ATK")
    end
  elseif (bestMatchIndex == 4) then
    mainStat = ("SPD")
  elseif (bestMatchIndex == 5) then
    mainStat = ("CRI Rate")
  elseif (bestMatchIndex == 6) then
    mainStat = ("CRI DMG")
  elseif (bestMatchIndex == 7) then
    mainStat = ("RES")
  elseif (bestMatchIndex == 8) then
    mainStat = ("ACC")
  else mainStat = ("NONE")
    mainStat = ("ACC")
    toast("can't determine main stat") 
  end
  mainStatRegion:highlight()
end
function subEval()
  if runeSubRegion:exists(Pattern("runeSubPercentage.png"):similar(0.8)) then
    subTable = listToTable(runeSubRegion:findAll(Pattern("runeSubPercentage.png"):similar(0.8)))
    runeSubPercCnt = tableLength(subTable)
  else
    runeSubPercCnt = 0
  end
  if runeSubRegion:exists((Pattern("runeSubSPD.png"):similar(0.8)), 3) then
    runeSubPercCnt = runeSubPercCnt + 1
  end
  subMatch = math.floor(runeSubPercCnt / runeSubCnt * 100)
end

function sellRune()
  -- take screenshot with eval result
  setHighlightTextStyle(16777215, 4294967295, textSizeNum)
  runeStatString = " " .. runeRank .. " star \n" .. runeRarity .. "(" .. slotString .. ") rune \n Main Stat: " .. mainStat .. "\n Pct subs: " .. subMatch .. "% \n" .. keepSell .. " "
  runeStatRegion:highlight(runeStatString)
  captureScreenshot()

  -- then sell and record
  sellRegion:existsClick(Pattern("sell.png"):similar(.6))
  runeYesRegion:existsClick(Pattern("yes.png"):similar(.6))
  if runeRank == 6 then r6Sold = r6Sold + 1
  elseif runeRank == 5 then r5Sold = r5Sold + 1
  else runeSold = runeSold + 1
  end
  runeStatRegion:highlightOff()
end

function getRune()
  getRegion:existsClick(Pattern("get.png"):similar(.6))
  if runeRank == 6 then r6Count = r6Count + 1
  elseif runeRank == 5 then r5Count = r5Count + 1
  else r6Count = r6Count + 1
  end
end
function runeKeepCustom ()
   if runeRank == 5 and (runeRarity == "Hero" or runeRarity == "Legendary") then
      keepSell = "Keeping Rune"
      getRune()
   elseif runeRank == 6 then
      keepSell = "Keeping Rune"
      getRune()
   else
      keepSell = "Selling Rune"
      sellRune()
   end
end

function tableLength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

function sellGetRune ()
  if grindstoneRegion:exists(Pattern("grindTilde.png"):similar(imgAccuracy), 0.1) then
    getRune()
  elseif enchantedGemRegion:exists(Pattern("enchantedGem.png"):similar(.6), 0.1) then
    getRune()
  elseif sellAllRune == true then
    sellRune()
  elseif keepAll == true then
    getRune()
  else
    findRuneRarity()
    findRuneRank()
    findRuneSlot()
    findMainStat()
    subEval()
    runeKeepCustom()
  end
end
function setLocation(a, b)
  return Location(a, b)
end
function setZoom(a, b, c, d, e, f, g, h, s)
  return zoom(a, b, c, d, e, f, g, h, s)
end
function setScriptMovement()
  function moveRightLittle()
    swipe(Location(1200, 600), Location(600, 600))
  end
  function moveLeftLittle()
    swipe(Location(600, 600), Location(1200, 600))
  end
  function moveDownLittle()
    swipe(Location(1050, 650), Location(1050, 450))
  end
  function moveUpLittle()
    swipe(Location(1050, 450), Location(1050, 650))
  end
  function moveRight()
    swipe(Location(1600, 600), Location(200, 600))
  end
  function moveLeft()
    swipe(Location(200, 600), Location(1600, 600))
  end
  function moveDown()
    swipe(Location(1050, 800), Location(1050, 350))
  end
  function moveUp()
    swipe(Location(1050, 350), Location(1050, 800))
  end
  function moveUpList()
    swipe(Location(500, 400), Location(500, 800))
  end
  function moveDownList()
    swipe(Location(500, 800), Location(500, 400))
  end
  function moveRightSelectList()
    swipe(Location(1160, 675), Location(75, 675))
  end
  function moveLeftSelectList()
    swipe(Location(75, 675), Location(1160, 675))
  end
  function moveRightFodderList()
    swipe(Location(1215, 740), Location(100, 740))
  end
  function moveLeftFodderList()
    setDragDropTiming(200, 200)
    setDragDropStepCount(500)
    dragDrop(Location(127, 740), Location(1271, 740))
  end
  function zoomOut()
    zoom(300, 500, 900, 500, 1600, 500, 1000, 500, 1)
  end
  function tinySwipe()
    swipe(setLocation(550, 800), setLocation(550, 790))
  end
end
function arenaVictory()
  toast("Arena victory")
  victoryDefeatRegion:existsClick(Pattern("victory.png"):similar(imgAccuracy), 2)
  victoryDefeatRegion:existsClick(Pattern("victory.png"):similar(imgAccuracy), 2)
  arenaRivalDialogRegion:existsClick(Pattern("arenaRivalDialog.png"), 2)
end
function arenaDefeat()
  nocacheSnapshot()
  toast("Arena defeated")
  victoryDefeatRegion:existsClick(Pattern("defeat.png"):similar(imgAccuracy), 2)
  victoryDefeatRegion:existsClick(Pattern("defeat.png"):similar(imgAccuracy), 2)
  arenaRivalDialogRegion:existsClick(Pattern("arenaRivalDialog.png"), 2)
  cacheSnapshot()
end
function refreshList()
  nocacheSnapshot()
  toast("Refreshing list")
  refreshListRegion:existsClick(Pattern("refreshList.png"), 2)
  refreshList2Region:existsClick(Pattern("refreshList2.png"):similar(imgAccuracy * 0.8), 2)
  cacheSnapshot()
end
function existsArenaRival()
  if runRival == true then
    if arenaRivalNumberRegion:exists(Pattern("arenaRivalNumber.png"):similar(imgAccuracy), 3) then
      arenaRivalRegion:existsClick(Pattern("arenaRivalNumber.png"), 3)
      isArenaRival = true
        toast("Finding a Rival")
    end
  elseif runMatchUp == true then
    arenaMatchupRegion:existsClick(Pattern("matchUp.png"), 0.1)
    isArenaRival = false
      toast("Finding a Matchup")
  end
end
function waitClickArenaRival()
  if isArenaRival then
    arenaRivalDialogRegion:existsClick(Pattern("arenaRivalDialog.png"), 10)
    playRegion:existsClick(Pattern("play.png"):similar(0.9), 1)
  else
    playRegion:existsClick(Pattern("play.png"):similar(0.9), 10)
  end
end
function arenaBattle()
  nocacheSnapshot()
  existsArenaRival()
  if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
    arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
    wait(1)
    startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
    waitClickArenaRival()
  elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
    refreshList()
    arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
    wait(1)
    startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
    waitClickArenaRival()
  else
    moveDown()
    if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
      arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
      wait(1)
      startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 3)
      waitClickArenaRival()
    elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
      refreshList()
      arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
      wait(1)
      startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
      waitClickArenaRival()
    else
      moveDown()
      if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
        arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
        wait(1)
        startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 3)
        waitClickArenaRival()
      elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
        refreshList()
        arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
        wait(1)
        startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
        waitClickArenaRival()
      elseif runMatchUp == true then
        arenaMatchupRegion:existsClick(Pattern("matchUp.png"), 0.1)
        if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
          arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
          wait(1)
          startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
          waitClickArenaRival()
        elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
          refreshList()
          arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
          wait(1)
          startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
          waitClickArenaRival()
        else
          moveDown()
          if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
            arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
            wait(1)
            startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 3)
            waitClickArenaRival()
          elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
            refreshList()
            arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
            wait(1)
            startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
            waitClickArenaRival()
          else
            moveDown()
            if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
              arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
              wait(1)
              startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 3)
              waitClickArenaRival()
            elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
              refreshList()
              arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
              wait(1)
              startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
              waitClickArenaRival()
            end
          end
        end
      end
    end
  end
  cacheSnapshot()
end
function liveArenaSelectMon(choice)
  if not slot2Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot2Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(60, 905))
  elseif not slot3Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot3Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(225, 750))
  elseif not slot4Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot4Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(225, 905))
  elseif not slot5Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot5Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(390, 750))
  elseif not slot6Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot6Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(390, 905))
  elseif not slot7Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot7Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(555, 750))
  elseif not slot8Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot8Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(555, 905))
  elseif not slot9Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot9Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(715, 750))
  elseif not slot10Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot10Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(715, 905))
  end
end
function liveArenaBattle()
  toast("Live Arena Battle")
  liveArenaBattleRegion:existsClick(Pattern("liveArenaBattle.png"), 0.1)
  local a = 0
  toast("Waiting for Opponent")
  while true do
    if a < 20 and not liveArenaTopRegion:exists(Pattern("liveArenaSelect.png"), 0.1) then
      a = a + 1
      wait(3)
      break
    end
  end
  local b = 0
  local d = 0
  while b < 3 do
    if liveArenaTopRegion:exists(Pattern("liveArenaSelect.png"), 0.1) then
      liveArenaSelectMon()
      if liveArenaSameMonOkRegion:existsClick(Pattern("liveArenaSameMonOk.png"), 0.1) then
        liveArenaSameMonOkRegion:existsClick(Pattern("ok.png"), 0.1)
        liveArenaSelectMon()
      end
      liveArenaSelectMon()
      if liveArenaSameMonOkRegion:existsClick(Pattern("liveArenaSameMonOk.png"), 0.1) then
        liveArenaSelectMon()
      end
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"):similar(runeAccuracy), 1)
      b = b + 1
    else
      while d < 10 do
        wait(3)
        if not liveArenaTopRegion:exists(Pattern("liveArenaOppSelect.png"), 0.1) then
          break
        end
        d = d + 1
      end
    end
  end
  local c = 0
  while c < 10 do
    if liveArenaTopRegion:exists(Pattern("liveArenaBanOpp.png"), 3) then
      toast("Banning Opponent Monster")
      click(Location(1155, 405))
      click(Location(1155, 320))
      click(Location(1155, 215))
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"):similar(runeAccuracy), 0.1)
      break
    else
      wait(3)
      c = c + 1
    end
  end
  local e = 0
  while e < 10 do
    if liveArenaTopRegion:exists(Pattern("liveArenaLeader.png"), 3) then
      toast("Selecting Leader")
      click(Location(435, 405))
      click(Location(435, 215))
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"):similar(runeAccuracy), 0.1)
      break
    else
      wait(3)
      e = e + 1
    end
  end
end
function closeArenaDialogBox()
  toast("Close Arena Dialog Box")
  arenaXRegion:highlight(2)
  arenaXRegion:existsClick(Pattern("closeX.png"), 2)
  toast("Exit Arena Screen")
  backButtonRegion:highlight(2)
  existsClick(Pattern("back2Button.png"):similar(.6), 3)
end
function closeCairoDungeonDialogBox()
  closeXCairoDungeonRegion:highlight(2)
  closeXCairoDungeonRegion:existsClick(Pattern("closeX.png"), 2)
end
function closeScenarioDialogBox()
  closeXScenarioRegion:existsClick(Pattern("closeX.png"), 2)
end
function closeRiftDialogBox()
  closeXRiftRegion:existsClick(Pattern("closeX.png"), 2)
end
function closeToaDialogBox()
  closeXToaRegion:existsClick(Pattern("closeX.png"), 2)
end
function clickRiftBack()
  riftBackRegion:existsClick(Pattern("back2Button.png"), 2)
end
function clickMatchupArena()
  existsClick(Pattern("mapArena.png"):similar(.5))
  existsClick(Pattern("startArenaSelect.png"):similar(.5))
  existsClick(Pattern("startArenaBattle.png"):similar(.5))
  existsArenaRival()
end
function findArena()
  toast("Finding Arena")
  closeXStartDialog:existsClick(Pattern("closeX.png"), 0.1)
  if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
    clickMatchupArena()
  elseif dialogCairoDungeonRegion:exists(Pattern("cairoDungeon.png"):similar(imgAccuracy), 0.1) then
    closeCairoDungeonDialogBox()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      else
        moveLeft()
        clickMatchupArena()
      end
    end
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
    closeScenarioDialogBox()
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      end
    end
  elseif dialogToaRegion:exists(Pattern("dialogToa.png"):similar(imgAccuracy), 0.1) then
    closeToaDialogBox()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      else
        moveLeft()
        clickMatchupArena()
      end
    end
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    wait(1)
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      end
    end
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 3) then
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      end
    end
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 2) then
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      end
    end
  end
end
function clickLiveArena()
  existsClick(Pattern("mapArena.png"), 0.1)
  existsClick(Pattern("worldArena.png"):similar(.6), 3)
end
function findLiveArena()
  toast("Finding Live Arena")
  if liveArenaMapRegion:exists(Pattern("mapLiveArena.png"), 0.1) then
    clickLiveArena()
  elseif exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
    clickLiveArena()
  elseif dialogCairoDungeonRegion:exists(Pattern("cairoDungeon.png"):similar(imgAccuracy), 0.1) then
    closeCairoDungeonDialogBox()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      else
        moveLeft()
        clickLiveArena()
      end
    end
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
    closeScenarioDialogBox()
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      end
    end
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    wait(1)
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      end
    end
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 3) then
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      end
    end
  elseif exists(Pattern("dialogTOA.png"):similar(imgAccuracy), 0.1) then
    closeToaDialogBox()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      else
        moveLeft()
        clickLiveArena()
      end
    end
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 2) then
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      end
    end
  end
end
function clickGiantB10()
  if dungeonListRegion:existsClick(Pattern("mapGiantsKeep.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if dungeonBattleRegion:exists(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0))) then
        dungeonBattleRegion:existsClick(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
    elseif dungeonListRegion:exists(Pattern("mapGiantsKeep.png"):similar(imgAccuracy), 1) then
        keyevent(4)
        toast("Couldn't find B"..bNum..", going back")
        findDungeon()
    end
  end
end
function clickDragonB10()
  if dungeonListRegion:existsClick(Pattern("mapDragonsLair.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if dungeonBattleRegion:exists(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0))) then
        dungeonBattleRegion:existsClick(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
    elseif dungeonListRegion:exists(Pattern("mapDragonsLair.png"):similar(imgAccuracy), 1) then
        keyevent(4)
        toast("Couldn't find B"..bNum..", going back")
        findDungeon()
    end
  end
end
function clickNecroB10()
  if dungeonListRegion:existsClick(Pattern("mapNecropolis.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if dungeonBattleRegion:exists(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0))) then
        dungeonBattleRegion:existsClick(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
    elseif dungeonListRegion:exists(Pattern("mapNecropolis.png"):similar(imgAccuracy), 1) then
        keyevent(4)
        toast("Couldn't find B"..bNum..", going back")
        findDungeon()
    end
  end
end
function clickDungeon()
  nocacheSnapshot()
  if runGiant then
    clickGiantB10()
  elseif runDragon then
    clickDragonB10()
  elseif runNecro then
    clickNecroB10()
  end
  cacheSnapshot()
end
function existsDungeon()
  if runGiant then
    if dungeonListRegion:exists(Pattern("mapGiantsKeep.png"), 0.1) then
      return true
    end
  elseif runDragon then
    if dungeonListRegion:exists(Pattern("mapDragonsLair.png"), 0.1) then
      return true
    end
  elseif runNecro then
    if dungeonListRegion:exists(Pattern("mapNecropolis.png"), 0.1) then
      return true
    end
  else
    return false
  end
end
function findDungeon()
  if runGiant then
    toast("Finding Giant's Keep")
  elseif runDragon then
    toast("Finding Dragon's Lair")
  elseif runNecro then
    toast("Finding Necropolis")
  else
    return
  end

  -- on list
  if existsDungeon() then
    clickDungeon()
  elseif dungeonListRegion:exists(Pattern("mapHallofMagic.png"):similar(imgAccuracy), 0.1) then
    moveUpList()
    clickDungeon()
  elseif dungeonListRegion:exists(Pattern("mapHallofWater.png"):similar(imgAccuracy), 0.1) then
    moveUpList()
    wait(1)
    moveUpList()
    clickDungeon()
    -- somewhere else
  elseif arenaRankRegion:exists(Pattern("arenaRank.png"):similar(imgAccuracy), 0.1) then
    closeArenaDialogBox()
    existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
    clickDungeon()
  elseif exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
    existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
    clickDungeon()
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
    closeDialogScenarioRegion:existsClick(Pattern("closeX.png"):similar(imgAccuracy), 2)
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
      clickDungeon()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
        clickDungeon()
      end
    end
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    wait(1)
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      clickDungeon()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        clickDungeon()
      end
    end
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 3) then
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      clickDungeon()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        clickDungeon()
      end
    end
  elseif exists(Pattern("dialogTOA.png"):similar(imgAccuracy), 0.1) then
    closeToaDialogBox()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      clickDungeon()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        clickDungeon()
      else
        moveLeft()
        clickDungeon()
      end
    end
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 0.1) then
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
      clickDungeon()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
        clickDungeon()
      end
    end
  end
end

function clickRiftRaid()
  nocacheSnapshot()
  if existsClick(Pattern("mapRiftOfWorlds.png"), 3) then
    refillYesRegion:existsClick(Pattern("yes.png"):similar(0.6), 0.1)
  end
  if existsClick(Pattern("riftRaid.png"), 3) then
    debugt("join r5 team")
    raidJoinRegion:existsClick(Pattern("raidJoinParty.png"):similar(0.3), 0.1)
    riftBattleRegion:existsClick(Pattern("battle.png"), 3)
  end
end
function clickRift()
  toast("clicking rift")
  clickRiftRaid()
end
function existsRift()
  if runRiftRaid then
    if exists(Pattern("riftRaid.png"), 3) then
      return true
    end
  else
    return false
  end
end

function debugt(msg)
  -- debug toast
  if debug == true then
    toast(msg)
  end
end

function findRift()
  nocacheSnapshot()
  if runRiftRaid then
    debugt("Finding Rift (Raid)")
  else
    return
  end

  -- team mate afk, or failure count >= 3, exit and find new
  if checkNoRaidActivity() == true or raidFailureCount > 2 then
    if raidFailureCount > 2 then
      debugt("raid quit: failure")
    else
      debugt("raid quit: not active")
    end

    raidFailureCount = 0
    RiftRaidQuitRegion:existsClick(Pattern("closeX.png"):similar(0.5), 0.1)
    refillYesRegion:existsClick(Pattern("yes.png"):similar(0.6), 0.1)
    resetNoRaidActivity()
  end

  -- inside a team 
  if raidReadyRegion:existsClick(Pattern("raidReady.png"):similar(0.6), 0.1) then
    debugt("raid ready button clicked")
    return
  end
  if raidReadyRegion:existsClick(Pattern("raidStart.png"):similar(0.6), 0.1) then
    debugt("raid start clicked(leader)")
    refillYesRegion:existsClick(Pattern("yes.png"):similar(0.6), 0.1)
    return
  end
  
  if existsRift() then
    clickRift()
  elseif battleIconRegion:existsClick(Pattern("iconBattle.png"), 2) then
    debugt("Battle icon")
    clickRift()
  elseif exists(Pattern("mapRiftOfWorlds.png"), 0.1) then
    clickRift()
  elseif arenaRankRegion:exists(Pattern("arenaRank.png"):similar(imgAccuracy), 0.1) then
    closeArenaDialogBox()
    clickRift()
  elseif dialogCairoDungeonRegion:exists(Pattern("cairoDungeon.png"):similar(imgAccuracy), 0.1) then
    closeCairoDungeonDialogBox()
    if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
        clickRift()
      else
        moveLeft()
        clickRift()
      end
    end
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
    closeScenarioDialogBox()
    moveLeft()
    if exists(Pattern("mapRiftOfWorlds.png"), 0.1) then
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapRiftOfWorlds.png"), 0.1) then
        clickRift()
      end
    end
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    wait(1)
    moveLeft()
    if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
        clickRift()
      end
    end
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 3) then
    moveLeft()
    if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
        clickRift()
      end
    end
  elseif dialogToaRegion:exists(Pattern("dialogTOA.png"):similar(imgAccuracy), 0.1) then
    closeToaDialogBox()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        clickRift()
      else
        moveLeft()
        clickRift()
      end
    end
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 0.1) then
    moveLeft()
    if exists(Pattern("mapRiftOfWorlds.png"), 0.1) then
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapRiftOfWorlds.png"), 0.1) then
        clickRift()
      end
    end
  end
end
function clickTOAStage()
  if dialogToaRegion:exists(Pattern("dialogTOA.png"):similar(0.7), 1) then
    existsClick(Pattern("toaReady.png"):similar(imgAccuracy * 0.4), 2)
  end
end
function findMap()
  closeXMagicShopRegion:existsClick(Pattern("closeX.png"), 2)
  if moveIconRegion:exists(Pattern("iconMove.png"), 2) then
    tinySwipe()
  end
  battleIconRegion:existsClick(Pattern("iconBattle.png"), 2)
  wait(1.5)
end
function runScenarioDungeon()
  findDungeon()
  findRift()
end
function runLiveArenaStart()
  while runLiveArena do
    if liveArenaBattleRegion:exists(Pattern("liveArenaBattle.png"), 0.1) then
      liveArenaBattleRegion:existsClick(Pattern("liveArenaBattle.png"), 0.1)
    end
    if liveArenaTopRegion:exists(Pattern("liveArenaSelect.png"), 0.1) then
      liveArenaSelectMon()
      liveArenaSelectMon()
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"), 1)
    end
    if liveArenaTopRegion:exists(Pattern("liveArenaBanOpp.png"), 0.1) then
      toast("Banning Opponent Monster")
      click(setLocation(1155, 405))
      click(setLocation(1155, 320))
      click(setLocation(1155, 215))
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"), 0.1)
    end
    if liveArenaTopRegion:exists(Pattern("liveArenaLeader.png"), 0.1) then
      toast("Selecting Leader")
      click(setLocation(435, 405))
      click(setLocation(435, 215))
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"), 0.1)
    end
    if liveArenaSameMonOkRegion:existsClick(Pattern("liveArenaSameMonOk.png"), 0.1) then
      liveArenaSameMonOkRegion:existsClick(Pattern("ok.png"), 0.1)
      liveArenaSelectMon()
    end
    if exists(Pattern("victory.png"):similar(.7), 0.1) then
      arenaWinCount = arenaWinCount + 1
      resetTimerNoActivity()
      showBattleResult("Live Arena Start")
      printBattleMessage()
      existsClick(Pattern("victory.png"):similar(.7), 0.1)
    end
    if exists(Pattern("defeat.png"):similar(.7), 0.1) then
      arenaLoseCount = arenaLoseCount + 1
      resetTimerNoActivity()
      showBattleResult("Live Arena Defeated")
      printBattleMessage()
      existsClick(Pattern("defeat.png"):similar(.7), 0.1)
    end
    if exists(Pattern("play.png"):similar(0.9), 0.1) then
      existsClick(Pattern("play.png"):similar(0.9), 1)
    end
    if (backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 0.1) or dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1)) and not liveArenaDialogRegion:exists(Pattern("dialogLiveArena.png"):similar(imgAccuracy), 0.1) then
      findLiveArena()
    end
  end
end

function checkNoRaidActivity()
  if timerNoRaidActivity:check() > maxNoRaidActivity then
    return true
  else
    return false
  end
end
function resetNoRaidActivity()
  timerNoRaidActivity:set()
end
function runRiftRaidStart ()
  --while runRiftRaid do
  cacheSnapshot()
  -- TODO: test with different position(left/mid/right), yes/no leader skill, no energy,
  -- mid requires double click and both ready
  -- raidStart for mid, ready for left/right
  if raidReadyRegion:existsClick(Pattern("raidStart.png"):similar(0.6), 0.1) then
     refillYesRegion:existsClick(Pattern("yes.png"):similar(0.6), 0.1)
  end
  raidReadyRegion:existsClick(Pattern("raidReady.png"):similar(0.6), 0.1)

  -- win
  nocacheSnapshot()
  if raidVictoryTotalRegion:exists(Pattern("raidVictoryTotal.png"):similar(0.6), 0.1) then
    wait(4)
    -- raidVictoryTotalRegion overlaps with 2nd monster of left's first row
    -- increase similar arg to prevent
    raidVictoryTotalRegion:existsClick(Pattern("raidVictoryTotal.png"):similar(0.9), 0.1)
    winCount = winCount + 1
    raidFailureCount = 0
    showBattleResult("Start Battle")
    resetTimerNoActivity()
    resetNoRaidActivity()
    showBattleResult("Battle Start")
    printBattleMessage()
    -- loss
  elseif raidLossTotalRegion:exists(Pattern("raidVictoryTotal.png"):similar(0.6), 0.1) then
    raidLossTotalRegion:existsClick(Pattern("raidVictoryTotal.png"):similar(0.6), 0.1)
    loseCount = loseCount + 1
    raidFailureCount = raidFailureCount + 1
    showBattleResult("Battle Start")
    printBattleMessage()
    resetTimerNoActivity()
    resetNoRaidActivity()
    wait(3)
  end
  raidOkRegion:existsClick(Pattern("ok.png"):similar(0.6), 0.1)

  -- buy energy
  if notEnoughEnergyRegion:exists(Pattern("notEnoughEnergy.png"):similar(0.6), 0.1) then
     refill()
  end
  raidGetRegion:existsClick(Pattern("get.png"):similar(0.6), 0.1)
  if sameSessionRegion:exists(Pattern("sameSession.png"):similar(0.6), 2) then
    refillYesRegion:existsClick(Pattern("yes.png"):similar(0.6), 0.1)
  end

  raidReadyRegion:existsClick(Pattern("raidReady.png"):similar(0.6), 0.1)
  if noLeaderSkillRegion:exists(Pattern("noLeaderSkill.png"):similar(0.6), 0.1) then
     noLeaderSkillYesRegion:existsClick(Pattern("yes.png"):similar(0.6), 0.1)
  end
  --end
end

defaultValues ()
defaultTrueFalse ()
defaultRegionLocation ()
dialogBox()
setDialogOptions()
setAdvancedOptions()
automaticUpdates ()
showBattleResult("Begin")
timerNoActivity = Timer()
while true do
  -- subroutines
  if runTestHighlight == true then
    testHighlight()
  elseif runRiftRaid == true then
    findRift()
    clickRiftRaid()
    -- while loop inside
    runRiftRaidStart()
  elseif runLiveArena == true then
    runLiveArenaStart()

  -- dungeon or current battle
  elseif not runLiveArena or not runRiftRaid then
    cacheSnapshot()

    -- start battle/no revive/rune eval
    if startRegion:exists(Pattern("start.png"):similar(imgAccuracy), 0.1) then
      start()
    end
    if victoryDiamondRegion:exists(Pattern("victoryDiamond.png"):similar(.7), 0.1) and not victoryDefeatStageRegion:exists(Pattern("arena.png"):similar(.7), 0.3) then
      winCount = winCount + 1
      showBattleResult("Start Battle")
      resetTimerNoActivity()
      if stopMaxLevel == true then
        isBattleSlotMax()
      end
      victory()
      showBattleResult("Battle Start")
      printBattleMessage()
      if isMaxLevel then
        printBattleMessage()
        print("Max Level Reach!")
        break
      end
      replayOrNext()
      start()
    end
    if reviveNoRegion:exists(Pattern("noRevive.png"):similar(imgAccuracy), 0.1) then
      loseCount = loseCount + 1
      showBattleResult("Battle Start")
      printBattleMessage()
      resetTimerNoActivity()
      defeated()
      if isMaxLevel then
         printBattleMessage()
         toast("Max Level Reach!")
         break
      end
      start()
    end
    if sellRegion:exists(Pattern("sell.png"):similar(.6)) then
      sellGetRune()
      start()
    end
    if runeSellTextRegion:existsClick(Pattern("runeSellText.png"), 0.1) then
      runeYesRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy * 0.9), 0.1)
    end
    if toaNextStageRegion:exists(Pattern("next.png"):similar(imgAccuracy), 0.1) then
      replayOrNext()
    end
    if replayRegion:exists(Pattern("replay.png"), 0.1) then
      replayOrNext()
      start()
    end
    if arenaRankRegion:exists(Pattern("arenaRank.png"):similar(imgAccuracy), 0.1) then
      arenaBattle()
    end
    if refreshList2Region:exists(Pattern("refreshList2.png"):similar(imgAccuracy * 0.8), 0.1) then
      refreshList()
      arenaBattle()
    end
    if notEnoughWingRegion:exists(Pattern("arenaNotReady.png"):similar(imgAccuracy), 0.1) then
      toast("Arena Not Ready")
      arenaBattle()
      start()
    end
    if victoryDefeatStageRegion:exists(Pattern("arena.png"):similar(imgAccuracy), 0.1) and victoryDefeatRegion:exists(Pattern("victory.png"):similar(imgAccuracy * 1.1), 0.3) then
      arenaWinCount = arenaWinCount + 1
      showBattleResult("Arena Start")
      printBattleMessage()
      resetTimerNoActivity()
      arenaVictory()
      arenaBattle()
    end
    if victoryDefeatStageRegion:exists(Pattern("arena.png"):similar(imgAccuracy), 0.1) and victoryDefeatRegion:exists(Pattern("defeat.png"):similar(imgAccuracy * 1.1), 0.3) then
      arenaLoseCount = arenaLoseCount + 1
      showBattleResult("Arena Start")
      printBattleMessage()
      resetTimerNoActivity()
      arenaDefeat()
      refreshList()
      arenaBattle()
    end
    if arenaRivalDialogRegion:existsClick(Pattern("arenaRivalDialog.png"), 0.1) then
      playRegion:existsClick(Pattern("play.png"):similar(0.9), 1)
    end
    if arenaFailLoadRegion:exists(Pattern("arenaFailedLoad.png"), 0.1) then
      arenaOkRegion:existsClick(Pattern("arenaOk.png"), 0.1)
    end
    if riftBattleRegion:exists(Pattern("riftDungeon.png"):similar(imgAccuracy), 0.1) then
      riftBattleRegion:existsClick(Pattern("battle.png"):similar(imgAccuracy), 1)
    end
    if riftRankRegion:exists(Pattern("riftRank.png"):similar(imgAccuracy), 0.1) then
      nocacheSnapshot()
      riftBattle = riftBattle + 1
      showBattleResult("Rift Battle Start")
      printBattleMessage()
      resetTimerNoActivity()
      riftRankRegion:existsClick(Pattern("riftRank.png"):similar(imgAccuracy), 0.1)
      wait(0.5)
      riftRankRegion:existsClick(Pattern("riftRank.png"):similar(imgAccuracy), 0.1)
      wait(0.5)
      riftRankRegion:existsClick(Pattern("riftRank.png"):similar(imgAccuracy), 0.1)
      wait(0.5)
      if not okRegion:existsClick(Pattern("ok.png"):similar(imgAccuracy), 1.5) then
        sellGetRune()
      end
      replayOrNext()
      start()
    end
    if dialogToaRegion:exists(Pattern("dialogTOA.png"):similar(imgAccuracy * 0.8), 0.1) then
      clickTOAStage()
      start()
    end
    if notEnoughWingRegion:exists(Pattern("notEnoughWing.png"):similar(.6), 0.1) then
      refillNoRegion:existsClick(Pattern("noPurchase.png"):similar(0.6), 3)
      if farmLoc == spinnerFarmLoc[8] then
        nocacheSnapshot()
        runRiftRaid = true
        existsClick(Pattern("closeX.png"):similar(.6), 3)
        existsClick(Pattern("back2Button.png"):similar(.6), 3)
        runScenarioDungeon()
        runRiftRaidStart()
      else
        runScenarioDungeon()
        start()
      end
    end
    if notEnoughEnergyRegion:exists(Pattern("notEnoughEnergy.png"):similar(imgAccuracy * 0.9), 0.1) or notEnoughEnergyRegion:exists(Pattern("notEnoughEnergy2.png"):similar(imgAccuracy * 0.9), 0.1) then
      if not arenaCheck and runArena then
        arenaCheck = true
        refillNoRegion:existsClick(Pattern("noPurchase.png"):similar(imgAccuracy), 3)
        existsClick(Pattern("worldMap.png"):similar(imgAccuracy), 3)
        findArena()
      else
        arenaCheck = false
        refill()
        replayOrNext()
        start()
      end
    end
    if okPurchaseRegion:existsClick(Pattern("okPurchase.png"):similar(imgAccuracy), 0.1) then
    end
    if closePurchaseRegion:existsClick(Pattern("closePurchase.png"):similar(imgAccuracy), 0.1) then
    end

    -- delay popup, should never break? FIXME
    if connectionDelayRegion:exists(Pattern("connectionDelay.png"):similar(imgAccuracy), 0.1) then
      delayAmt = 0
      while delayAmt < connectionTimeout do
        toast("Connection Issues.  Rechecking in 15 sec")
        if connectionDelayRegion:exists(Pattern("connectionDelay.png"):similar(imgAccuracy), 2) then
          yesRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy * 0.9), 2)
          delayAmt = delayAmt + 1
          if delayAmt > connectionTimeout then
            toast("Delay too long")
            break
          end
          wait(15)
        else
          delayAmt = 0
          break
        end
      end
      if closeNowRegion:exists(Pattern("closeNow.png"):similar(imgAccuracy), 0.1) then
          closeNowYesRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy), 0.1)
      end
    end

    -- unpause and start
    if pauseRegion:exists(Pattern("pause.png"):similar(imgAccuracy * 0.8), 0.1) then
      pauseRegion:existsClick(Pattern("pause.png"):similar(imgAccuracy * 0.8), 0.3)
    end
    if playRegion:exists(Pattern("play.png"):similar(imgAccuracy), 0.1) then
      playRegion:existsClick(Pattern("play.png"):similar(0.8), 1)
    end

    -- Battle button in main land
    if battleIconRegion:existsClick(Pattern("iconBattle.png"), 0.1) then
      findMap()
    end

    -- no activity timeout
    -- FIXME: add screenshot to debug
    if checkTimerNoActivity() then
      break
    end

    -- Popup premium packs
    -- FIXME: verify this works
    if dialogTextCenterRegion:exists(Pattern("PurchaseItem.png"):similar(imgAccuracy), 0.1) then
      hideBattleResult()
      closeXPurchaseRegion:existsClick(Pattern("closeX.png"):similar(imgAccuracy), 3)
      existsClick(Pattern("close.png"), 0.1)
      yesRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy * 0.9), 3)
      showBattleResult()
    end

    -- edge cases? FIXME: where is this..
    if (backButtonRegion:exists(Pattern("backButton.png"):similar(runeAccuracy * 0.8), 0.1) or dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) or riftBackRegion:exists(Pattern("back2Button.png"), 0.1)) and not arenaRankRegion:exists(Pattern("arenaRank.png"):similar(imgAccuracy), 0.1) then
      runScenarioDungeon()
      start()
    end
  end
  nocacheSnapshot()
end
