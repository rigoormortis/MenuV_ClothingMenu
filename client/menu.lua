local menuLocation = 'topright'
local PlayerData = {}

-- Menus
local main = MenuV:CreateMenu(false, 'Player Customization', menuLocation, 0, 0, 0, "size-100", 'none', 'menuv', 'main', 'native')
local charmenu = MenuV:CreateMenu(false, 'Character Features', menuLocation, 0, 0, 0, "size-100", 'none', 'menuv', 'character', 'native')
local clothingmenu = MenuV:CreateMenu(false, 'Clothing Menu', menuLocation, 0, 0, 0, "size-100", 'none', 'menuv', 'clothing', 'native')

-- Buttons
local main1 = main:AddButton({
  label = 'Character Options',
  value = charmenu,
  description = 'Change your characters appearance.'
})
local main2 = main:AddButton({
  label = 'Clothing Menu',
  value = clothingmenu,
  description = 'Change your characters clothing.'
})

charmenu:On('open', function(m)
  local ped = PlayerPedId()
  m:ClearItems(m)
  local skin_color = charmenu:AddRange({
    label = 'Skin Color',
    min = 0,
    max = 15,
    value = PlayerData.skin_color or 0,
    description = 'Change the skin color of your character.',
    saveOnUpdate = true
  })
  
  local hair = charmenu:AddRange({
    label = 'Hair',
    min = 0,
    max = GetNumberOfPedDrawableVariations(ped, 2),
    value = PlayerData.hair or 0,
    description = 'Change your characters hair style.',
    saveOnUpdate = true
  })
  
  local hair_color = charmenu:AddRange({
    label = 'Hair Color',
    min = 0,
    max = 45,
    value = PlayerData.hair_color or 0,
    description = 'Change the color of your characters hair.',
    saveOnUpdate = true
  })
  
  local face = charmenu:AddRange({
    label = 'Face',
    min = 0,
    max = 45,
    value = PlayerData.face or 0,
    description = 'Change your characters facial features.',
    saveOnUpdate = true
  })
  
  local facialhair = charmenu:AddRange({
    label = 'Facial Hair',
    min = -1,
    max = 28,
    value = PlayerData.facialhair or -1,
    description = 'Change your characters facial hair.',
    saveOnUpdate = true
  })

  local eyebrows = charmenu:AddRange({
    label = 'Eyebrows',
    min = 0,
    max = 33,
    value = PlayerData.eyebrows or 0,
    description = 'Change your characters eyebrows.',
    saveOnUpdate = true
  })
  
  local facialhair_color = charmenu:AddRange({
    label = 'Facial Hair Color',
    min = 0,
    max = 45,
    value = PlayerData.facialhair_color or 0,
    description = 'Change your characters facial hair.',
    saveOnUpdate = true
  })
  
  local blemishes = charmenu:AddRange({
    label = 'Blemishes',
    min = -1,
    max = 45,
    value = PlayerData.blemishes or -1,
    description = 'Change your characters blemishes.',
    saveOnUpdate = true
  })

  local ageing = charmenu:AddRange({
    label = 'Ageing',
    min = -1,
    max = 14,
    value = PlayerData.ageing or -1,
    description = 'Change the age of your character.',
    saveOnUpdate = true
  })
  
  local makeup = charmenu:AddRange({
    label = 'Makeup',
    min = -1,
    max = 74,
    value = PlayerData.makeup or -1,
    description = 'Change your characters makeup.',
    saveOnUpdate = true
  })
  
  local lipstick = charmenu:AddRange({
    label = 'Lipstick',
    min = -1,
    max = 9,
    value = PlayerData.lipstick or -1,
    description = 'Change your characters lipstick.',
    saveOnUpdate = true
  })
  
  local lipstick_color = charmenu:AddRange({
    label = 'Lipstick Color',
    min = 0,
    max = 9,
    value = PlayerData.lipstick_color or 0,
    description = 'Change your characters lipstick color.',
    saveOnUpdate = true
  })
  
  local blush = charmenu:AddRange({
    label = 'Blush',
    min = -1,
    max = 6,
    value = PlayerData.blush or -1,
    description = 'Change your characters blush.',
    saveOnUpdate = true
  })
  
  local blush_color = charmenu:AddRange({
    label = 'Blush Color',
    min = 0,
    max = 6,
    value = PlayerData.blush_color or 0,
    description = 'Change your characters blush color.',
    saveOnUpdate = true
  })
  
  local complexion = charmenu:AddRange({
    label = 'Complexion',
    min = -1,
    max = 11,
    value = PlayerData.complexion or -1,
    description = 'Change your characters makeup.',
    saveOnUpdate = true
  })
  
  local sundamage = charmenu:AddRange({
    label = 'Sun Damage',
    min = -1,
    max = 10,
    value = PlayerData.sundamage or -1,
    description = 'Change your characters sun damage.',
    saveOnUpdate = true
  })
  
  local freckles = charmenu:AddRange({
    label = 'Moles & Freckles',
    min = -1,
    max = 17,
    value = PlayerData.freckles or -1,
    description = 'Change your characters moles or freckles.',
    saveOnUpdate = true
  })
  
  local chesthair = charmenu:AddRange({
    label = 'Chest Hair',
    min = -1,
    max = 16,
    value = PlayerData.chesthair or -1,
    description = 'Change your characters chest hair.',
    saveOnUpdate = true
  })
  
  local bodyblemishes = charmenu:AddRange({
    label = 'Body Blemishes',
    min = -1,
    max = 11,
    value = PlayerData.bodyblemishes or -1,
    description = 'Change your characters body blemishes.',
    saveOnUpdate = true
  })
  
  local extra_bodyblemishes = charmenu:AddRange({
    label = 'Extra Body Blemishes',
    min = -1,
    max = 1,
    value = PlayerData.extra_bodyblemishes or -1,
    description = 'Change your characters extra body blemishes.',
    saveOnUpdate = true
  })
  
  local save = charmenu:AddButton({
    label = 'Save Changes',
    value = charmenu,
    description = 'Select to save the changes you have made.'
  })
  
  skin_color:On('change', function(item, newValue, oldValue)
    SetPedHeadBlendData(ped, face.Value, nil, nil, newValue, nil, nil, nil, nil, nil, false)
  end)
  
  hair:On('change', function(item, newValue, oldValue)
    SetPedComponentVariation(ped, 2, newValue, 0, 0)
  end)
  
  hair_color:On('change', function(item, newValue, oldValue)
    SetPedHairColor(ped, newValue, newValue)
  end)
  
  face:On('change', function(item, newValue, oldValue)
    SetPedHeadBlendData(ped, newValue, nil, nil, skin_color.Value, nil, nil, nil, nil, nil, false)
  end)
  
  blemishes:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 0, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 0, newValue, 1.0)
    end
  end)
  
  facialhair:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 1, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 1, newValue, 1.0)
    end
  end)
  
  facialhair_color:On('change', function(item, newValue, oldValue)
    SetPedHeadOverlayColor(ped, 1, 1, newValue, newValue)
    SetPedHeadOverlayColor(ped, 2, 1, newValue, newValue)
    SetPedHeadOverlayColor(ped, 10, 1, newValue, newValue)
  end)
  
  eyebrows:On('change', function(item, newValue, oldValue)
    SetPedHeadOverlay(ped, 2, newValue, 1.0)
  end)
  
  ageing:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 3, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 3, newValue, 1.0)
    end
  end)
  
  makeup:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 4, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 4, newValue, 1.0)
    end
  end)
  
  lipstick:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 8, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 8, newValue, 1.0)
    end
  end)
  
  lipstick_color:On('change', function(item, newValue, oldValue)
    SetPedHeadOverlayColor(ped, 8, 2, newValue, newValue)
  end)
  
  blush:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 5, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 5, newValue, 1.0)
    end
  end)
  
  blush_color:On('change', function(item, newValue, oldValue)
    SetPedHeadOverlayColor(ped, 5, 2, newValue, newValue)
  end)
  
  complexion:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 6, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 6, newValue, 1.0)
    end
  end)
  
  sundamage:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 7, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 7, newValue, 1.0)
    end
  end)
  
  freckles:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 9, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 9, newValue, 1.0)
    end
  end)
  
  chesthair:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 10, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 10, newValue, 1.0)
    end
  end)
  
  bodyblemishes:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 11, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 11, newValue, 1.0)
    end
  end)
  
  extra_bodyblemishes:On('change', function(item, newValue, oldValue)
    if newValue == -1 then
      SetPedHeadOverlay(ped, 12, 255, 1.0)
    else
      SetPedHeadOverlay(ped, 12, newValue, 1.0)
    end
  end)
  
  save:On('select', function(item)
    PlayerData.skin_color = skin_color.Value
    PlayerData.hair = hair.Value
    PlayerData.hair_color = hair_color.Value
    PlayerData.face = face.Value
    PlayerData.blemishes = blemishes.Value
    PlayerData.facialhair = facialhair.Value
    PlayerData.facialhair_color = facialhair_color.Value
    PlayerData.eyebrows = eyebrows.Value
    PlayerData.ageing = ageing.Value
    PlayerData.makeup = makeup.Value
    PlayerData.lipstick = lipstick.Value
    PlayerData.lipstick_color = lipstick_color.Value
    PlayerData.blush = blush.Value
    PlayerData.blush_color = blush_color.Value
    PlayerData.complexion = complexion.Value
    PlayerData.sundamage = sundamage.Value
    PlayerData.freckles = freckles.Value
    PlayerData.chesthair = chesthair.Value
    PlayerData.bodyblemishes = bodyblemishes.Value
    PlayerData.extra_bodyblemishes = extra_bodyblemishes.Value
    local data = json.encode(PlayerData)
    TriggerServerEvent('jp:clothing:saveSkin', data)
  end)
