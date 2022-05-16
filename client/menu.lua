local menuLocation = "topright"
local ped = nil
local PlayerSkin = {
	["face"] = {
		value = 0,
		texture = 0,
	},
	["nose_width"] = {
		id = 0,
		value = 0.0,
	},
	["nose_peak"] = {
		id = 1,
		value = 0.0,
	},
	["nose_length"] = {
		id = 2,
		value = 0.0,
	},
	["nose_bone"] = {
		id = 3,
		value = 0.0,
	},
	["nose_tip"] = {
		id = 4,
		value = 0.0,
	},
	["nose_bone_twist"] = {
		id = 5,
		value = 0.0,
	},
	["eyebrow_up_down"] = {
		id = 6,
		value = 0.0,
	},
	["eyebrow_in_out"] = {
		id = 7,
		value = 0.0,
	},
	["cheek_up_down"] = {
		id = 8,
		value = 0.0,
	},
	["cheek_sideways"] = {
		id = 9,
		value = 0.0,
	},
	["cheek_width"] = {
		id = 10,
		value = 0.0,
	},
	["eye_opening"] = {
		id = 11,
		value = 0.0,
	},
	["lip_thickness"] = {
		id = 12,
		value = 0.0,
	},
	["jaw_width"] = {
		id = 13,
		value = 0.0,
	},
	["jaw_shape"] = {
		id = 14,
		value = 0.0,
	},
	["chin_up_down"] = {
		id = 15,
		value = 0.0,
	},
	["chin_length"] = {
		id = 16,
		value = 0.0,
	},
	["chin_shape"] = {
		id = 17,
		value = 0.0,
	},
	["chin_hole"] = {
		id = 18,
		value = 0.0,
	},
	["neck_thickness"] = {
		id = 19,
		value = 0.0,
	},
	["blemishes"] = {
		id = 0,
		value = -1,
		texture = 1,
	},
	["facial_hair"] = {
		id = 1,
		value = -1,
		texture = 1,
	},
	["eyebrows"] = {
		id = 2,
		value = -1,
		texture = 1,
	},
	["ageing"] = {
		id = 3,
		value = -1,
		texture = 1,
	},
	["makeup"] = {
		id = 4,
		value = -1,
		texture = 1,
	},
	["blush"] = {
		id = 5,
		value = -1,
		texture = 1,
	},
	["complexion"] = {
		id = 6,
		value = -1,
		texture = 1,
	},
	["sun_damage"] = {
		id = 7,
		value = -1,
		texture = 1,
	},
	["lipstick"] = {
		id = 8,
		value = -1,
		texture = 1,
	},
	["freckles"] = {
		id = 9,
		value = -1,
		texture = 1,
	},
	["body_hair"] = {
		id = 10,
		value = -1,
		texture = 1,
	},
	["body_blemishes"] = {
		id = 11,
		value = -1,
		texture = 1,
	},
	["add_body_blemishes"] = {
		id = 12,
		value = -1,
		texture = 1,
	},
	["mask"] = {
		type = "variation",
		id = 1,
		value = 0,
		texture = 0,
	},
	["hair"] = {
		type = "variation",
		id = 2,
		value = 0,
		texture = 0,
	},
	["torso"] = {
		type = "variation",
		id = 3,
		value = 0,
		texture = 0,
	},
	["leg"] = {
		type = "variation",
		id = 4,
		value = 0,
		texture = 0,
	},
	["bag"] = {
		type = "variation",
		id = 5,
		value = 0,
		texture = 0,
	},
	["shoes"] = {
		type = "variation",
		id = 6,
		value = 0,
		texture = 0,
	},
	["accessory"] = {
		type = "variation",
		id = 7,
		value = 0,
		texture = 0,
	},
	["undershirt"] = {
		type = "variation",
		id = 8,
		value = 0,
		texture = 0,
	},
	["kevlar"] = {
		type = "variation",
		id = 9,
		value = 0,
		texture = 0,
	},
	["badge"] = {
		type = "variation",
		id = 10,
		value = 0,
		texture = 0,
	},
	["jacket"] = {
		type = "variation",
		id = 11,
		value = 0,
		texture = 0,
	},
	["hat"] = {
		type = "prop",
		id = 0,
		value = -1,
		texture = 0,
	},
	["glass"] = {
		type = "prop",
		id = 1,
		value = 0,
		texture = 0,
	},
	["ear"] = {
		type = "prop",
		id = 2,
		value = -1,
		texture = 0,
	},
	["watch"] = {
		type = "prop",
		id = 6,
		value = -1,
		texture = 0,
	},
	["bracelet"] = {
		type = "prop",
		id = 7,
		value = -1,
		texture = 0,
	},
}

-- Menus
-- -- Main Menu
local mainMenu = MenuV:CreateMenu(
	false,
	"Main Menu",
	menuLocation,
	0,
	0,
	0,
	"size-100",
	"none",
	"menuv",
	"mainmenu",
	"native"
)

