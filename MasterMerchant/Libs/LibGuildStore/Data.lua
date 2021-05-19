local lib               = _G["LibGuildStore"]
local internal          = _G["LibGuildStore_Internal"]
local sales_data        = _G["LibGuildStore_SalesData"]
local sr_index          = _G["LibGuildStore_SalesIndex"]
local purchases_data    = _G["LibGuildStore_PurchaseData"]
local pr_index          = _G["LibGuildStore_PurchaseIndex"]
local listings_data     = _G["LibGuildStore_ListingsData"]
local lr_index          = _G["LibGuildStore_ListingsIndex"]
local posted_items_data = _G["LibGuildStore_PostedItemsData"]
local pir_index         = _G["LibGuildStore_PostedItemsIndex"]
local cancelled_items_data = _G["LibGuildStore_CancelledItemsData"]
local cr_index             = _G["LibGuildStore_CancelledItemsIndex"]

local LGH           = LibHistoire

function internal:concat(a, ...)
  if a == nil and ... == nil then
    return ''
  elseif a == nil then
    return internal:concat(...)
  else
    if type(a) == 'boolean' then
      --d(tostring(a) .. ' ' .. internal:concat(...))
    end
    return tostring(a) .. ' ' .. internal:concat(...)
  end
end

function internal:concatHash(a, ...)
  if a == nil and ... == nil then
    return ''
  elseif a == nil then
    return internal:concat(...)
  else
    if type(a) == 'boolean' then
      --d(tostring(a) .. ' ' .. internal:concat(...))
    end
    return tostring(a) .. ' ' .. internal:concat(...)
  end
end

function internal:GetIndexByString(key, stringName)
  if internal:is_empty_or_nil(GS16DataSavedVariables[key]) then return nil end
  if GS16DataSavedVariables[key] and GS16DataSavedVariables[key][stringName] then
    return GS16DataSavedVariables[key][stringName]
  end
  return nil
end

function internal:GetStringByIndex(key, index)
  if key == internal.GS_CHECK_ACCOUNTNAME then
    if internal:is_empty_or_nil(internal.accountNameByIdLookup[index]) then return nil end
    return internal.accountNameByIdLookup[index]
  end
  if key == internal.GS_CHECK_ITEMLINK then
    if internal:is_empty_or_nil(internal.itemLinkNameByIdLookup[index]) then return nil end
    return internal.itemLinkNameByIdLookup[index]
  end
  if key == internal.GS_CHECK_GUILDNAME then
    if internal:is_empty_or_nil(internal.guildNameByIdLookup[index]) then return nil end
    return internal.guildNameByIdLookup[index]
  end
  return ""
end

-- uses mod to determine which save files to use
function internal:MakeHashString(itemLink)
  name       = zo_strlower(zo_strformat(SI_TOOLTIP_ITEM_NAME, GetItemLinkName(itemLink)))
  local hash = 0
  for c in zo_strgmatch(name, '.') do
    if c then hash = hash + string.byte(c) end
  end
  return hash % 16
end

local function GetLevelAndCPRequirementFromItemLink(itemLink)
  local link = { ZO_LinkHandler_ParseLink(itemLink) }
  return tonumber(link[5]), tonumber(link[6])
end

local function GetPotionPowerLevel(itemLink)
  local CP, level = GetLevelAndCPRequirementFromItemLink(itemLink)
  if level < 50 then
    return level
  end
  return CP
end

-- The index consists of the item's required level, required vet
-- level, quality, and trait(if any), separated by colons.
local itemIndexCache = { }

local function GetItemLinkParseData(itemLink, itemType)
  if itemType ~= ITEMTYPE_MASTER_WRIT then
    return zo_strmatch(itemLink, '|H.-:item:.-:(%d-)|h') or 0
  end
  return 0
end

local function GetItemTrait(itemLink, itemType)
  if itemType ~= ITEMTYPE_POISON and itemType ~= ITEMTYPE_POTION then
    return GetItemLinkTraitType(itemLink) or 0
  end
  local powerLevel = GetPotionPowerLevel(itemLink)
  return MasterMerchant.potionVarientTable[powerLevel] or 0
end

local function GetRequiredLevel(itemLink, itemType)
  return itemType ~= ITEMTYPE_RECIPE and GetItemLinkRequiredLevel(itemLink) or 1
end

local function CreateIndexFromLink(itemLink)
  local itemType, specializedItemType = GetItemLinkItemType(itemLink)
  return GetRequiredLevel(itemLink, itemType) .. ":" .. GetItemLinkRequiredChampionPoints(itemLink) / 10 .. ":" .. GetItemLinkQuality(itemLink) .. ":" .. GetItemTrait(itemLink, itemType) .. ":" .. GetItemLinkParseData(itemLink, itemType)
end

function internal.GetOrCreateIndexFromLink(itemLink)
  local index = itemIndexCache[itemLink]
  if not index then
    itemIndexCache[itemLink] = CreateIndexFromLink(itemLink)
    index = itemIndexCache[itemLink]
  end
  return index
end

