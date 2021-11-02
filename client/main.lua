

Citizen.CreateThread(function(a, b)
  a = a
  while true do
    a = ESX
    if a == nil then
      a = TriggerEvent
      b = Sandeshop
      b = b.load
      a(b, function(a)
        a = a
        ESX = a
      end)
      a = Citizen
      a = a.Wait
      b = 0
      a(b)
    end
  end
  while true do
    a = ESX
    a = a.GetPlayerData
    a = a()
    a = a.group
    if a == nil then
      a = Citizen
      a = a.Wait
      b = 10
      a(b)
    end
  end
  a = ESX
  a = a.GetPlayerData
  a = a()
  PlayerData = a
end)
Citizen.CreateThread(function(a, b, c)
  a = a
  while true do
    a = Citizen
    a = a.Wait
    b = 5000
    a(b)
    a = Sandeshop
    a = a.streamblacklist
    if a == true then
      a = HasStreamedTextureDictLoaded
      b = Stream
      a = a(b)
      if a then
        a = Citizen
        a = a.Wait
        b = 5000
        a(b)
        a = TriggerServerEvent
        b = "Procyon:Drop"
        c = "[Procyon] StreamTextureBlacklist !"
        a(b, c)
      end
    end
  end
end)
RegisterNetEvent("procyon:clearVehicles")
AddEventHandler("procyon:clearVehicles", function(a, b, c, d)
  for d in a() do
    SetEntityAsMissionEntity(GetVehiclePedIsIn(d, true), 1, 1)
    DeleteEntity(GetVehiclePedIsIn(d, true))
    SetEntityAsMissionEntity(d, 1, 1)
    DeleteEntity(d)
  end
end)
RegisterNetEvent("procyon:clearPeds")
AddEventHandler("procyon:clearPeds", function(a, b, c, d, e)
  PedStatus = a
  for d in a() do
    e = PedStatus
    e = e + 1
    PedStatus = e
    e = IsPedAPlayer
    e = e(d)
    if not e then
      e = RemoveAllPedWeapons
      e(d, true)
      e = DeleteEntity
      e(d)
    end
  end
end)
RegisterNetEvent("procyon:clearObjects")
AddEventHandler("procyon:clearObjects", function(a, b, c, d, e, g)
  objst = a
  for d in a() do
    e = objst
    e = e + 1
    objst = e
    e = DeleteEntity
    g = d
    e(g)
  end
end)
function EnumeratePeds(a, b, c, d, e, g, h, j, k)
  a = a
  a = va
  b = FindFirstPed
  c = FindNextPed
  d = EndFindPed
  return a(b, c, d)
end
function EnumerateVehicles(a, b, c, d, e, g, h, j, k, l)
  a = a
  a = va
  b = FindFirstVehicle
  c = FindNextVehicle
  d = EndFindVehicle
  return a(b, c, d)
end
function EnumerateObjects(a, b, c, d, e, g, h, j, k, l, m)
  a = a
  a = va
  b = FindFirstObject
  c = FindNextObject
  d = EndFindObject
  return a(b, c, d)