end)

clothingmenu:On('open', function(m)
  local ped = PlayerPedId()
  m:ClearItems(m)

  local mask = clothingmenu:AddRange({
    label = 'Mask',
    min = 0,
    max = GetNumberOfPedDrawableVariations(ped, 1),
    value = PlayerData.mask or 0,
    description = 'Change your characters mask.',
    saveOnUpdate = true
  })

  local torso = clothingmenu:AddRange({
    label = 'Torso',
    min = 0,
    max = GetNumberOfPedDrawableVariations(ped, 3),
    value = PlayerData.mask or 0,
    description = 'Change your characters torso.',
    saveOnUpdate = true
  })

  local legs = clothingmenu:AddRange({
    label = 'Legs',
    min = 0,
    max = GetNumberOfPedDrawableVariations(ped, 4),
    value = PlayerData.mask or 0,
    description = 'Change your characters legs.',
    saveOnUpdate = true
  })

  local parachute = clothingmenu:AddRange({
    label = 'Parachute / Bag',
    min = 0,
    max = GetNumberOfPedDrawableVariations(ped, 5),
    value = PlayerData.mask or 0,
    description = 'Change your characters parachute or bag.',
    saveOnUpdate = true
  })

  local shoes = clothingmenu:AddRange({
    label = 'Shoes',
    min = 0,
    max = GetNumberOfPedDrawableVariations(ped, 6),
    value = PlayerData.mask or 0,
    description = 'Change your characters parachute.',
    saveOnUpdate = true
  })

  local accessory = clothingmenu:AddRange({
    label = 'Accessory',
    min = 0,
    max = GetNumberOfPedDrawableVariations(ped, 7),
    value = PlayerData.mask or 0,
    description = 'Change your characters accessory.',
    saveOnUpdate = true
  })
  
  local shirt = clothingmenu:AddRange({
    label = 'Shirt',
    min = 0,
    max = GetNumberOfPedDrawableVariations(ped, 8),
    value = PlayerData.mask or 0,
    description = 'Change your characters shirt.',
    saveOnUpdate = true
  })
  
  local kevlar = clothingmenu:AddRange({
    label = 'Kevlar',
    min = 0,
    max = GetNumberOfPedDrawableVariations(ped, 9),
    value = PlayerData.mask or 0,
    description = 'Change your characters kevlar.',
    saveOnUpdate = true
  })
  
  local badge = clothingmenu:AddRange({
    label = 'Badge',
    min = 0,
    max = GetNumberOfPedDrawableVariations(ped, 9),
    value = PlayerData.mask or 0,
    description = 'Change your characters badge.',
    saveOnUpdate = true
  })
  
  local torso2 = clothingmenu:AddRange({
    label = 'Torso 2',
    min = 0,
    max = GetNumberOfPedDrawableVariations(ped, 9),
    value = PlayerData.mask or 0,
    description = 'Change your characters torso 2.',
    saveOnUpdate = true
  })

  mask:On('change', function(item, newValue, oldValue)
    SetPedComponentVariation(ped, 1, newValue, 0, 2)
  end)

  torso:On('change', function(item, newValue, oldValue)
    SetPedComponentVariation(ped, 3, newValue, 0, 2)
  end)
  
  legs:On('change', function(item, newValue, oldValue)
    SetPedComponentVariation(ped, 4, newValue, 0, 2)
  end)
  
  parachute:On('change', function(item, newValue, oldValue)
    SetPedComponentVariation(ped, 5, newValue, 0, 2)
  end)
  
  shoes:On('change', function(item, newValue, oldValue)
    SetPedComponentVariation(ped, 6, newValue, 0, 2)
  end)
  
  accessory:On('change', function(item, newValue, oldValue)
    SetPedComponentVariation(ped, 7, newValue, 0, 2)
  end)
  
  shirt:On('change', function(item, newValue, oldValue)
    SetPedComponentVariation(ped, 8, newValue, 0, 2)
  end)
  
  kevlar:On('change', function(item, newValue, oldValue)
    SetPedComponentVariation(ped, 9, newValue, 0, 2)
  end)
  
  badge:On('change', function(item, newValue, oldValue)
    SetPedComponentVariation(ped, 10, newValue, 0, 2)
  end)
  
  torso2:On('change', function(item, newValue, oldValue)
    SetPedComponentVariation(ped, 11, newValue, 0, 2)
  end)

  local save = clothingmenu:AddButton({
    label = 'Save Changes',
    value = clothingmenu,
    description = 'Select to save the changes you have made.'
  })

  save:On('select', function(item)
    PlayerData.mask = mask.Value
    PlayerData.torso = torso.Value
    PlayerData.legs = legs.Value
    PlayerData.parachute = parachute.Value
    PlayerData.shoes = shoes.Value
    PlayerData.accessory = accessory.Value
    PlayerData.shirt = shirt.Value
    PlayerData.kevlar = kevlar.Value
    PlayerData.badge = badge.Value
    PlayerData.torso2 = torso2.Value
    
    local data = json.encode(PlayerData)
    TriggerServerEvent('jp:clothing:saveSkin', data)
  end)
end)

RegisterNetEvent('jp:clothing:openMain', function(data)
  PlayerData = json.decode(data.skin)
  MenuV:OpenMenu(main)
end)