fx_version 'cerulean'
games { 'gta5' }

author 'Jestar'
description 'JP Clothing Menu'
version '1.0.0'

client_scripts {
  '@menuv/menuv.lua',
  'client/menu.lua',
}
server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'server/main.lua',
}

dependencies {
  'menuv',
  'oxmysql'
}