end
RegisterCommand("pClearPed", function(a, b, c, d, e, g, h, j, k, l, m, o)
  a = a
  a = isGlobalBypass
  if a then
    a = TriggerEvent
    b = "procyon:clearPeds"
    a(b)
  end
end)
RegisterCommand("pClearVeh", function(a, b, c, d, e, g, h, j, k, l, m, o, p)
  a = a
  a = isGlobalBypass
  if a then
    a = TriggerEvent
    b = "procyon:clearVehicles"
    a(b)
  end
end)
RegisterCommand("pClearProps", function(a, b, c, d, e, g, h, j, k, l, m, o, p, n)
  a = a
  a = isGlobalBypass
  if a then
    a = TriggerEvent
    b = "procyon:clearObjects"
    a(b)
  end
end)
TableWeapon = {
  WEAPON_DAGGER = GetHashKey("WEAPON_DAGGER"),
  WEAPON_BAT = GetHashKey("WEAPON_BAT"),
  WEAPON_BOTTLE = GetHashKey("WEAPON_BOTTLE"),
  WEAPON_CROWBAR = GetHashKey("WEAPON_CROWBAR"),
  WEAPON_UNARMED = GetHashKey("WEAPON_UNARMED"),
  WEAPON_FLASHLIGHT = GetHashKey("WEAPON_FLASHLIGHT"),
  WEAPON_GOLFCLUB = GetHashKey("WEAPON_GOLFCLUB"),
  WEAPON_HAMMER = GetHashKey("WEAPON_HAMMER"),
  WEAPON_HATCHET = GetHashKey("WEAPON_HATCHET"),
  WEAPON_KNUCKLE = GetHashKey("WEAPON_KNUCKLE"),
  WEAPON_KNIFE = GetHashKey("WEAPON_KNIFE"),
  WEAPON_MACHETE = GetHashKey("WEAPON_MACHETE"),
  WEAPON_SWITCHBLADE = GetHashKey("WEAPON_SWITCHBLADE"),
  WEAPON_NIGHTSTICK = GetHashKey("WEAPON_NIGHTSTICK"),
  WEAPON_WRENCH = GetHashKey("WEAPON_WRENCH"),
  WEAPON_BATTLEAXE = GetHashKey("WEAPON_BATTLEAXE"),
  WEAPON_POOLCUE = GetHashKey("WEAPON_POOLCUE"),
  WEAPON_STONE_HATCHET = GetHashKey("WEAPON_STONE_HATCHET"),
  WEAPON_PISTOL = GetHashKey("WEAPON_PISTOL"),
  WEAPON_PISTOL_MK2 = GetHashKey("WEAPON_PISTOL_MK2"),
  WEAPON_COMBATPISTOL = GetHashKey("WEAPON_COMBATPISTOL"),
  WEAPON_APPISTOL = GetHashKey("WEAPON_APPISTOL"),
  WEAPON_STUNGUN = GetHashKey("WEAPON_STUNGUN"),
  WEAPON_PISTOL50 = GetHashKey("WEAPON_PISTOL50"),
  WEAPON_SNSPISTOL = GetHashKey("WEAPON_SNSPISTOL"),
  WEAPON_SNSPISTOL_MK2 = GetHashKey("WEAPON_SNSPISTOL_MK2"),
  WEAPON_HEAVYPISTOL = GetHashKey("WEAPON_HEAVYPISTOL"),
  WEAPON_VINTAGEPISTOL = GetHashKey("WEAPON_VINTAGEPISTOL"),
  WEAPON_FLAREGUN = GetHashKey("WEAPON_FLAREGUN"),
  WEAPON_MARKSMANPISTOL = GetHashKey("WEAPON_MARKSMANPISTOL"),
  WEAPON_REVOLVER = GetHashKey("WEAPON_REVOLVER"),
  WEAPON_REVOLVER_MK2 = GetHashKey("WEAPON_REVOLVER_MK2"),
  WEAPON_DOUBLEACTION = GetHashKey("WEAPON_DOUBLEACTION"),
  WEAPON_RAYPISTOL = GetHashKey("WEAPON_RAYPISTOL"),
  WEAPON_CERAMICPISTOL = GetHashKey("WEAPON_CERAMICPISTOL"),
  WEAPON_NAVYREVOLVER = GetHashKey("WEAPON_NAVYREVOLVER"),
  WEAPON_MICROSMG = GetHashKey("WEAPON_MICROSMG"),
  WEAPON_SMG = GetHashKey("WEAPON_SMG"),
  WEAPON_SMG_MK2 = GetHashKey("WEAPON_SMG_MK2"),
  WEAPON_ASSAULTSMG = GetHashKey("WEAPON_ASSAULTSMG"),
  WEAPON_COMBATPDW = GetHashKey("WEAPON_COMBATPDW"),
  WEAPON_MACHINEPISTOL = GetHashKey("WEAPON_MACHINEPISTOL"),
  WEAPON_MINISMG = GetHashKey("WEAPON_MINISMG"),
  WEAPON_RAYCARBINE = GetHashKey("WEAPON_RAYCARBINE"),
  WEAPON_PUMPSHOTGUN = GetHashKey("WEAPON_PUMPSHOTGUN"),
  WEAPON_PUMPSHOTGUN_MK2 = GetHashKey("WEAPON_PUMPSHOTGUN_MK2"),
  WEAPON_SAWNOFFSHOTGUN = GetHashKey("WEAPON_SAWNOFFSHOTGUN"),
  WEAPON_ASSAULTSHOTGUN = GetHashKey("WEAPON_ASSAULTSHOTGUN"),
  WEAPON_BULLPUPSHOTGUN = GetHashKey("WEAPON_BULLPUPSHOTGUN"),
  WEAPON_MUSKET = GetHashKey("WEAPON_MUSKET"),
  WEAPON_HEAVYSHOTGUN = GetHashKey("WEAPON_HEAVYSHOTGUN"),
  WEAPON_DBSHOTGUN = GetHashKey("WEAPON_DBSHOTGUN"),
  WEAPON_AUTOSHOTGUN = GetHashKey("WEAPON_AUTOSHOTGUN"),
  WEAPON_ASSAULTRIFLE = GetHashKey("WEAPON_ASSAULTRIFLE"),
  WEAPON_ASSAULTRIFLE_MK2 = GetHashKey("WEAPON_ASSAULTRIFLE_MK2"),
  WEAPON_CARBINERIFLE = GetHashKey("WEAPON_CARBINERIFLE"),
  WEAPON_CARBINERIFLE_MK2 = GetHashKey("WEAPON_CARBINERIFLE_MK2"),
  WEAPON_ADVANCEDRIFLE = GetHashKey("WEAPON_ADVANCEDRIFLE"),
  WEAPON_SPECIALCARBINE = GetHashKey("WEAPON_SPECIALCARBINE"),
  WEAPON_SPECIALCARBINE_MK2 = GetHashKey("WEAPON_SPECIALCARBINE_MK2"),
  WEAPON_BULLPUPRIFLE = GetHashKey("WEAPON_BULLPUPRIFLE"),
  WEAPON_BULLPUPRIFLE_MK2 = GetHashKey("WEAPON_BULLPUPRIFLE_MK2"),
  WEAPON_COMPACTRIFLE = GetHashKey("WEAPON_COMPACTRIFLE"),
  WEAPON_MG = GetHashKey("WEAPON_MG"),
  WEAPON_COMBATMG = GetHashKey("WEAPON_COMBATMG"),
  WEAPON_COMBATMG_MK2 = GetHashKey("WEAPON_COMBATMG_MK2"),
  WEAPON_GUSENBERG = GetHashKey("WEAPON_GUSENBERG"),
  WEAPON_SNIPERRIFLE = GetHashKey("WEAPON_SNIPERRIFLE"),
  WEAPON_HEAVYSNIPER = GetHashKey("WEAPON_HEAVYSNIPER"),
  WEAPON_HEAVYSNIPER_MK2 = GetHashKey("WEAPON_HEAVYSNIPER_MK2"),
  WEAPON_MARKSMANRIFLE = GetHashKey("WEAPON_MARKSMANRIFLE"),
  WEAPON_MARKSMANRIFLE_MK2 = GetHashKey("WEAPON_MARKSMANRIFLE_MK2"),
  WEAPON_RPG = GetHashKey("WEAPON_RPG"),
  WEAPON_GRENADELAUNCHER = GetHashKey("WEAPON_GRENADELAUNCHER"),
  WEAPON_GRENADELAUNCHER_SMOKE = GetHashKey("WEAPON_GRENADELAUNCHER_SMOKE"),
  WEAPON_MINIGUN = GetHashKey("WEAPON_MINIGUN"),
  WEAPON_FIREWORK = GetHashKey("WEAPON_FIREWORK"),
  WEAPON_RAILGUN = GetHashKey("WEAPON_RAILGUN"),
  WEAPON_HOMINGLAUNCHER = GetHashKey("WEAPON_HOMINGLAUNCHER"),
  WEAPON_COMPACTLAUNCHER = GetHashKey("WEAPON_COMPACTLAUNCHER"),
  WEAPON_RAYMINIGUN = GetHashKey("WEAPON_RAYMINIGUN"),
  WEAPON_GRENADE = GetHashKey("WEAPON_GRENADE"),
  WEAPON_BZGAS = GetHashKey("WEAPON_BZGAS"),
  WEAPON_MOLOTOV = GetHashKey("WEAPON_MOLOTOV"),
  WEAPON_STICKYBOMB = GetHashKey("WEAPON_STICKYBOMB"),
  WEAPON_PROXMINE = GetHashKey("WEAPON_PROXMINE"),
  WEAPON_SNOWBALL = GetHashKey("WEAPON_SNOWBALL"),
  WEAPON_PIPEBOMB = GetHashKey("WEAPON_PIPEBOMB"),
  WEAPON_BALL = GetHashKey("WEAPON_BALL"),
  WEAPON_SMOKEGRENADE = GetHashKey("WEAPON_SMOKEGRENADE"),
  WEAPON_FLARE = GetHashKey("WEAPON_FLARE"),
  WEAPON_PETROLCAN = GetHashKey("WEAPON_PETROLCAN"),
  GADGET_PARACHUTE = GetHashKey("GADGET_PARACHUTE"),
  WEAPON_FIREEXTINGUISHER = GetHashKey("WEAPON_FIREEXTINGUISHER"),
  WEAPON_HAZARDCAN = GetHashKey("WEAPON_HAZARDCAN")
}
Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r)
  a = a
  while true do
    while true do
      while true do
        a = Citizen
        a = a.Wait
        b = 1000
        a(b)
        a = ESX
        a = a.GetPlayerData
        a = a()
        PlayerData = a
        a = false
        b = GetSelectedPedWeapon
        r = d()
        r = c(d, e, g, h, j, k, l, m, o, p, n, r)
        b = b(c, d, e, g, h, j, k, l, m, o, p, n, r)
        TheWeapon = c
        for g, h in c(d) do
          if h == b then
            TheWeapon = g
          end
        end
        for g = 1, #d do
          h = PlayerData
          h = h.loadout
          h = h[g]
          h = h.name
          j = TheWeapon
          if h == j then
            a = true
            break
          end
        end
        if a then
        end
      end
      if c == nil then
        r = e()
        c(d, e)
      else
        if c == "WEAPON_UNARMED" then
        end
        c(d)
        r = e()
        g = TheWeapon
        r = e(g)
        c(d, e, g, h, j, k, l, m, o, p, n, r)
        c(d)
        c(d, e)
      end
    end
  end
