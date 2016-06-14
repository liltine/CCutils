pipe = peripheral.wrap("left")
items = pipe.getAvailableItems()


local function Request( itemID, amount )
  local ItemIDBuilder = pipe.getLP().getItemIdentifierBuilder()
  ItemIDBuilder.setItemID( itemID )
  pipe.makeRequest( ItemIDBuilder.build(), amount )
end

local function getStock(itemID)
	local ItemIDBuilder = pipe.getLP().getItemIdentifierBuilder()
	ItemIDBuilder.setItemID( itemID )
	return pipe.getItemAmount(ItemIDBuilder.build())
end

Request( 4, 1 )