-- -- Character Menu
local characterMenu = MenuV:CreateMenu(
	false,
	"Character Menu",
	menuLocation,
	0,
	0,
	0,
	"size-100",
	"none",
	"menuv",
	"charactermenu",
	"native"
)

-- -- Clothing Menu
local clothingMenu = MenuV:CreateMenu(
	false,
	"Clothing Menu",
	menuLocation,
	0,
	0,
	0,
	"size-100",
	"none",
	"menuv",
	"clothingmenu",
	"native"
)

-- -- Face Menu
local faceMenu = MenuV:CreateMenu(
	false,
	"Face Menu",
	menuLocation,
	0,
	0,
	0,
	"size-100",
	"none",
	"menuv",
	"facemenu",
	"native"
)

-- Buttons
-- -- Main Menu
local characterButton = mainMenu:AddButton({
	label = "Edit Features",
	value = characterMenu,
	description = "Edit your character's features.",
})
local clothingButton = mainMenu:AddButton({
	label = "Edit Clothing",
	value = clothingMenu,
	description = "Change your character's clothing.",
})

-- -- Character Menu
-- -- -- Face
local face = characterMenu:AddRange({
	label = "Face",
	min = 0,
	max = 45,
	value = PlayerSkin["face"].value,
	description = "Change your character's face.",
	saveOnUpdate = true,
})
face:On("change", function(item, newValue, oldValue)
	SetPedHeadBlendData(PlayerPedId(), newValue, nil, nil, PlayerSkin["face"].texture, nil, nil, nil, nil, nil, false)
	PlayerSkin["face"].value = newValue
end)

-- -- -- Skin Color
local skin_color = characterMenu:AddRange({
	label = "Skin Color",
	min = 0,
	max = 15,
	value = PlayerSkin["face"].texture,
	description = "Change your character's skin color.",
	saveOnUpdate = true,
})
skin_color:On("change", function(item, newValue, oldValue)
	SetPedHeadBlendData(PlayerPedId(), PlayerSkin["face"].value, nil, nil, newValue, nil, nil, nil, nil, nil, false)
	PlayerSkin["face"].texture = newValue
end)

-- -- -- Face Menu
local faceButton = characterMenu:AddButton({
	label = "Facial Features",
	value = faceMenu,
	description = "Edit your character's facial features.",
})
faceMenu:On("open", function()
	-- TODO: Add Camera
end)

-- -- -- -- Nose Width
local nose_width = faceMenu:AddRange({
	label = "Nose Width (Thin/Wide)",
	min = -10,
	max = 10,
	value = PlayerSkin["nose_width"].value,
	description = "Change the width of your nose.",
	saveOnUpdate = true,
})
nose_width:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 0, newItem)
	PlayerSkin["nose_width"].value = newValue
end)

-- -- -- -- Nose Peak
local nose_peak = faceMenu:AddRange({
	label = "Nose Peak (Up/Down)",
	value = PlayerSkin["nose_peak"].value,
	min = -10,
	max = 10,
	description = "Change the peak of your nose.",
	saveOnUpdate = true,
})
nose_peak:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 1, newItem)
	PlayerSkin["nose_peak"].value = newValue
end)

-- -- -- -- Nose Length
local nose_length = faceMenu:AddRange({
	label = "Nose Length (Long/Short)",
	value = PlayerSkin["nose_length"].value,
	min = -10,
	max = 10,
	description = "Change the length of your nose.",
	saveOnUpdate = true,
})
nose_length:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 2, newItem)
	PlayerSkin["nose_length"].value = newValue
end)

-- -- -- -- Nose Bone
local nose_bone = faceMenu:AddRange({
	label = "Nose Bone (Crooked/Curved)",
	value = PlayerSkin["nose_bone"].value,
	min = -10,
	max = 10,
	description = "Change the curve of your nose.",
	saveOnUpdate = true,
})
nose_bone:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 3, newItem)
	PlayerSkin["nose_bone"].value = newValue
end)

-- -- -- -- Nose Tip
local nose_tip = faceMenu:AddRange({
	label = "Nose Tip (Up/Down)",
	value = PlayerSkin["nose_tip"].value,
	min = -10,
	max = 10,
	description = "Change the tip of your nose.",
	saveOnUpdate = true,
})
nose_tip:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 4, newItem)
	PlayerSkin["nose_tip"].value = newValue
end)

-- -- -- -- Nose Twist
local nose_bone_twist = faceMenu:AddRange({
	label = "Nose Twist (Left/Right)",
	value = PlayerSkin["nose_bone_twist"].value,
	min = -10,
	max = 10,
	description = "Change the twist of your nose.",
	saveOnUpdate = true,
})
nose_bone_twist:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 5, newItem)
	PlayerSkin["nose_bone_twist"].value = newValue
end)