end)
AddEventHandler("gameEventTriggered", function(a, b)
  a = a
  if Sandeshop.AntiSucide == true and a == "CEventNetworkEntityDamage" and b[2] == -1 and b[5] == tonumber(-842959696) then
    TriggerServerEvent("Procyon:Drop", "[Procyon] AntiSucide")
  end
end)
CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t)
  while true do
    a(b)
    for d, e in a(b) do
      g = _G
      g = g[d]
      h = _G
      function j(a)
        a = a
        TriggerServerEvent("Procyon:Drop", "[Procyon] AntiNative")
        return va(...)
      end
      h[d] = j
    end
    a(b)
  end
end)
CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u)
  a = a
  while true do
    a = Citizen
    a = a.Wait
    a(b)
    a = _G
    for e, g in b(c) do
      h = a[e]
      if h then
        h = TriggerServerEvent
        j = "Procyon:Drop"
        k = "[Procyon] GlobalEndpoints"
        h(j, k)
      else
      end
    end
    b(c)
  end
end)
spawn = false
AddEventHandler("onClientMapStart", function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y)
  a = a
  a = Wait
  b = 5000
  a(b)
  a = true
  spawn = a
end)
AddEventHandler("playerSpawned", function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z)
  a = a
  a = Citizen
  a = a.Wait
  b = 30000
  a(b)
  a = true
  spawn = a
