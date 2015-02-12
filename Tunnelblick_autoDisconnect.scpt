tell application "Tunnelblick"
	disconnect "ESTECO_VPN"
	get state of first configuration where name = "ESTECO_VPN"
	repeat until result = "EXITING"
		delay 1
		get state of first configuration where name = "ESTECO_VPN"
	end repeat
end tell