-- -- -- -- Eyebrow
local eyebrow_up_down = faceMenu:AddRange({
	label = "Eyebrow (Up/Down)",
	value = PlayerSkin["eyebrow_up_down"].value,
	min = -10,
	max = 10,
	description = "Change the height of your eyebrows.",
	saveOnUpdate = true,
})
eyebrow_up_down:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 6, newItem)
	PlayerSkin["eyebrow_up_down"].value = newValue
end)

-- -- -- -- Eyebrow In-Out
local eyebrow_in_out = faceMenu:AddRange({
	label = "Eyebrow (In/Out)",
	value = PlayerSkin["eyebrow_in_out"].value,
	min = -10,
	max = 10,
	description = "Change the distance between your eyebrows.",
	saveOnUpdate = true,
})
eyebrow_in_out:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 7, newItem)
	PlayerSkin["eyebrow_in_out"].value = newValue
end)

-- -- -- -- cheek up down
local cheek_up_down = faceMenu:AddRange({
	label = "Cheek Bones (Up/Down)",
	value = PlayerSkin["cheek_up_down"].value,
	min = -10,
	max = 10,
	description = "Change the height of your cheek bones.",
	saveOnUpdate = true,
})
cheek_up_down:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 8, newItem)
	PlayerSkin["cheek_up_down"].value = newValue
end)

-- -- -- -- sheek sideways
local cheek_sideways = faceMenu:AddRange({
	label = "Cheek Bones Size (In/Out)",
	value = PlayerSkin["cheek_sideways"].value,
	min = -10,
	max = 10,
	description = "Change the size of your cheek bones.",
	saveOnUpdate = true,
})
cheek_sideways:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 9, newItem)
	PlayerSkin["cheek_sideways"].value = newValue
end)

-- -- -- -- cheek width
local cheek_width = faceMenu:AddRange({
	label = "Cheek Bones Width (Puffed/Gaunt)",
	value = PlayerSkin["cheek_width"].value,
	min = -10,
	max = 10,
	description = "Change the width of your cheek bones.",
	saveOnUpdate = true,
})
cheek_width:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 10, newItem)
	PlayerSkin["cheek_width"].value = newValue
end)

-- -- -- -- eye opening
local eye_opening = faceMenu:AddRange({
	label = "Eye Opening (Wide/Squinted)",
	value = PlayerSkin["eye_opening"].value,
	min = -10,
	max = 10,
	description = "Change the opening of your eyes.",
	saveOnUpdate = true,
})
eye_opening:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 11, newItem)
	PlayerSkin["eye_opening"].value = newValue
end)

-- -- -- -- lip thickness
local lip_thickness = faceMenu:AddRange({
	label = "Lip Thickness (Fat/Thin)",
	value = PlayerSkin["lip_thickness"].value,
	min = -10,
	max = 10,
	description = "Change the thickness of your lips.",
	saveOnUpdate = true,
})
lip_thickness:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 12, newItem)
	PlayerSkin["lip_thickness"].value = newValue
end)

-- -- -- -- jaw width
local jaw_width = faceMenu:AddRange({
	label = "Jaw Bone Width (Narrow/Wide)",
	value = PlayerSkin["jaw_width"].value,
	min = -10,
	max = 10,
	description = "Change the width of your jaw bone.",
	saveOnUpdate = true,
})
jaw_width:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 13, newItem)
	PlayerSkin["jaw_width"].value = newValue
end)

-- -- -- -- jaw shape
local jaw_shape = faceMenu:AddRange({
	label = "Jaw Bone Shape (Round/Square)",
	value = PlayerSkin["jaw_shape"].value,
	min = -10,
	max = 10,
	description = "Change the shape of your jaw bone.",
	saveOnUpdate = true,
})
jaw_shape:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 14, newItem)
	PlayerSkin["jaw_shape"].value = newValue
end)

-- -- -- -- chin up down
local chin_up_down = faceMenu:AddRange({
	label = "Chin Bone (Up/Down)",
	value = PlayerSkin["chin_up_down"].value,
	min = -10,
	max = 10,
	description = "Change the height of your chin bone.",
	saveOnUpdate = true,
})
chin_up_down:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 15, newItem)
	PlayerSkin["chin_up_down"].value = newValue
end)

-- -- -- -- chin length
local chin_length = faceMenu:AddRange({
	label = "Chin Bone Length (In/Out)",
	value = PlayerSkin["chin_length"].value,
	min = -10,
	max = 10,
	description = "Change the length of your chin bone.",
	saveOnUpdate = true,
})
chin_length:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 16, newItem)
	PlayerSkin["chin_length"].value = newValue
end)

-- -- -- -- chin shape
local chin_shape = faceMenu:AddRange({
	label = "Chin Bone Shape (Pointed/Square)",
	value = PlayerSkin["chin_shape"].value,
	min = -10,
	max = 10,
	description = "Change the shape of your chin bone.",
	saveOnUpdate = true,
})
chin_shape:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 17, newItem)
	PlayerSkin["chin_shape"].value = newValue
end)

