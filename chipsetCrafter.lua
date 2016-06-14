pipe = peripheral.wrap("left")
items = pipe.getAvailableItems()
for (k,v) in pairs(items) do
	print(items[k].getValue1().getId())
end