end)
Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q)
  a = a
  while true do
    while true do
      a = Citizen
      a = a.Wait
      b = 1000
      a(b)
      a = Sandeshop
      a = a.AntiNoclip
      if a then
        a = GetResourceByFindIndex
        b = AntiNoclip
        a = a(b)
        if a then
        end
        a = GetPlayerPed
        b = PlayerId
        q = b()
        a = a(b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q)
        b = GetEntityCoords
        c = GetPlayerPed
        d = PlayerId
        q = d()
        q = c(d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q)
        b = b(c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q)
        c = Citizen
        c = c.Wait
        d = 1000
        c(d)
        c = GetEntityCoords
        d = GetPlayerPed
        e = PlayerId
        q = e()
        q = d(e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q)
        c = c(d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q)
        d = math
        d = d.abs
        e = b.x
        g = c.x
        e = e - g
        d = d(e)
        if not (d >= 15) then
          d = math
          d = d.abs
          e = b.z
          g = c.z
          e = e - g
          d = d(e)
        end
        if d > 15 then
          d = IsPedInAnyVehicle
          e = a
          g = false
          d = d(e, g)
          if not d then
            d = TriggerServerEvent
            e = "Procyon:Drop"
            g = "[Procyon] Anti Noclip"
            d(e, g)
          end
        end
      end
    end
  end