-- -- -- -- chin hole
local chin_hole = faceMenu:AddRange({
	label = "Chin Hole (Chin Bum)",
	value = PlayerSkin["chin_hole"].value,
	min = -10,
	max = 10,
	description = "Change the shape of your chin bone.",
	saveOnUpdate = true,
})
chin_hole:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 18, newItem)
	PlayerSkin["chin_hole"].value = newValue
end)

-- -- -- -- neck thickness
local neck_thickness = faceMenu:AddRange({
	label = "Neck Thickness (Thin/Thick)",
	value = PlayerSkin["neck_thickness"].value,
	min = -10,
	max = 10,
	description = "Change the thickness of your neck.",
	saveOnUpdate = true,
})
neck_thickness:On("change", function(item, newValue, oldValue)
	local newItem = (newValue / 10)
	SetPedFaceFeature(PlayerPedId(), 19, newItem)
	PlayerSkin["neck_thickness"].value = newValue
end)

-- -- -- Hair
local hair = characterMenu:AddRange({
	label = "Hair",
	min = 0,
	max = nil,
	value = PlayerSkin["hair"].value,
	description = "Change your character's hair style.",
	saveOnUpdate = true,
})
local hair_color = characterMenu:AddRange({
	label = "Hair Color",
	min = 0,
	max = 45,
	description = "Change the color of your character's hair.",
	saveOnUpdate = true,
})
hair:On("enter", function(item)
	hair:SetMaxValue(GetNumberOfPedDrawableVariations(PlayerPedId(), 2))
end)
hair:On("change", function(item, newValue, oldValue)
	SetPedComponentVariation(PlayerPedId(), 2, newValue, 0, 0)
	PlayerSkin["hair"].value = newValue
end)
hair_color:On("change", function(item, newValue, oldValue)
	SetPedHairColor(PlayerPedId(), newValue, newValue)
	PlayerSkin["hair"].texture = newValue
end)

-- -- -- Facial Hair
local facial_hair = characterMenu:AddRange({
	label = "Facial Hair",
	min = -1,
	max = 28,
	value = PlayerSkin["facial_hair"].value,
	description = "Change your character's facial hair.",
	saveOnUpdate = true,
})
local eyebrows = characterMenu:AddRange({
	label = "Eyebrows",
	min = -1,
	max = 33,
	value = PlayerSkin["eyebrows"].value,
	description = "Change your character's eyebrows.",
	saveOnUpdate = true,
})
local body_hair = characterMenu:AddRange({
	label = "Body Hair",
	min = -1,
	max = 16,
	value = PlayerSkin["body_hair"].value,
	description = "Change your character's body hair.",
	saveOnUpdate = true,
})
local facial_hair_color = characterMenu:AddRange({
	label = "Facial/Eyebrow/Body Hair Color",
	min = 0,
	max = 45,
	value = PlayerSkin["facial_hair"].texture,
	description = "Change your character's facial hair.",
	saveOnUpdate = true,
})
facial_hair:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 1, newValue, 1.0)
	PlayerSkin["facial_hair"].value = newValue
end)
eyebrows:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 2, newValue, 1.0)
	PlayerSkin["eyebrows"].value = newValue
end)
body_hair:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 10, newValue, 1.0)
	PlayerSkin["body_hair"].value = newValue
end)
facial_hair_color:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlayColor(PlayerPedId(), 1, 1, newValue, 0)
	SetPedHeadOverlayColor(PlayerPedId(), 2, 1, newValue, 0)
	SetPedHeadOverlayColor(PlayerPedId(), 10, 1, newValue, 0)
	PlayerSkin["facial_hair"].texture = newValue
end)

-- -- -- Makeup
local makeup = characterMenu:AddRange({
	label = "Makeup",
	min = -1,
	max = 74,
	value = PlayerSkin["makeup"].value,
	description = "Change your character's makeup.",
	saveOnUpdate = true,
})
local blush = characterMenu:AddRange({
	label = "Blush",
	min = -1,
	max = 6,
	value = PlayerSkin["blush"].value,
	description = "Change your character's blush.",
	saveOnUpdate = true,
})
local lipstick = characterMenu:AddRange({
	label = "Lipstick",
	min = -1,
	max = 9,
	value = PlayerSkin["lipstick"].value,
	description = "Change your character's lipstick.",
	saveOnUpdate = true,
})
local makeup_color = characterMenu:AddRange({
	label = "Makeup Color",
	min = 0,
	max = 45,
	value = PlayerSkin["blush"].texture,
	description = "Change your character's makeup color.",
	saveOnUpdate = true,
})
makeup:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 4, newValue, 1.0)
	PlayerSkin["makeup"].value = newValue
end)
blush:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 5, newValue, 1.0)
	PlayerSkin["blush"].value = newValue
end)
lipstick:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 8, newValue, 1.0)
	PlayerSkin["lipstick"].value = newValue
end)
makeup_color:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlayColor(PlayerPedId(), 5, 2, newValue, 0)
	SetPedHeadOverlayColor(PlayerPedId(), 8, 2, newValue, 0)
	PlayerSkin["blush"].texture = newValue
