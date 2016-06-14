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

local ItemIDBuilder = pipe.getLP().getItemIdentifierBuilder()
ItemIDBuilder.setItemID( 5380 )
ItemIDBuilder.setItemData( 1 )
IronChipset = ItemIDBuilder.build()

local ItemIDBuilder = pipe.getLP().getItemIdentifierBuilder()
ItemIDBuilder.setItemID( 5380 )
ItemIDBuilder.setItemData( 2 )
GoldChipset = ItemIDBuilder.build()

local ItemIDBuilder = pipe.getLP().getItemIdentifierBuilder()
ItemIDBuilder.setItemID( 5380 )
ItemIDBuilder.setItemData( 3 )
DiamondChipset = ItemIDBuilder.build()

pipe.makeRequest( DiamondChipset, 1 )