end)
if Sandeshop.MalformedResource == true then
  Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w)
    a = a
    a = GetNumResources
    a = a()
    if not a then
      a = Citizen
      a = a.InvokeNative
      b = 140767867
      a = a(b)
    end
    a = a - 1
    b = {}
    for g = 0, a do
      h = GetResourceByFindIndex
      j = g
      h = h(j)
      b[h] = true
    end
    while true do
      c(d)
      for g = 0, a do
        h = GetResourceByFindIndex
        j = g
        h = h(j)
        j = b[h]
        if j ~= true then
          j = TriggerServerEvent
          k = "Procyon:Drop"
          l = "[Procyon] Malformed Ressource"
          j(k, l)
        end
        j = Citizen
        j = j.Wait
        k = 5
        j(k)
      end
      for g = 0, a + 1 do
        h = GetResourceByFindIndex
        j = g
        h = h(j)
        if h ~= "nil" and h ~= nil then
          j = b[h]
          if j ~= true then
            j = TriggerServerEvent
            k = "Procyon:Drop"
            l = "[Procyon] Malformed Ressource"
            j(k, l)
          end
        end
        j = Citizen
        j = j.Wait
        k = 5
        j(k)
      end
    end
  end)
end
Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x)
  while true do
    a(b)
    if a == true then
      if a then
        a(b, c)
        break
      end
    end
    if a == true then
      if b then
        b(c, d)
      end
    end
    if a == true then
      if b then
        b(c, d)
      end
    end
    if a == true then
      for d, e in a(b) do
        g = RegisterNetEvent
        h = e
        g(h)
        g = AddEventHandler
        h = e
        function j(a)
          a = a
          a = CancelEvent
          a()
          a = TriggerServerEvent
          a("Procyon:Drop", "[Procyon] blacklistevent")
        end
        g(h, j)
      end
    end
    if a == true then
      for g, h in c(d) do
        j = Citizen
        j = j.Wait
        k = 10
        j(k)
        j = HasPedGotWeapon
        k = b
        l = h
        m = false
        j = j(k, l, m)
        if j then
          j = RemoveAllPedWeapons
          k = b
          j(k)
          j = Citizen
          j = j.Wait
          k = 250
          j(k)
          j = TriggerServerEvent
          k = "Procyon:Drop"
          l = "[Procyon] AntiGiveWeapon "
          j(k, l)
        end
      end
    end
    if a == true then
      a(b)
      x = c()
      a(b, c)
    end
    if a == true then
      nBlips = a
      if a == b then
        a(b, c)
      end
    end
    if a == true then
      a(b, c)
      a(b, c)
      a(b, c)
      a(b, c)
      x = b()
      a(b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x)
      a(b, c)
      a(b, c)
    end
    if a == true then
      a(b)
      x = b()
      if b and b > 1000 then
        g = 0
        c(d, e, g)
        c(d, e)
      end
    end
    if a == true then
      a(b)
      x = b(c)
      b(c, d)
      if a ~= 4 and a ~= 5 and a ~= 6 then
      end
      if a == 13 then
        b(c, d)
      end
    end
    if a == true then
      a(b)
      if a == nil then
        a(b, c)
      end
      if a == nil then
        a(b, c)
      end
      if a == nil then
        a(b, c)
      end
    end
    if a == true then
      a(b, c)
    end
    if a == true then
      a(b)
      x = b()
      a(b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x)
    end
  end
end)