end)

-- -- -- Blemishes
local blemishes = characterMenu:AddRange({
	label = "Blemishes",
	min = -1,
	max = 23,
	value = PlayerSkin["blemishes"].value,
	description = "Change your character's blemishes.",
	saveOnUpdate = true,
})
blemishes:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 0, newValue, 1.0)
	PlayerSkin["blemishes"].value = newValue
end)

-- -- -- Ageing
local ageing = characterMenu:AddRange({
	label = "Ageing",
	min = -1,
	max = 14,
	value = PlayerSkin["ageing"].value,
	description = "Change your character's ageing.",
	saveOnUpdate = true,
})
ageing:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 3, newValue, 1.0)
	PlayerSkin["ageing"].value = newValue
end)

-- -- -- Complexion
local complexion = characterMenu:AddRange({
	label = "Complexion",
	min = -1,
	max = 11,
	value = PlayerSkin["complexion"].value,
	description = "Change your character's complexion.",
	saveOnUpdate = true,
})
complexion:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 6, newValue, 1.0)
	PlayerSkin["complexion"].value = newValue
end)

-- -- -- Sun Damage
local sun_damage = characterMenu:AddRange({
	label = "Sun Damage",
	min = -1,
	max = 10,
	value = PlayerSkin["sun_damage"].value,
	description = "Change your character's sun damage.",
	saveOnUpdate = true,
})
sun_damage:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 7, newValue, 1.0)
	PlayerSkin["sun_damage"].value = newValue
end)

-- -- -- Freckles
local freckles = characterMenu:AddRange({
	label = "Freckles",
	min = -1,
	max = 17,
	value = PlayerSkin["freckles"].value,
	description = "Change your character's freckles.",
	saveOnUpdate = true,
})
freckles:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 9, newValue, 1.0)
	PlayerSkin["freckles"].value = newValue
end)

-- -- -- Body Blemishes
local body_blemishes = characterMenu:AddRange({
	label = "Body Blemishes",
	min = -1,
	max = 11,
	value = PlayerSkin["body_blemishes"].value,
	description = "Change your character's body blemishes.",
	saveOnUpdate = true,
})
body_blemishes:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 11, newValue, 1.0)
	PlayerSkin["body_blemishes"].value = newValue
end)

-- -- -- Additional Body Blemishes
local add_body_blemishes = characterMenu:AddRange({
	label = "Add Body Blemishes",
	min = -1,
	max = 1,
	value = PlayerSkin["add_body_blemishes"].value,
	description = "Change your character's additional body blemishes.",
	saveOnUpdate = true,
})
add_body_blemishes:On("change", function(item, newValue, oldValue)
	SetPedHeadOverlay(PlayerPedId(), 10, newValue, 1.0)
	PlayerSkin["add_body_blemishes"].value = newValue
end)

-- -- Clothing Menu
clothingMenu:On("open", function()
	-- TODO: Add Camera
end)

-- -- -- Mask
local mask = clothingMenu:AddRange({
	label = "Mask",
	min = 0,
	max = nil,
	value = PlayerSkin["mask"].value,
	description = "Change your character's mask.",
	saveOnUpdate = true,
})
local mask_texture = clothingMenu:AddRange({
	label = "Mask Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["mask"].texture,
	description = "Change the texture of your character's mask.",
	saveOnUpdate = true,
})
mask:On("enter", function(item)
	mask:SetMaxValue((GetNumberOfPedDrawableVariations(PlayerPedId(), 1) - 1))
end)
mask:On("change", function(item, newValue, oldValue)
	SetPedComponentVariation(PlayerPedId(), 1, newValue, 0, 2)
	mask_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["mask"].value = newValue
end)
mask_texture:On("change", function(item, newValue, oldValue)
	local current = GetPedDrawableVariation(PlayerPedId(), 1)
	SetPedComponentVariation(PlayerPedId(), 1, current, newValue, 0)
	PlayerSkin["mask"].texture = newValue
end)

-- -- -- Torso
local torso = clothingMenu:AddRange({
	label = "Torso",
	min = 0,
	max = nil,
	value = PlayerSkin["torso"].value,
	description = "Change your character's torso.",
	saveOnUpdate = true,
})
local torso_texture = clothingMenu:AddRange({
	label = "Torso Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["torso"].texture,
	description = "Change the texture of your character's torso.",
	saveOnUpdate = true,
})
torso:On("enter", function(item)
	torso:SetMaxValue((GetNumberOfPedDrawableVariations(PlayerPedId(), 3) - 1))
end)
torso:On("change", function(item, newValue, oldValue)
	SetPedComponentVariation(PlayerPedId(), 3, newValue, 0, 2)
	torso_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["torso"].value = newValue
end)
torso_texture:On("change", function(item, newValue, oldValue)
	local current = GetPedDrawableVariation(PlayerPedId(), 3)
	SetPedComponentVariation(PlayerPedId(), 3, current, newValue, 0)
	PlayerSkin["torso"].texture = newValue
end)