function internal:AddSearchToItem(itemLink)
  --Standardize Level to 1 if the level is not relevent but is stored on some items (ex: recipes)
  local requiredLevel = 1
  local itemType      = GetItemLinkItemType(itemLink)
  if itemType ~= ITEMTYPE_RECIPE then
    requiredLevel = GetItemLinkRequiredLevel(itemLink) -- verified
  end

  local requiredVeteranRank = GetItemLinkRequiredChampionPoints(itemLink) -- verified
  local vrAdder             = GetString(GS_CP_RANK_SEARCH)

  local adder               = ''
  if (requiredLevel > 0 or requiredVeteranRank > 0) then
    if (requiredVeteranRank > 0) then
      adder = vrAdder .. string.format('%02d', requiredVeteranRank)
    else
      adder = GetString(GS_REGULAR_RANK_SEARCH) .. string.format('%02d', requiredLevel)
    end
  else
    adder = vrAdder .. '00 ' .. GetString(GS_REGULAR_RANK_SEARCH) .. '00'
  end

  -- adds green blue
  local itemQuality = GetItemLinkDisplayQuality(itemLink) -- verified
  if (itemQuality == ITEM_DISPLAY_QUALITY_NORMAL) then adder = internal:concat(adder, GetString(GS_COLOR_WHITE)) end
  if (itemQuality == ITEM_DISPLAY_QUALITY_MAGIC) then adder = internal:concat(adder, GetString(GS_COLOR_GREEN)) end
  if (itemQuality == ITEM_DISPLAY_QUALITY_ARCANE) then adder = internal:concat(adder, GetString(GS_COLOR_BLUE)) end
  if (itemQuality == ITEM_DISPLAY_QUALITY_ARTIFACT) then adder = internal:concat(adder, GetString(GS_COLOR_PURPLE)) end
  if (itemQuality == ITEM_DISPLAY_QUALITY_LEGENDARY) then adder = internal:concat(adder, GetString(GS_COLOR_GOLD)) end
  if (itemQuality == ITEM_DISPLAY_QUALITY_MYTHIC_OVERRIDE) then adder = internal:concat(adder,
    GetString(GS_COLOR_ORANGE)) end

  -- adds Mythic Legendary
  adder           = internal:concat(adder,
    zo_strformat("<<t:1>>", GetString("SI_ITEMDISPLAYQUALITY", itemQuality))) -- verified

  -- adds Heavy
  local armorType = GetItemLinkArmorType(itemLink) -- verified
  if (armorType ~= 0) then
    adder = internal:concat(adder, zo_strformat("<<t:1>>", GetString("SI_ARMORTYPE", armorType)))
  end

  -- adds Apparel
  local filterType = GetItemLinkFilterTypeInfo(itemLink) -- verified
  if (filterType ~= 0) then
    adder = internal:concat(adder, zo_strformat("<<t:1>>", GetString("SI_ITEMFILTERTYPE", filterType)))
  end
  -- declared above
  -- local itemType = GetItemLinkItemType(itemLink) -- verified
  if (itemType ~= 0) then
    adder = internal:concat(adder, zo_strformat("<<t:1>>", GetString("SI_ITEMTYPE", itemType)))
  end

  -- adds Mark of the Pariah
  local isSetItem, setName = GetItemLinkSetInfo(itemLink) -- verified
  if (isSetItem) then
    adder = internal:concat(adder, 'set', setName)
  end

  -- adds Sword, Healing Staff
  local weaponType = GetItemLinkWeaponType(itemLink) -- verified
  if (weaponType ~= 0) then
    adder = internal:concat(adder, zo_strformat("<<t:1>>", GetString("SI_WEAPONTYPE", weaponType)))
  end

  -- adds chest two-handed
  local itemEquip = GetItemLinkEquipType(itemLink) -- verified
  if (itemEquip ~= 0) then
    adder = internal:concat(adder, zo_strformat("<<t:1>>", GetString("SI_EQUIPTYPE", itemEquip)))
  end

  -- adds Precise
  local itemTrait = GetItemLinkTraitType(itemLink) -- verified
  if (itemTrait ~= 0) then
    adder = internal:concat(adder, zo_strformat("<<t:1>>", GetString("SI_ITEMTRAITTYPE", itemTrait)))
  end

  resultTable  = {}
  resultString = zo_strgmatch(adder, '%S+')
  for word in resultString do
    if next(resultTable) == nil then
      table.insert(resultTable, word)
    elseif not internal:is_in(word, resultTable) then
      table.insert(resultTable, " " .. word)
    end
  end
  adder = table.concat(resultTable)
  return zo_strlower(adder)
end

function internal:BuildAccountNameLookup()
  internal:dm("Debug", "BuildAccountNameLookup")
  if not GS16DataSavedVariables["accountNames"] then GS16DataSavedVariables["accountNames"] = {} end
  for key, value in pairs(GS16DataSavedVariables["accountNames"]) do
    internal.accountNameByIdLookup[value] = key
  end
end

function internal:BuildItemLinkNameLookup()
  internal:dm("Debug", "BuildItemLinkNameLookup")
  if not GS16DataSavedVariables["itemLink"] then GS16DataSavedVariables["itemLink"] = {} end
  for key, value in pairs(GS16DataSavedVariables["itemLink"]) do
    internal.itemLinkNameByIdLookup[value] = key
  end
end
function internal:BuildGuildNameLookup()
  internal:dm("Debug", "BuildGuildNameLookup")
  if not GS16DataSavedVariables["guildNames"] then GS16DataSavedVariables["guildNames"] = {} end
  for key, value in pairs(GS16DataSavedVariables["guildNames"]) do
    internal.guildNameByIdLookup[value] = key
  end
end

function internal:SetPurchaseData(theIID)
  local dataTable   = _G["GS17DataSavedVariables"]
  local savedVars   = dataTable[internal.purchasesNamespace]
  savedVars[theIID] = {}
  return savedVars[theIID]
end

function internal:SetPostedItmesData(theIID)
  local dataTable   = _G["GS17DataSavedVariables"]
  local savedVars   = dataTable[internal.postedNamespace]
  savedVars[theIID] = {}
  return savedVars[theIID]
end

function internal:SetCancelledItmesData(theIID)
  local dataTable   = _G["GS17DataSavedVariables"]
  local savedVars   = dataTable[internal.cancelledNamespace]
  savedVars[theIID] = {}
  return savedVars[theIID]
