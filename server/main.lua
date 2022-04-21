RegisterCommand('clothing', function(source)
  local src = source
  local license
  local identifiers = GetPlayerIdentifiers(src)

  for _, v in pairs(identifiers) do
    if string.find(v, 'license') then
      license = v
    end
  end
  -- Replace 'players' in the query to direct to the table containing your skin column
  local PlayerData = MySQL.single.await('SELECT skin FROM players WHERE license = ?', {license})

  TriggerClientEvent('jp:clothing:openMain', src, PlayerData)
end, false)

RegisterNetEvent('jp:clothing:saveSkin', function(data)
  local src = source
  local license
  local identifiers = GetPlayerIdentifiers(src)

  for _, v in pairs(identifiers) do
    if string.find(v, 'license') then
      license = v
    end
  end
  -- Replace 'players' in the query to direct to the table containing your skin column
  local update = MySQL.update.await('UPDATE players SET skin = ? WHERE license = ?', {data, license})
end)