-- -- -- Legs
local leg = clothingMenu:AddRange({
	label = "Legs",
	min = 0,
	max = nil,
	value = PlayerSkin["leg"].value,
	description = "Change your character's legs.",
	saveOnUpdate = true,
})
local leg_texture = clothingMenu:AddRange({
	label = "Legs Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["leg"].texture,
	description = "Change the texture of your character's legs.",
	saveOnUpdate = true,
})
leg:On("enter", function(item)
	leg:SetMaxValue((GetNumberOfPedDrawableVariations(PlayerPedId(), 4) - 1))
end)
leg:On("change", function(item, newValue, oldValue)
	SetPedComponentVariation(PlayerPedId(), 4, newValue, 0, 2)
	leg_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["leg"].value = newValue
end)
leg_texture:On("change", function(item, newValue, oldValue)
	local current = GetPedDrawableVariation(PlayerPedId(), 4)
	SetPedComponentVariation(PlayerPedId(), 4, current, newValue, 0)
	PlayerSkin["leg"].texture = newValue
end)

-- -- -- Parachute/Bags
local bag = clothingMenu:AddRange({
	label = "Parachute/Bag",
	min = 0,
	max = nil,
	value = PlayerSkin["bag"].value,
	description = "Change your character's parachute/bags.",
	saveOnUpdate = true,
})
local bag_texture = clothingMenu:AddRange({
	label = "Parachute/Bag Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["torso"].texture,
	description = "Change the texture of your character's parachute or bag.",
	saveOnUpdate = true,
})
bag:On("enter", function(item)
	bag:SetMaxValue((GetNumberOfPedDrawableVariations(PlayerPedId(), 5) - 1))
end)
bag:On("change", function(item, newValue, oldValue)
	SetPedComponentVariation(PlayerPedId(), 5, newValue, 0, 2)
	bag_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["bag"].value = newValue
end)
bag_texture:On("change", function(item, newValue, oldValue)
	local current = GetPedDrawableVariation(PlayerPedId(), 5)
	SetPedComponentVariation(PlayerPedId(), 5, current, newValue, 0)
	PlayerSkin["bag"].texture = newValue
end)

-- -- -- Shoes
local shoes = clothingMenu:AddRange({
	label = "Shoes",
	min = 0,
	max = nil,
	value = PlayerSkin["shoes"].value,
	description = "Change your character's shoes.",
	saveOnUpdate = true,
})
local shoes_texture = clothingMenu:AddRange({
	label = "Shoes Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["shoes"].texture,
	description = "Change the texture of your character's shoes.",
	saveOnUpdate = true,
})
shoes:On("enter", function(item)
	shoes:SetMaxValue((GetNumberOfPedDrawableVariations(PlayerPedId(), 6) - 1))
end)
shoes:On("change", function(item, newValue, oldValue)
	SetPedComponentVariation(PlayerPedId(), 6, newValue, 0, 2)
	shoes_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["shoes"].value = newValue
end)
shoes_texture:On("change", function(item, newValue, oldValue)
	local current = GetPedDrawableVariation(PlayerPedId(), 6)
	SetPedComponentVariation(PlayerPedId(), 6, current, newValue, 0)
	PlayerSkin["shoes"].texture = newValue
end)

-- -- -- Accessory
local accessory = clothingMenu:AddRange({
	label = "Accessory",
	min = 0,
	max = nil,
	value = PlayerSkin["accessory"].value,
	description = "Change your character's accessory.",
	saveOnUpdate = true,
})
local accessory_texture = clothingMenu:AddRange({
	label = "Accessory Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["accessory"].texture,
	description = "Change the texture of your character's accessory.",
	saveOnUpdate = true,
})
accessory:On("enter", function(item)
	accessory:SetMaxValue((GetNumberOfPedDrawableVariations(PlayerPedId(), 7) - 1))
end)
accessory:On("change", function(item, newValue, oldValue)
	SetPedComponentVariation(PlayerPedId(), 7, newValue, 0, 2)
	accessory_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["accessory"].value = newValue
end)
accessory_texture:On("change", function(item, newValue, oldValue)
	local current = GetPedDrawableVariation(PlayerPedId(), 7)
	SetPedComponentVariation(PlayerPedId(), 7, current, newValue, 0)
	PlayerSkin["accessory"].texture = newValue
end)