end

function internal:SetVisitedGuildsItmesData()
  local dataTable   = _G["GS16DataSavedVariables"]
  local savedVars   = dataTable[internal.visitedNamespace]
  savedVars[theIID] = {}
  return savedVars[theIID]
end

function internal:SetTraderListingData(itemLink, theIID)
  local hash        = internal:MakeHashString(itemLink)
  local dataTable   = _G[string.format("GS%02dDataSavedVariables", hash)]
  local savedVars   = dataTable[internal.listingsNamespace]
  savedVars[theIID] = {}
  return savedVars[theIID], hash
end

function internal:SetGuildStoreData(itemLink, theIID)
  local hash        = internal:MakeHashString(itemLink)
  local dataTable   = _G[string.format("GS%02dDataSavedVariables", hash)]
  local savedVars   = dataTable[internal.dataNamespace]
  savedVars[theIID] = {}
  return savedVars[theIID], hash
end

-- /script d(LibGuildStore_Internal:AddSalesTableData("itemLink", "|H0:item:68212:3:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"))
-- /script d(GS16DataSavedVariables["itemLink"]["|H0:item:68212:3:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"])
function internal:AddSalesTableData(key, value)
  local saveData = GS16DataSavedVariables[key]
  if not saveData[value] then
    local index     = internal:NonContiguousNonNilCount(GS16DataSavedVariables[key]) + 1
    saveData[value] = index
    if key == "accountNames" then
      internal.accountNameByIdLookup[index] = value
    end
    if key == "itemLink" then
      internal.itemLinkNameByIdLookup[index] = value
    end
    if key == "guildNames" then
      internal.guildNameByIdLookup[index] = value
    end
    return index
  else
    return saveData[value]
  end
end

function internal:CheckForDuplicateSale(itemLink, eventID)
  --[[ we need to be able to calculate theIID and itemIndex
  when not used with addToHistoryTables() event though
  the function will calculate them.
  ]]--
  local theIID = GetItemLinkItemId(itemLink)
  if theIID == nil or theIID == 0 then return end
  local itemIndex = internal.GetOrCreateIndexFromLink(itemLink)

  if sales_data[theIID] and sales_data[theIID][itemIndex] then
    for k, v in pairs(sales_data[theIID][itemIndex]['sales']) do
      if v.id == eventID then
        return true
      end
    end
  end
  return false
end

function internal:CheckForDuplicateListings(itemLink, eventID)
  --[[ we need to be able to calculate theIID and itemIndex
  when not used with addToHistoryTables() event though
  the function will calculate them.
  ]]--
  local theIID = GetItemLinkItemId(itemLink)
  if theIID == nil or theIID == 0 then return end
  local itemIndex = internal.GetOrCreateIndexFromLink(itemLink)

  if listings_data[theIID] and listings_data[theIID][itemIndex] then
    for k, v in pairs(listings_data[theIID][itemIndex]['sales']) do
      if v.id == eventID then
        return true
      end
    end
  end
  return false
end

function internal:CheckForDuplicatePurchase(itemLink, eventID)
  local theIID = GetItemLinkItemId(itemLink)
  if theIID == nil or theIID == 0 then return end
  local itemIndex = internal.GetOrCreateIndexFromLink(itemLink)

  if purchases_data[theIID] and purchases_data[theIID][itemIndex] then
    for k, v in pairs(purchases_data[theIID][itemIndex]['sales']) do
      if v.id == eventID then
        return true
      end
    end
  end
  return false
end

function internal:SetupListener(guildId)
  -- listener
  internal.LibHistoireListener[guildId] = LGH:CreateGuildHistoryListener(guildId, GUILD_HISTORY_STORE)
  local lastReceivedEventID
  if LibGuildStore_SavedVariables["lastReceivedEventID"][guildId] then
    --internal:dm("Info", string.format("internal Saved Var: %s, guildId: (%s)", LibGuildStore_SavedVariables["lastReceivedEventID"][guildId], guildId))
    lastReceivedEventID = StringToId64(LibGuildStore_SavedVariables["lastReceivedEventID"][guildId])
    --internal:dm("Info", string.format("lastReceivedEventID set to: %s", lastReceivedEventID))
    internal.LibHistoireListener[guildId]:SetAfterEventId(lastReceivedEventID)
  end
  internal.LibHistoireListener[guildId]:SetEventCallback(function(eventType, eventId, eventTime, p1, p2, p3, p4, p5, p6)
    if eventType == GUILD_EVENT_ITEM_SOLD and not internal.isDatabaseBusy then
      if not lastReceivedEventID or CompareId64s(eventId, lastReceivedEventID) > 0 then
        LibGuildStore_SavedVariables["lastReceivedEventID"][guildId] = Id64ToString(eventId)
        lastReceivedEventID                                          = eventId
      end
      local guildName           = GetGuildName(guildId)
      local thePlayer           = zo_strlower(GetDisplayName())
      local added               = false
      --[[
      local theEvent = {
        buyer = p2,
        guild = guildName,
        itemName = p4,
        quant = p3,
        saleTime = eventTime,
        salePrice = p5,
        seller = p1,
        kioskSale = false,
        id = Id64ToString(eventId)
      }
      local newSalesItem =
        {buyer = theEvent.buyer,
        guild = theEvent.guild,
        itemLink = theEvent.itemName,
        quant = tonumber(theEvent.quant),
        timestamp = tonumber(theEvent.saleTime),
        price = tonumber(theEvent.salePrice),
        seller = theEvent.seller,
        wasKiosk = theEvent.kioskSale,
        id = theEvent.id
      }
      [1] =
      {
        ["price"] = 120,
        ["itemLink"] = "|H0:item:45057:359:50:26848:359:50:0:0:0:0:0:0:0:0:0:5:0:0:0:0:0|h|h",
        ["id"] = 1353657539,
        ["guild"] = "Unstable Unicorns",
        ["buyer"] = "@Traeky",
        ["quant"] = 1,
        ["wasKiosk"] = true,
        ["timestamp"] = 1597969403,
        ["seller"] = "@cherrypick",
      },
      ]]--
      local theEvent            = {
        buyer = p2,
        guild = guildName,
        itemLink = p4,
        quant = p3,
        timestamp = eventTime,
        price = p5,
        seller = p1,
        wasKiosk = false,
        id = Id64ToString(eventId)
      }
      theEvent.wasKiosk         = (internal.guildMemberInfo[guildId][zo_strlower(theEvent.buyer)] == nil)

      local daysOfHistoryToKeep = GetTimeStamp() - (ZO_ONE_DAY_IN_SECONDS * LibGuildStore_SavedVariables["historyDepth"])
      if (theEvent.timestamp > daysOfHistoryToKeep) then
        local duplicate = internal:CheckForDuplicateSale(theEvent.itemLink, theEvent.id)
        if not duplicate then
          added = internal:addSalesData(theEvent)
        end
        -- (doAlert and (internal.systemSavedVariables.showChatAlerts or internal.systemSavedVariables.showAnnounceAlerts))
        if added and zo_strlower(theEvent.seller) == thePlayer then
          --internal:dm("Debug", "alertQueue updated")
          table.insert(internal.alertQueue[theEvent.guild], theEvent)
        end
        if added then
          MasterMerchant:PostScanParallel(guildName, true)
          MasterMerchant:SetMasterMerchantWindowDirty()
        end
      end
    end
  end)
  internal.LibHistoireListener[guildId]:Start()
