tell application "Tunnelblick"
	connect "ESTECO_VPN"
	get state of first configuration where name = "ESTECO_VPN"
	repeat until result = "CONNECTED"
		delay 1
		get state of first configuration where name = "ESTECO_VPN"
	end repeat
end tell
