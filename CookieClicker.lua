--splash
print("\nmxs\n\n")
print("cookie clicker in lua\n")
print("press enter\n")
io.read() -- wait for input
--end splash


-- define stuff
local cookies = 0 --the splash screen causes cookies to go up by 1 when game starts
local clickingpower = 1
local cursors = 0

function updateDisplay()
	os.execute("cls")
	print("\npress enter to click cookie\n")
	print(clickingpower .. " | enter \"click\" to upgrade your clicking power | " .. math.floor(((49 * (clickingpower)) / 2) + 1) .. " cookies\n")
	print(cursors .. " | enter \"cursor\" to buy a cursor (autoclicks) BROKEN!! | " .. 2 + (cursors * 2) .. " cookies\n")
	print("\n\n\n\n")
	print(cookies, "cookies")
end

-- main loop
function main()
	while true do
		updateDisplay()
		local userinput = io.read()
		if userinput == "" then
			cookies = cookies + clickingpower
		end
		if userinput == "click" then
			if cookies > math.floor((49 * (clickingpower)) / 2) then
				cookies = cookies - math.floor(((49 * (clickingpower)) / 2) + 1)
				clickingpower = clickingpower + 1
			end
		end
		if userinput == "cursor" then
			if cookies > (2 + (cursors * 2)) - 1 then
				cookies = cookies - 2 + (cursors * 2)
				cursors = cursors + 1
			end
		end
	end
end

-- start main loop
coroutine.resume(coroutine.create(main))