end


function internal:GetSearchText(buyer, seller, guild, itemDesc, adderText, addPlayer)
  local temp       = { 'b', '', ' s', '', ' ', '', ' ', '', ' ', '', ' ', '' }
  local playerName = GetDisplayName()
  local searchText = ""
  local selfSale = playerName == seller
  if LibGuildStore_SavedVariables["minimalIndexing"] then
    if selfSale and addPlayer then
      searchText = internal.PlayerSpecialText
    end
  else
    temp[2]  = buyer or ''
    temp[4]  = seller or ''
    temp[6]  = guild or ''
    temp[8]  = itemDesc or ''
    temp[10] = adderText or ''
    if selfSale and addPlayer then
      temp[12] = internal.PlayerSpecialText
    end
    searchText = zo_strlower(table.concat(temp, ''))
  end
  return searchText
end
----------------------------------------
----- Adding New Data              -----
----------------------------------------

-- And here we add a new item
function internal:addSalesData(theEvent)

  -- DEBUG  Stop Adding
  --do return end

  --[[
  local theEvent = {
    buyer = p2,
    guild = guildName,
    itemName = p4,
    quant = p3,
    saleTime = eventTime,
    salePrice = p5,
    seller = p1,
    kioskSale = false,
    id = Id64ToString(eventId)
  }
  local newSalesItem =
    {buyer = theEvent.buyer,
    guild = theEvent.guild,
    itemLink = theEvent.itemName,
    quant = tonumber(theEvent.quant),
    timestamp = tonumber(theEvent.saleTime),
    price = tonumber(theEvent.salePrice),
    seller = theEvent.seller,
    wasKiosk = theEvent.kioskSale,
    id = theEvent.id
  }
  [1] =
  {
    ["price"] = 120,
    ["itemLink"] = "|H0:item:45057:359:50:26848:359:50:0:0:0:0:0:0:0:0:0:5:0:0:0:0:0|h|h",
    ["id"] = 1353657539,
    ["guild"] = "Unstable Unicorns",
    ["buyer"] = "@Traeky",
    ["quant"] = 1,
    ["wasKiosk"] = true,
    ["timestamp"] = 1597969403,
    ["seller"] = "@cherrypick",
  },
  ]]--

  -- first add new data looks to their tables
  local linkHash   = internal:AddSalesTableData("itemLink", theEvent.itemLink)
  local buyerHash  = internal:AddSalesTableData("accountNames", theEvent.buyer)
  local sellerHash = internal:AddSalesTableData("accountNames", theEvent.seller)
  local guildHash  = internal:AddSalesTableData("guildNames", theEvent.guild)

  --[[The quality effects itemIndex although the ID from the
  itemLink may be the same. We will keep them separate.
  ]]--
  local itemIndex  = internal.GetOrCreateIndexFromLink(theEvent.itemLink)
  --[[theIID is used in the SRIndex so define it here.
  ]]--
  local theIID     = GetItemLinkItemId(theEvent.itemLink)
  if theIID == nil or theIID == 0 then return false end

  --[[If the ID from the itemLink doesn't exist determine which
  file or container it will belong to using SetGuildStoreData()
  ]]--
  local hashUsed = "alreadyExisted"
  if not sales_data[theIID] then
    sales_data[theIID], hashUsed = internal:SetGuildStoreData(theEvent.itemLink, theIID)
  end

  local insertedIndex       = 1

  local searchItemDesc      = ""
  local searchItemAdderText = ""

  local newEvent            = ZO_DeepTableCopy(theEvent)
  newEvent.itemLink         = linkHash
  newEvent.buyer            = buyerHash
  newEvent.seller           = sellerHash
  newEvent.guild            = guildHash

  if sales_data[theIID][itemIndex] then
    local nextLocation  = #sales_data[theIID][itemIndex]['sales'] + 1
    searchItemDesc      = sales_data[theIID][itemIndex].itemDesc
    searchItemAdderText = sales_data[theIID][itemIndex].itemAdderText
    if sales_data[theIID][itemIndex]['sales'][nextLocation] == nil then
      table.insert(sales_data[theIID][itemIndex]['sales'], nextLocation, newEvent)
      insertedIndex = nextLocation
    else
      table.insert(sales_data[theIID][itemIndex]['sales'], newEvent)
      insertedIndex = #sales_data[theIID][itemIndex]['sales']
    end
  else
    if sales_data[theIID][itemIndex] == nil then sales_data[theIID][itemIndex] = {} end
    if sales_data[theIID][itemIndex]['sales'] == nil then sales_data[theIID][itemIndex]['sales'] = {} end
    searchItemDesc      = zo_strformat(SI_TOOLTIP_ITEM_NAME, GetItemLinkName(theEvent.itemLink))
    searchItemAdderText = internal:AddSearchToItem(theEvent.itemLink)
    sales_data[theIID][itemIndex] = {
      itemIcon = GetItemLinkInfo(theEvent.itemLink),
      itemAdderText = searchItemAdderText,
      itemDesc = searchItemDesc,
      sales = { newEvent } }
    --internal:dm("Debug", newEvent)
  end
  sales_data[theIID][itemIndex].wasAltered = true

  -- this section adds the sales to the lists for the MM window
  local guild
  local adderDescConcat                    = searchItemDesc .. ' ' .. searchItemAdderText

  guild                                    = internal.guildSales[theEvent.guild] or MMGuild:new(theEvent.guild)
  internal.guildSales[theEvent.guild]      = guild
  guild:addSaleByDate(theEvent.seller, theEvent.timestamp, theEvent.price, theEvent.quant, false)

  guild                                   = internal.guildPurchases[theEvent.guild] or MMGuild:new(theEvent.guild)
  internal.guildPurchases[theEvent.guild] = guild
  guild:addSaleByDate(theEvent.buyer, theEvent.timestamp, theEvent.price, theEvent.quant, theEvent.wasKiosk)

  guild                               = internal.guildItems[theEvent.guild] or MMGuild:new(theEvent.guild)
  internal.guildItems[theEvent.guild] = guild
  guild:addSaleByDate(theEvent.itemLink, theEvent.timestamp, theEvent.price, theEvent.quant, false, nil,
    adderDescConcat)

  local playerName = zo_strlower(GetDisplayName())
  local isSelfSale = playerName == zo_strlower(theEvent.seller)

  if isSelfSale then
    guild                            = internal.myItems[theEvent.guild] or MMGuild:new(theEvent.guild)
    internal.myItems[theEvent.guild] = guild;
    guild:addSaleByDate(theEvent.itemLink, theEvent.timestamp, theEvent.price, theEvent.quant, false, nil,
      adderDescConcat)
  end

  local searchText = internal:GetSearchText(theEvent.buyer, theEvent.seller, theEvent.guild, searchItemDesc, searchItemAdderText, true)
  local searchByWords = zo_strgmatch(searchText, '%S+')
  local wordData      = { theIID, itemIndex, insertedIndex }

  -- Index each word
  for i in searchByWords do
    if sr_index[i] == nil then sr_index[i] = {} end
    table.insert(sr_index[i], wordData)
  end

  return true