-- -- -- Undershirt
local undershirt = clothingMenu:AddRange({
	label = "Undershirt",
	min = 0,
	max = nil,
	value = PlayerSkin["undershirt"].value,
	description = "Change your character's undershirt.",
	saveOnUpdate = true,
})
local undershirt_texture = clothingMenu:AddRange({
	label = "Undershirt Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["undershirt"].texture,
	description = "Change the texture of your character's undershirt.",
	saveOnUpdate = true,
})
undershirt:On("enter", function(item)
	undershirt:SetMaxValue((GetNumberOfPedDrawableVariations(PlayerPedId(), 8) - 1))
end)
undershirt:On("change", function(item, newValue, oldValue)
	SetPedComponentVariation(PlayerPedId(), 8, newValue, 0, 2)
	undershirt_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["undershirt"].value = newValue
end)
undershirt_texture:On("change", function(item, newValue, oldValue)
	local current = GetPedDrawableVariation(PlayerPedId(), 8)
	SetPedComponentVariation(PlayerPedId(), 8, current, newValue, 0)
	PlayerSkin["undershirt"].texture = newValue
end)

-- -- -- Kevlar
local kevlar = clothingMenu:AddRange({
	label = "Kevlar",
	min = 0,
	max = nil,
	value = PlayerSkin["kevlar"].value,
	description = "Change your character's kevlar.",
	saveOnUpdate = true,
})
local kevlar_texture = clothingMenu:AddRange({
	label = "Kevlar Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["kevlar"].texture,
	description = "Change the texture of your character's kevlar.",
	saveOnUpdate = true,
})
kevlar:On("enter", function(item)
	kevlar:SetMaxValue((GetNumberOfPedDrawableVariations(PlayerPedId(), 9) - 1))
end)
kevlar:On("change", function(item, newValue, oldValue)
	SetPedComponentVariation(PlayerPedId(), 9, newValue, 0, 2)
	kevlar_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["kevlar"].value = newValue
end)
kevlar_texture:On("change", function(item, newValue, oldValue)
	local current = GetPedDrawableVariation(PlayerPedId(), 9)
	SetPedComponentVariation(PlayerPedId(), 9, current, newValue, 0)
	PlayerSkin["kevlar"].texture = newValue
end)

-- -- -- Badge
local badge = clothingMenu:AddRange({
	label = "Badge",
	min = 0,
	max = nil,
	value = PlayerSkin["badge"].value,
	description = "Change your character's badge.",
	saveOnUpdate = true,
})
local badge_texture = clothingMenu:AddRange({
	label = "Badge Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["badge"].texture,
	description = "Change the texture of your character's badge.",
	saveOnUpdate = true,
})
badge:On("enter", function(item)
	badge:SetMaxValue((GetNumberOfPedDrawableVariations(PlayerPedId(), 10) - 1))
end)
badge:On("change", function(item, newValue, oldValue)
	SetPedComponentVariation(PlayerPedId(), 10, newValue, 0, 2)
	badge_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["badge"].value = newValue
end)
badge_texture:On("change", function(item, newValue, oldValue)
	local current = GetPedDrawableVariation(PlayerPedId(), 10)
	SetPedComponentVariation(PlayerPedId(), 10, current, newValue, 0)
	PlayerSkin["badge"].texture = newValue
end)

-- -- -- Jacket
local jacket = clothingMenu:AddRange({
	label = "Torso 2",
	min = 0,
	max = nil,
	value = PlayerSkin["jacket"].value,
	description = "Change your character's torso 2.",
	saveOnUpdate = true,
})
local jacket_texture = clothingMenu:AddRange({
	label = "Jacket Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["jacket"].texture,
	description = "Change the texture of your character's jacket.",
	saveOnUpdate = true,
})
jacket:On("enter", function(item)
	jacket:SetMaxValue((GetNumberOfPedDrawableVariations(PlayerPedId(), 11) - 1))
end)
jacket:On("change", function(item, newValue, oldValue)
	SetPedComponentVariation(PlayerPedId(), 11, newValue, 0, 2)
	jacket_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["jacket"].value = newValue
end)
jacket_texture:On("change", function(item, newValue, oldValue)
	local current = GetPedDrawableVariation(PlayerPedId(), 11)
	SetPedComponentVariation(PlayerPedId(), 11, current, newValue, 0)
	PlayerSkin["jacket"].texture = newValue
end)

-- -- -- Hat
local hat = clothingMenu:AddRange({
	label = "Hat",
	min = 0,
	max = nil,
	value = PlayerSkin["hat"].value,
	description = "Change your character's hat.",
	saveOnUpdate = true,
})
local hat_texture = clothingMenu:AddRange({
	label = "Hat Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["hat"].texture,
	description = "Change the texture of your character's hat.",
	saveOnUpdate = true,
})
hat:On("enter", function(item)
	hat:SetMaxValue((GetNumberOfPedPropDrawableVariations(PlayerPedId(), 0) - 1))
end)
hat:On("change", function(item, newValue, oldValue)
	if newValue ~= -1 then
		SetPedPropIndex(PlayerPedId(), 0, newValue, 0, true)
	else
		ClearPedProp(PlayerPedId(), 0)
	end
	hat_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["hat"].value = newValue
end)
hat_texture:On("change", function(item, newValue, oldValue)
	SetPedPropIndex(PlayerPedId(), 0, PlayerSkin["hat"].value, newValue, true)
	PlayerSkin["hat"].texture = newValue
end)

