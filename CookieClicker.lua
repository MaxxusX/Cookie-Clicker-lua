--splash
print("mxs\n")
print("cookie clicker in lua\n")
print("press enter to start\n")
local wt = os.time()
repeat until os.difftime(os.time(), wt) > 1
--end splash

--main game
local cookies = 0
local userinput = ""--initialize userinput
while true do
	userinput = io.read()--listen to user input
	if userinput == "x" then
		break
	end
	os.execute("cls")
	print("\"x\" to exit")
	print("press enter to click cookie\n")
	print("\n\n\n\n")
	print(cookies, "cookies")
	if userinput == "" then
		cookies = cookies + 1
	end
end