end

function internal:addListingData(theEvent)
  --internal:dm("Debug", "addListingData")
--[[ TODO use guild ID and name for lookup table
  local theEvent            = {
    guild = listing.guildName,
    guildId = listing.guildId,
    itemLink = listing.itemLink,
    quant = listing.stackCount,
    timestamp = listing.lastSeen,
    listingTime = listedTime,
    price = listing.purchasePrice,
    seller = listing.sellerName,
    id = Id64ToString(listing.itemUniqueId),
    buyer
  }
]]--
  --internal:dm("Debug", theEvent)
  -- /script d(LibGuildStore_Internal:AddSalesTableData("itemLink", "|H0:item:68212:3:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"))
  local linkHash   = internal:AddSalesTableData("itemLink", theEvent.itemLink)
  local sellerHash = internal:AddSalesTableData("accountNames", theEvent.seller)
  local guildHash  = internal:AddSalesTableData("guildNames", theEvent.guild)

  local itemIndex  = internal.GetOrCreateIndexFromLink(theEvent.itemLink)
  local theIID     = GetItemLinkItemId(theEvent.itemLink)
  if theIID == nil or theIID == 0 then return false end

  local hashUsed = "alreadyExisted"
  if not listings_data[theIID] then
    listings_data[theIID], hashUsed = internal:SetTraderListingData(theEvent.itemLink, theIID)
  end

  local newEvent            = ZO_DeepTableCopy(theEvent)
  newEvent.itemLink         = linkHash
  newEvent.seller           = sellerHash
  newEvent.guild            = guildHash

  local insertedIndex       = 1
  local searchItemDesc      = ""
  local searchItemAdderText = ""
  if listings_data[theIID][itemIndex] then
    searchItemDesc      = listings_data[theIID][itemIndex].itemDesc
    searchItemAdderText = listings_data[theIID][itemIndex].itemAdderText
    table.insert(listings_data[theIID][itemIndex]['sales'], newEvent)
    insertedIndex = #listings_data[theIID][itemIndex]['sales']
  else
    if listings_data[theIID][itemIndex] == nil then listings_data[theIID][itemIndex] = {} end
    if listings_data[theIID][itemIndex]['sales'] == nil then listings_data[theIID][itemIndex]['sales'] = {} end
    searchItemDesc      = zo_strformat(SI_TOOLTIP_ITEM_NAME, GetItemLinkName(theEvent.itemLink))
    searchItemAdderText = internal:AddSearchToItem(theEvent.itemLink)
    listings_data[theIID][itemIndex] = {
      itemIcon = GetItemLinkInfo(theEvent.itemLink),
      itemAdderText = searchItemAdderText,
      itemDesc = searchItemDesc,
      sales = { newEvent } }
    --internal:dm("Debug", newEvent)
  end

  local playerName = zo_strlower(GetDisplayName())
  local isSelfSale = playerName == zo_strlower(theEvent.seller)

  local searchText = internal:GetSearchText(theEvent.buyer, theEvent.seller, theEvent.guild, searchItemDesc, searchItemAdderText, true)
  local searchByWords = zo_strgmatch(searchText, '%S+')
  local wordData      = { theIID, itemIndex, insertedIndex }

  -- Index each word
  for i in searchByWords do
    if lr_index[i] == nil then lr_index[i] = {} end
    table.insert(lr_index[i], wordData)
  end

  return true