-- -- -- Glasses
local glass = clothingMenu:AddRange({
	label = "Glasses",
	min = 0,
	max = nil,
	value = PlayerSkin["glass"].value,
	description = "Change your character's glasses.",
	saveOnUpdate = true,
})
local glass_texture = clothingMenu:AddRange({
	label = "Glasses Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["glass"].texture,
	description = "Change the texture of your character's glasses.",
	saveOnUpdate = true,
})
glass:On("enter", function(item)
	glass:SetMaxValue((GetNumberOfPedPropDrawableVariations(PlayerPedId(), 1) - 1))
end)
glass:On("change", function(item, newValue, oldValue)
	if newValue ~= -1 then
		SetPedPropIndex(PlayerPedId(), 1, newValue, 0, true)
	else
		ClearPedProp(PlayerPedId(), 1)
	end
	glass_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["glass"].value = newValue
end)
glass_texture:On("change", function(item, newValue, oldValue)
	SetPedPropIndex(PlayerPedId(), 1, PlayerSkin["glass"].value, newValue, true)
	PlayerSkin["glass"].texture = newValue
end)

-- -- -- Earrings
local ear = clothingMenu:AddRange({
	label = "Earrings",
	min = 0,
	max = nil,
	value = PlayerSkin["ear"].value,
	description = "Change your character's earrings.",
	saveOnUpdate = true,
})
local ear_texture = clothingMenu:AddRange({
	label = "Earrings Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["ear"].texture,
	description = "Change the texture of your character's earrings.",
	saveOnUpdate = true,
})
ear:On("enter", function(item)
	ear:SetMaxValue((GetNumberOfPedPropDrawableVariations(PlayerPedId(), 2) - 1))
end)
ear:On("change", function(item, newValue, oldValue)
	if newValue ~= -1 then
		SetPedPropIndex(PlayerPedId(), 2, newValue, 0, true)
	else
		ClearPedProp(PlayerPedId(), 2)
	end
	ear_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["ear"].value = newValue
end)
ear_texture:On("change", function(item, newValue, oldValue)
	SetPedPropIndex(PlayerPedId(), 2, PlayerSkin["ear"].value, newValue, true)
	PlayerSkin["ear"].texture = newValue
end)

-- -- -- Watch
local watch = clothingMenu:AddRange({
	label = "Watch",
	min = 0,
	max = nil,
	value = PlayerSkin["watch"].value,
	description = "Change your character's watch.",
	saveOnUpdate = true,
})
local watch_texture = clothingMenu:AddRange({
	label = "Watch Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["watch"].texture,
	description = "Change the texture of your character's watch.",
	saveOnUpdate = true,
})
watch:On("enter", function(item)
	watch:SetMaxValue((GetNumberOfPedPropDrawableVariations(PlayerPedId(), 6) - 1))
end)
watch:On("change", function(item, newValue, oldValue)
	if newValue ~= -1 then
		SetPedPropIndex(PlayerPedId(), 6, newValue, 0, true)
	else
		ClearPedProp(PlayerPedId(), 6)
	end
	watch_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["watch"].value = newValue
end)
watch_texture:On("change", function(item, newValue, oldValue)
	SetPedPropIndex(PlayerPedId(), 6, PlayerSkin["watch"].value, newValue, true)
	PlayerSkin["watch"].texture = newValue
end)

-- -- -- Bracelet
local bracelet = clothingMenu:AddRange({
	label = "Bracelet",
	min = 0,
	max = nil,
	value = PlayerSkin["bracelet"].value,
	description = "Change your character's bracelet.",
	saveOnUpdate = true,
})
local bracelet_texture = clothingMenu:AddRange({
	label = "Bracelet Texture",
	min = 0,
	max = nil,
	value = PlayerSkin["bracelet"].texture,
	description = "Change the texture of your character's bracelet.",
	saveOnUpdate = true,
})
bracelet:On("enter", function(item)
	bracelet:SetMaxValue((GetNumberOfPedPropDrawableVariations(PlayerPedId(), 7) - 1))
end)
bracelet:On("change", function(item, newValue, oldValue)
	if newValue ~= -1 then
		SetPedPropIndex(PlayerPedId(), 7, newValue, 0, true)
	else
		ClearPedProp(PlayerPedId(), 7)
	end
	bracelet_texture:SetMaxValue(GetNumberOfPedTextureVariations(PlayerPedId(), 1, newValue) - 1)
	PlayerSkin["bracelet"].value = newValue
end)
bracelet_texture:On("change", function(item, newValue, oldValue)
	SetPedPropIndex(PlayerPedId(), 7, PlayerSkin["bracelet"].value, newValue, true)
	PlayerSkin["bracelet"].texture = newValue
end)

RegisterNetEvent("prp:clothing:openMain", function()
	Wait(100)
	MenuV:OpenMenu(mainMenu)
end)

RegisterCommand("clothing", function()
	TriggerEvent("prp:clothing:openMain")
end)
