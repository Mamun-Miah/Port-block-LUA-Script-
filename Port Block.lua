gg.clearResults()
gg.processResume()
gg.processPause()
gg.searchNumber("h80 B5 82 B0 4F F0 00 0C CD E9 00 CC F7 F7 1A E9 02 B0 80 BD", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.processPause()

revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_BYTE then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