end

function internal:addPurchaseData(theEvent)
  internal:dm("Debug", "addPurchaseData")
--[[
      local theEvent            = {
        guild = itemData.guildName,
        itemLink = itemData.itemLink,
        quant = itemData.stackCount,
        timestamp = GetTimeStamp(),
        price = itemData.purchasePrice,
        seller = itemData.sellerName,
        id = Id64ToString(itemData.itemUniqueId),
        buyer = GetDisplayName()
      }
]]--
  --internal:dm("Debug", theEvent)
  local linkHash   = internal:AddSalesTableData("itemLink", theEvent.itemLink)
  local buyerHash  = internal:AddSalesTableData("accountNames", theEvent.buyer)
  local sellerHash = internal:AddSalesTableData("accountNames", theEvent.seller)
  local guildHash  = internal:AddSalesTableData("guildNames", theEvent.guild)

  local itemIndex  = internal.GetOrCreateIndexFromLink(theEvent.itemLink)
  local theIID     = GetItemLinkItemId(theEvent.itemLink)
  if theIID == nil or theIID == 0 then return false end

  if not purchases_data[theIID] then
    purchases_data[theIID] = internal:SetPurchaseData(theIID)
  end
  local newEvent            = ZO_DeepTableCopy(theEvent)
  newEvent.itemLink         = linkHash
  newEvent.buyer            = buyerHash
  newEvent.seller           = sellerHash
  newEvent.guild            = guildHash

  local insertedIndex       = 1
  local searchItemDesc      = ""
  local searchItemAdderText = ""
  if purchases_data[theIID][itemIndex] then
    searchItemDesc      = purchases_data[theIID][itemIndex].itemDesc
    searchItemAdderText = purchases_data[theIID][itemIndex].itemAdderText
    table.insert(purchases_data[theIID][itemIndex]['sales'], newEvent)
    insertedIndex = #purchases_data[theIID][itemIndex]['sales']
  else
    if purchases_data[theIID][itemIndex] == nil then purchases_data[theIID][itemIndex] = {} end
    if purchases_data[theIID][itemIndex]['sales'] == nil then purchases_data[theIID][itemIndex]['sales'] = {} end
    searchItemDesc      = zo_strformat(SI_TOOLTIP_ITEM_NAME, GetItemLinkName(theEvent.itemLink))
    searchItemAdderText = internal:AddSearchToItem(theEvent.itemLink)
    purchases_data[theIID][itemIndex] = {
      itemIcon = GetItemLinkInfo(theEvent.itemLink),
      itemAdderText = searchItemAdderText,
      itemDesc = searchItemDesc,
      sales = { newEvent } }
    --internal:dm("Debug", newEvent)
  end

  local playerName = zo_strlower(GetDisplayName())
  local isSelfSale = playerName == zo_strlower(theEvent.seller)

  local searchText = internal:GetSearchText(theEvent.buyer, theEvent.seller, theEvent.guild, searchItemDesc, searchItemAdderText, true)
  local searchByWords = zo_strgmatch(searchText, '%S+')
  local wordData      = { theIID, itemIndex, insertedIndex }

  -- Index each word
  for i in searchByWords do
    if pr_index[i] == nil then pr_index[i] = {} end
    table.insert(pr_index[i], wordData)
  end

  return true
end

function internal:addPostedItem(theEvent)
  internal:dm("Debug", "addPostedItem")
