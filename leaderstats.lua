local DataStore2 = require(1936396537)

local defaulValue = 0

game.Players.PlayerAdded:Connect(function(plr)
  print("Data Loaded")
  local moneyDataStore = DataStore2("moeny", plr)
  
  local leaderstats = Instance.new("Folder")
  leaderstats.Name = "leaderstat"
  leaderstats.Parent = plr
  
  local money = Instance.new("IntValue")
  money.name = "Money"
  money.Parent = plr
  
  local function moneyUpdate(updatedValue)
    money.Value = moneyDataStore:Get(updatedValue)
    
  end
  
  moneyUpdate(defaultValue)
  moneyDataStore:onUpdate(moneyUpdate)

end)
