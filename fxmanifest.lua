fx_version("cerulean")
games({ "gta5" })

author("Jestar")
description("PRP Clothing Menu")
version("2.0.0")

client_scripts({
	"@menuv/menuv.lua",
	"client/menu.lua",
	"client/commands.lua",
})
server_scripts({
	"server/main.lua",
})

dependencies({
	"menuv",
})