--[[
        local theEvent            = {
          guild = guildHash,
          itemLink = linkHash,
          quant = stackCount,
          timestamp = GetTimeStamp(),
          price = price,
          seller = sellerHash,
          buyer
        }
]]--
  --internal:dm("Debug", theEvent)
  local linkHash   = internal:AddSalesTableData("itemLink", theEvent.itemLink)
  local sellerHash = internal:AddSalesTableData("accountNames", theEvent.seller)
  local guildHash  = internal:AddSalesTableData("guildNames", theEvent.guild)

  local itemIndex  = internal.GetOrCreateIndexFromLink(theEvent.itemLink)
  local theIID     = GetItemLinkItemId(theEvent.itemLink)
  if theIID == nil or theIID == 0 then return false end

  if not posted_items_data[theIID] then
    posted_items_data[theIID] = internal:SetPostedItmesData(theIID)
  end
  local newEvent            = ZO_DeepTableCopy(theEvent)
  newEvent.itemLink         = linkHash
  newEvent.seller           = sellerHash
  newEvent.guild            = guildHash

  local insertedIndex       = 1
  local searchItemDesc      = ""
  local searchItemAdderText = ""
  if posted_items_data[theIID][itemIndex] then
    searchItemDesc      = posted_items_data[theIID][itemIndex].itemDesc
    searchItemAdderText = posted_items_data[theIID][itemIndex].itemAdderText
    table.insert(posted_items_data[theIID][itemIndex]['sales'], newEvent)
    insertedIndex = #posted_items_data[theIID][itemIndex]['sales']
  else
    if posted_items_data[theIID][itemIndex] == nil then posted_items_data[theIID][itemIndex] = {} end
    if posted_items_data[theIID][itemIndex]['sales'] == nil then posted_items_data[theIID][itemIndex]['sales'] = {} end
    searchItemDesc      = zo_strformat(SI_TOOLTIP_ITEM_NAME, GetItemLinkName(theEvent.itemLink))
    searchItemAdderText = internal:AddSearchToItem(theEvent.itemLink)
    posted_items_data[theIID][itemIndex] = {
      itemIcon = GetItemLinkInfo(theEvent.itemLink),
      itemAdderText = searchItemAdderText,
      itemDesc = searchItemDesc,
      sales = { newEvent } }
    --internal:dm("Debug", newEvent)
  end

  local playerName = zo_strlower(GetDisplayName())
  local isSelfSale = playerName == zo_strlower(theEvent.seller)

  local searchText = internal:GetSearchText(theEvent.buyer, theEvent.seller, theEvent.guild, searchItemDesc, searchItemAdderText, true)
  local searchByWords = zo_strgmatch(searchText, '%S+')
  local wordData      = { theIID, itemIndex, insertedIndex }

  -- Index each word
  for i in searchByWords do
    if pir_index[i] == nil then pir_index[i] = {} end
    table.insert(pir_index[i], wordData)
  end

  return true
end

function internal:addCanceledItem(theEvent)
  internal:dm("Debug", "addCanceledItem")
--[[
        local theEvent            = {
          guild = guildHash,
          itemLink = linkHash,
          quant = stackCount,
          timestamp = GetTimeStamp(),
          price = price,
          seller = sellerHash,
          buyer
        }
]]--
  --internal:dm("Debug", theEvent)
  local linkHash   = internal:AddSalesTableData("itemLink", theEvent.itemLink)
  local sellerHash = internal:AddSalesTableData("accountNames", theEvent.seller)
  local guildHash  = internal:AddSalesTableData("guildNames", theEvent.guild)

  local itemIndex  = internal.GetOrCreateIndexFromLink(theEvent.itemLink)
  local theIID     = GetItemLinkItemId(theEvent.itemLink)
  if theIID == nil or theIID == 0 then return false end

  if not cancelled_items_data[theIID] then
    cancelled_items_data[theIID] = internal:SetCancelledItmesData(theIID)
  end
  local newEvent            = ZO_DeepTableCopy(theEvent)
  newEvent.itemLink         = linkHash
  newEvent.seller           = sellerHash
  newEvent.guild            = guildHash

  local insertedIndex       = 1
  local searchItemDesc      = ""
  local searchItemAdderText = ""
  if cancelled_items_data[theIID][itemIndex] then
    searchItemDesc      = cancelled_items_data[theIID][itemIndex].itemDesc
    searchItemAdderText = cancelled_items_data[theIID][itemIndex].itemAdderText
    table.insert(cancelled_items_data[theIID][itemIndex]['sales'], newEvent)
    insertedIndex = #cancelled_items_data[theIID][itemIndex]['sales']
  else
    if cancelled_items_data[theIID][itemIndex] == nil then cancelled_items_data[theIID][itemIndex] = {} end
    if cancelled_items_data[theIID][itemIndex]['sales'] == nil then cancelled_items_data[theIID][itemIndex]['sales'] = {} end
    searchItemDesc      = zo_strformat(SI_TOOLTIP_ITEM_NAME, GetItemLinkName(theEvent.itemLink))
    searchItemAdderText = internal:AddSearchToItem(theEvent.itemLink)
    cancelled_items_data[theIID][itemIndex] = {
      itemIcon = GetItemLinkInfo(theEvent.itemLink),
      itemAdderText = searchItemAdderText,
      itemDesc = searchItemDesc,
      sales = { newEvent } }
    --internal:dm("Debug", newEvent)
  end

  local playerName = zo_strlower(GetDisplayName())
  local isSelfSale = playerName == zo_strlower(theEvent.seller)

  local searchText = internal:GetSearchText(theEvent.buyer, theEvent.seller, theEvent.guild, searchItemDesc, searchItemAdderText, true)
  local searchByWords = zo_strgmatch(searchText, '%S+')
  local wordData      = { theIID, itemIndex, insertedIndex }

  -- Index each word
  for i in searchByWords do
    if cr_index[i] == nil then cr_index[i] = {} end
    table.insert(cr_index[i], wordData)
  end

  return true
end

----------------------------------------
----- Event Functions              -----
----------------------------------------

function internal:onTradingHouseEvent(eventCode, slotId, isPending)
  -- this is for vanilla
  internal:dm("Debug", "onTradingHouseEvent")
  if not AwesomeGuildStore then
    internal:dm("Debug", "not AwesomeGuildStore")
    local CurrentPurchase = {}
    local icon, itemName, displayQuality, quantity, seller, timeRemaining, price, currencyType, itemUniqueId, purchasePricePerUnit = GetTradingHouseSearchResultItemInfo(slotId)
    local guildId, guild, guildAlliance = GetCurrentTradingHouseGuildDetails()
    local listedTime = GetTimeStamp() - (2592000 - timeRemaining)
    local theEvent            = {
      guild = guild,
      guildId = guildId,
      itemLink = GetTradingHouseSearchResultItemLink(slotId),
      quant = quantity,
      timestamp = GetTimeStamp(),
      listingTime = listedTime,
      price = price,
      seller = seller,
      id = Id64ToString(itemUniqueId),
      buyer = GetDisplayName()
    }
    internal:dm("Debug", theEvent)
    internal:addPurchaseData(theEvent)
    --ShoppingList.List:Refresh()
  end
