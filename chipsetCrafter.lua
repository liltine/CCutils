pipe = peripheral.wrap("left")
items = pipe.getAvailableItems()
For (k,v) in pairs(items) do
	print(items[k].getValue1().getId())
end