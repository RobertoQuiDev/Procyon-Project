Sandeshop = {}

whitelist = {
    ["127.0.0.1"] = true,
}

country = { -- https://www.iban.com/country-codes -- Use ALPHA-2 codes 
    ["BE"] = true,
    ["FR"] = true,
    ["CHE"] = true,
    ["CA"] = true,
    ["IDF"] = true,
}

Stream = { -- Blacklist les texture ytd mettre Stream = {} si vous en voulez pas 
	["commonmenu"] = true,
}

ForbiddenCrashes = {
	'gta-streaming-five.dll+4AE92',
	'citizen-scripting-lua.dll+3FA40B',
	'citizen-scripting-lua.dll+3FB324',
	'kernelbase.dll+3A799',
	'ntdll.dll+1E312',
	'ntdll.dll+FBF18',
    "Reliable network event overflow",
}

Sandeshop.AntiInjectionESX = true -- Block 90% des injections menu ! (False si tu use esx)

Sandeshop.AntiInjection = true -- Mettre en true si tu use esx !

Sandeshop.NativeInjectionMassif = true

Sandeshop.AntiNoclip = false

AntiNoclip = { 
	["es_extended"] = true,
	["esx_teleport"] = true,
}


Sandeshop.ForceDiscordConnect = false -- Force a avoir discord pour ce connectez !
Sandeshop.MalformedResource = true
Sandeshop.AntiStop = true -- Bêta (Marche que sur la resource de l'anticheat procyon)
Sandeshop.ForbiddenCrash = true 
Sandeshop.AntiRemoveWeapon = true
Sandeshop.AntiAddWeaponToPlayer = true
Sandeshop.banmessage = "Goodbye guys !" 
Sandeshop.AntiVPN = true -- Empeche les joueurs de se co avec un vpn
Sandeshop.facteurConfiance = true -- Global ban des serveur Procyon !
Sandeshop.delayEvent = 5 -- delay event pour antispam js
Sandeshop.maintenance = true -- sys de maintenance si vous le mettez sur true vous avez juste a tapez pMaintenance dans la console et le serveur ce met en maintenance !
Sandeshop.deletecar = true -- Supprime une voiture apres son explosion !
Sandeshop.AntiLicenseClears = true -- évite le clear de license, license car, license gta, ect..
Sandeshop.AntiSucide = true -- Le joueurs na pas le droit de se donnée la mort (Depuis un mod menu)
Sandeshop.AntiSpeedPed = true -- évitez que le joueurs change le vitesse de sa course  pied
Sandeshop.AntiExplosiveBullets = true -- Anti Explosion 'Basic'
Sandeshop.AntiInfinityAmmo = true -- Le joueurs ne peut pas se donnée des munitios infini
Sandeshop.streamblacklist = true -- changez votre commonmenu.ytd sinon cela va vous ban !
Sandeshop.cmdban = true -- mettre en true si vous voulez activez les commandes de ban exemple : pBan ID TEMPS RAISON
Sandeshop.groupecmd = 'admin' -- ne pas touchez :)
Sandeshop.antishootESX = true -- Anti Shoot players UTILISEZ QUE SI VOUS AVEZ ESX
Sandeshop.scriptname = "Procyon"
Sandeshop.antiFire = true -- Anti fire
Sandeshop.trigger = true -- conseillez de le mettre en ON directement si vous voulez être sur ! (ANTI SPAM TRIGGER)
Sandeshop.antiBackdoors = false -- Vérifie le côter serveur de chaque ressource a chaque démarrage de votre serveur (évite les script malvaillant en LUA)
Sandeshop.AntiBlips = true -- Anti Blips
Sandeshop.BasicSecure = true -- Sécure basic (Infect en aucun cas le serveur compatible avec n'importe quel base)
Sandeshop.AntiClearPedTasks = true -- Anti Clear Ped Task
Sandeshop.antiGodMod = true -- Anti GodMod
Sandeshop.AntiHashModifier = true -- évitez que les players change le Hash de leur entité !
Sandeshop.AntiProjectile = true -- Anti Projectile Event
Sandeshop.delaytrigger = 1 -- delay de l'antispam triggers
Sandeshop.antispamjs = true -- Rate Limite pour tout les execution des Triggers JS 
Sandeshop.antinightvision = true -- Anti Night Vision
Sandeshop.antispectate = true -- anti spectate players
Sandeshop.blacklistevent = true -- si vous souhaitez mettre sur la liste noir certains event qui n'appartiens pas a votre serveur !
Sandeshop.AntiGiveWeapon = true -- anti give basic vous rentrez les arme a blacklist dans la list en dessous 
Sandeshop.AntiGiveWeaponESX = true -- peut beuger en fonction de votre version de ES_EXTENDED
Sandeshop.antiParticule = true -- retire tout les particule de la maps !
Sandeshop.AntiExplosion = true -- évite les explosion dans le serveur !
Sandeshop.MaxSpawnVeh = 30
Sandeshop.MaxSpawnPed = 30
Sandeshop.MaxExplosion = 5
Sandeshop.MaxProps = 30




Sandeshop.TriggersList = { -- AntiSpam triggers 
'::{korioz#0110}::es_admin:set',
'::{korioz#0110}::esx:onPlayerDeath',
'::{korioz#0110}::esx_dmvschool:addLicense',
}


Sandeshop.blackListEvents = { -- Antispam JS 
    "mysql-async:request-data",
    "mysql-async:request-server-status"
}



Sandeshop.antishootArme = { -- list de base qui ne fait pas beuger le serveur si vous voulez en add allez y ! 
    [453432689] = {name = 'WEAPON_PISTOL'},
    [2578377531] = {name = 'WEAPON_PISTOL50'},
    [584646201] = {name = 'WEAPON_APPISTOL'},
    [3218215474] = {name = 'WEAPON_SNSPISTOL'},
    [1593441988] = {name = 'WEAPON_COMBATPISTOL'},
    [3249783761] = {name = 'WEAPON_REVOLVER'},
    [324215364] = {name = 'WEAPON_MICROSMG'},
    [3523564046] = {name = 'WEAPON_HEAVYPISTOL'},
    [137902532] = {name = 'WEAPON_VINTAGEPISTOL'},
    [736523883] = {name = 'WEAPON_SMG'},
    [4024951519] = {name = 'WEAPON_ASSAULTSMG'},
    [3675956304] = {name = 'WEAPON_MACHINEPISTOL'},
    [3173288789] = {name = 'WEAPON_MINISMG'},
    [171789620] = {name = 'WEAPON_COMBATPDW'},
    [487013001] = {name = 'WEAPON_PUMPSHOTGUN'},
    [2017895192] = {name = 'WEAPON_SAWNOFFSHOTGUN'},
    [3800352039] = {name = 'WEAPON_ASSAULTSHOTGUN'},
    [3231910285] = {name = 'WEAPON_SPECIALCARBINE'},
    [2937143193] = {name = 'WEAPON_ADVANCEDRIFLE'},
    [2132975508] = {name = 'WEAPON_BULLPUPRIFLE'},
    [1649403952] = {name = 'WEAPON_COMPACTRIFLE'},
    [2634544996] = {name = 'WEAPON_MG'},
    [2144741730] = {name = 'WEAPON_COMBATMG'},
    [1627465347] = {name = 'WEAPON_GUSENBERG'},
    [100416529] = {name = 'WEAPON_SNIPERRIFLE'},
    [205991906] = {name = 'WEAPON_HEAVYSNIPER'},
    [3342088282] = {name = 'WEAPON_MARKSMANRIFLE'},
    [2210333304] = {name = 'WEAPON_CARBINERIFLE'},
    [3220176749] = {name = 'WEAPON_ASSAULTRIFLE'},
}




Sandeshop.EventBlacklist = { -- la liste d'event a blacklist
	"gcPhone:_internalAddMessage",
	"gcPhone:tchat_channel",
	"esx_vehicleshop:setVehicleOwned",
	"esx_mafiajob:confiscatePlayerItem",
	"lscustoms:payGarage",
	"vrp_slotmachine:server:2",
	"Banca:deposit",
	"bank:deposit",
	"esx_jobs:caution",
	"give_back",
	"esx_fueldelivery:pay",
	"esx_carthief:pay",
	"esx_godirtyjob:pay",
	"esx_pizza:pay",
	"esx_ranger:pay",
	"esx_garbagejob:pay",
	"esx_truckerjob:pay",
	"redst0nia:checking",
	"AdminMenu:giveBank",
	"AdminMenu:giveCash",
	"esx_gopostaljob:pay",
	"esx_banksecurity:pay",
	"esx_slotmachine:sv:2",
}



Sandeshop.AntiGiveWeaponList = { 
	"WEAPON_SWITCHBLADE",
	"WEAPON_BATTLEAXE",
	"WEAPON_POOLCUE",
	"WEAPON_PISTOL_MK2",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_FLAREGUN",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_REVOLVER",
	"WEAPON_REVOLVER_MK2",
	"WEAPON_DOUBLEACTION",
	"WEAPON_RAYPISTOL",
	"WEAPON_CERAMICPISTOL",
	"WEAPON_NAVYREVOLVER",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_HEAVYSHOTGUN",
	"WEAPON_DBSHOTGUN",
	"WEAPON_AUTOSHOTGUN",
	"WEAPON_ADVENCEDRIFLE",
	"WEAPON_BULLPUPRIFLE_MK2",
	"WEAPON_HEAVYSNIPER",
	"WEAPON_HEAVYSNIPER_MK2",
	"WEAPON_RPG",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_GRENADELAUNCHER_SMOKE",
	"WEAPON_MINIGUN",
	"WEAPON_FIREWORK",
	"WEAPON_RAILGUN",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_RAYMINIGUN",
	"WEAPON_GRENADE",
	"WEAPON_BZGAS",
	"WEAPON_SMOKEGRENADE",
	"WEAPON_FLARE",
	"WEAPON_STICKYBOMB",
	"WEAPON_PROXIMINE",
	"WEAPON_SNOWBALL",
	"WEAPON_PIPEBOMB",
	"WEAPON_FIREEXTINGUISHER",
	"WEAPON_PARACHUTE",
	"WEAPON_HAZARDCAN"
}


Sandeshop.ExplosionType = { -- https://wiki.rage.mp/index.php?title=Explosions 
	0,
	1,
	2,
	3,
	4,
	5,
	25,
	32,
	33,
	35,
	36,
	37,
	38
}

Sandeshop.blacklistedEntity = {
    [GetHashKey("hydra")] = true, -- Le true sert à rien
    [GetHashKey("cerberus2")] = true,
    [GetHashKey("cerberus")] = true,
    [GetHashKey("cutter")] = true,
    [GetHashKey("dump")] = true,
    [GetHashKey("apc")] = true,
    [GetHashKey("halftrack")] = true,
    [GetHashKey("khanjali")] = true,
    [GetHashKey("minitank")] = true,
    [GetHashKey("rhino")] = true,
    [GetHashKey("scarab")] = true,
    [GetHashKey("scarab2")] = true,
    [GetHashKey("scarab3")] = true,
    [GetHashKey("thruster")] = true,
    [GetHashKey("trailersmall2")] = true,
    [GetHashKey("oppressor")] = true,
    [GetHashKey("oppressor2")] = true,
    [GetHashKey("blazer5")] = true,
    [GetHashKey("dune2")] = true,
    [GetHashKey("dune3")] = true,
    [GetHashKey("dune4")] = true,
    [GetHashKey("dune5")] = true,
    [GetHashKey("insurgent")] = true,
    [GetHashKey("insurgent3")] = true,
    [GetHashKey("menacer")] = true,
    [GetHashKey("technical")] = true,
    [GetHashKey("technical2")] = true,
    [GetHashKey("technical3")] = true,
    [GetHashKey("cargoplane")] = true,
    [GetHashKey("strikeforce")] = true,
    [GetHashKey("titan")] = true,
    [GetHashKey("volatol")] = true,
    [GetHashKey("freight")] = true,
    [GetHashKey("freightcar")] = true,
    [GetHashKey("freightcont1")] = true,
    [GetHashKey("freightcont2")] = true,
    [GetHashKey("freightgrain")] = true,
    [GetHashKey("metrotrain")] = true,
    [GetHashKey("tankercar")] = true,
    [GetHashKey("blimp2")] = true,
    -- prosp
    [GetHashKey("xs_prop_hamburgher_wl")] = true,
    [GetHashKey("stt_prop_stunt_track_dwslope30")] = true,
    [GetHashKey("prop_streetlight_01")] = true,
    [GetHashKey("stt_prop_stunt_track_dwslope30")] = true,
    [GetHashKey("sr_prop_spec_tube_crn_05a")] = true,
	[GetHashKey("sr_prop_spec_tube_crn_30d_05a")] = true,
	[GetHashKey("sr_prop_spec_tube_l_05a")] = true,
	[GetHashKey("sr_prop_spec_tube_m_05a")] = true,
	[GetHashKey("sr_prop_spec_tube_xxs_05a")] = true,
	[GetHashKey("sr_prop_stunt_tube_crn_15d_05a")] = true,
	[GetHashKey("sr_prop_stunt_tube_crn_5d_05a")] = true,
	[GetHashKey("sr_prop_stunt_tube_xs_05a")] = true,
}

Sandeshop.AntiNative = {
    ["GetTextureResolution"] = true,
	["SetPedInfiniteAmmo"] = true,
	["ShootSingleBulletBetweenCoords"] = true,
	["ShootSingleBulletBetweenCoordsIgnoreEntity"] = true,
	["ShootSingleBulletBetweenCoordsIgnoreEntityNew"] = true,
	["SetSuperJumpThisFrame"] = true,
	["SetExplosiveMeleeThisFrame"] = true,
	["SetExplosiveAmmoThisFrame"] = true,
	["SetPedShootsAtCoord"] = true,
	["SetPedToRagdoll"] = true,
	["SetHandlingField"] = true,
	["SetHandlingInt"] = true,
	["SetHandlingFloat"] = true,
	["SetHandlingVector"] = true,
	["AddExplosion"] = true,
	["NetworkExplodeVehicle"] = true,
	["ShowHeadingIndicatorOnBlip"] = true,
	["SetBlipNameToPlayerName"] = true,
	["SetBlipCategory"] = true,
	["ApplyForceToEntity"] = true,
	["LoadResourceFile"] = true,
	["SetEntityRotation"] = true,
	["StartShapeTestRay"] = true,
	["SetPedAlertness"] = true,
	
}

Sandeshop.GlobalEndpoints = {
	["KeyboardInput"] = true,
	["GetKeyboardInput"] = true,
	["_Executor"] = true,
	["_Executor_Strings"] = true,
}

Sandeshop.BlacklistedModels = { -- only peds/vehicles
	"s_m_y_swat_01",
	"a_m_o_acult_01",
	"ig_wade",
	"s_m_y_hwaycop_01",
	"A_M_Y_ACult_01",
	's_m_m_movalien_01',
	's_m_m_movallien_01',
	'u_m_y_babyd',
	'CS_Orleans',
	'A_M_Y_ACult_01',
	'S_M_M_MovSpace_01',
	'U_M_Y_Zombie_01',
	's_m_y_blackops_01',
	'a_f_y_topless_01',
	'a_c_boar',
	'a_c_cat_01',
	'a_c_chickenhawk',
	'a_c_chimp',
	's_f_y_hooker_03',
	'a_c_chop',
	'a_c_cormorant',
	'a_c_cow',
	'a_c_coyote',
	'a_c_crow',
	'a_c_dolphin',
	'a_c_fish',
	's_f_y_hooker_01',
	'a_c_hen',
	'a_c_humpback',
	'a_c_husky',
	'a_c_killerwhale',
	'a_c_mtlion',
	'a_c_pigeon',
	'a_c_poodle',
	'a_c_pug',
	'a_c_rabbit_01',
	'a_c_rat',
	'a_c_retriever',
	'a_c_rhesus',
	'a_c_rottweiler',
	'a_c_sharkhammer',
	'a_c_sharktiger',
	'a_c_shepherd',
	'a_c_stingray',
	'a_c_westy',
	'CS_Orleans',
}

Sandeshop.WhitelistedProps = {
	"prop_ballistic_shield",
}