end

function internal:AddAwesomeGuildStoreListing(listing)
  --internal:dm("Debug", "AddAwesomeGuildStoreListing")
  local listedTime = GetTimeStamp() - (2592000 - listing.timeRemaining)
  local theEvent            = {
    guild = listing.guildName,
    guildId = listing.guildId,
    itemLink = listing.itemLink,
    quant = listing.stackCount,
    timestamp = listing.lastSeen,
    listingTime = listedTime,
    price = listing.purchasePrice,
    seller = listing.sellerName,
    id = Id64ToString(listing.itemUniqueId),
  }
  local added = false
  local duplicate = internal:CheckForDuplicateListings(theEvent.itemLink, theEvent.id)
  if not duplicate then
    added = internal:addListingData(theEvent)
  end
end

function internal:processAwesomeGuildStore(itemDatabase)
  local guildCounts = {}
  for guildIndex, guildData in pairs(itemDatabase) do
    local guildName        = GetGuildName(guildIndex)
    guildCounts[guildName] = internal:NonContiguousNonNilCount(itemDatabase[guildIndex])
    for dataIndex, listingData in pairs(guildData) do
      local index = Id64ToString(dataIndex)
      --internal:dm("Debug", index)
      internal:AddAwesomeGuildStoreListing(listingData)
    end
  end
end

----------------------------------------
----- Reset Data Functions         -----
----------------------------------------

-- Handle the reset button - clear out the search and scan tables,
-- and set the time of the last scan to nil, then force a scan.
function internal:DoReset()
  if GetWorldName() == 'NA Megaserver' and internal.dataToReset == internal.GS_EU_NAMESPACE then
    internal:dm("Info", "Reset aborted because LibHistoire would refresh NA Data instead.")
    return
  end
  if GetWorldName() == 'EU Megaserver' and internal.dataToReset == internal.GS_NA_NAMESPACE then
    internal:dm("Info", "Reset aborted because LibHistoire would refresh EU Data instead.")
    return
  end

  internal:dm("Debug", "DoReset")
  local sales_data                             = {}
  local sr_index                               = {}
  _G["LibGuildStore_SalesData"]                = sales_data
  _G["LibGuildStore_SalesIndex"]               = sr_index

  GS00DataSavedVariables[internal.dataToReset] = {}
  GS01DataSavedVariables[internal.dataToReset] = {}
  GS02DataSavedVariables[internal.dataToReset] = {}
  GS03DataSavedVariables[internal.dataToReset] = {}
  GS04DataSavedVariables[internal.dataToReset] = {}
  GS05DataSavedVariables[internal.dataToReset] = {}
  GS06DataSavedVariables[internal.dataToReset] = {}
  GS07DataSavedVariables[internal.dataToReset] = {}
  GS08DataSavedVariables[internal.dataToReset] = {}
  GS09DataSavedVariables[internal.dataToReset] = {}
  GS10DataSavedVariables[internal.dataToReset] = {}
  GS11DataSavedVariables[internal.dataToReset] = {}
  GS12DataSavedVariables[internal.dataToReset] = {}
  GS13DataSavedVariables[internal.dataToReset] = {}
  GS14DataSavedVariables[internal.dataToReset] = {}
  GS15DataSavedVariables[internal.dataToReset] = {}

  internal.guildPurchases                      = {}
  internal.guildSales                          = {}
  internal.guildItems                          = {}
  internal.myItems                             = {}
  if MasterMerchantGuildWindow:IsHidden() then
    MasterMerchant.scrollList:RefreshData()
  else
    MasterMerchant.guildScrollList:RefreshData()
  end
  internal:DatabaseBusy(false)
  internal:dm("Info", internal:concat(GetString(MM_APP_MESSAGE_NAME), GetString(SK_RESET_DONE)))
  internal:dm("Info", internal:concat(GetString(MM_APP_MESSAGE_NAME), GetString(SK_REFRESH_START)))
  MasterMerchant.isFirstScan = true
  --[[needs updating so start and stop the listener then
  init everyting
  ]]--
  internal:RefreshLibGuildStore()
  internal:SetupListenerLibHistoire()
  internal:StartQueue()
end

-- Handle the reset button - clear out the search and scan tables,
-- and set the time of the last scan to nil, then force a scan.
function internal:ResetListingsData()
  internal:dm("Debug", "ResetListingsData")

  GS00DataSavedVariables[internal.listingsToReset] = {}
  GS01DataSavedVariables[internal.listingsToReset] = {}
  GS02DataSavedVariables[internal.listingsToReset] = {}
  GS03DataSavedVariables[internal.listingsToReset] = {}
  GS04DataSavedVariables[internal.listingsToReset] = {}
  GS05DataSavedVariables[internal.listingsToReset] = {}
  GS06DataSavedVariables[internal.listingsToReset] = {}
  GS07DataSavedVariables[internal.listingsToReset] = {}
  GS08DataSavedVariables[internal.listingsToReset] = {}
  GS09DataSavedVariables[internal.listingsToReset] = {}
  GS10DataSavedVariables[internal.listingsToReset] = {}
  GS11DataSavedVariables[internal.listingsToReset] = {}
  GS12DataSavedVariables[internal.listingsToReset] = {}
  GS13DataSavedVariables[internal.listingsToReset] = {}
  GS14DataSavedVariables[internal.listingsToReset] = {}
  GS15DataSavedVariables[internal.listingsToReset] = {}
end
