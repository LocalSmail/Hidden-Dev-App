game.Players.PlayerAdded:Connect(function(player)
	
	local Stats = player:WaitForChild("Stats")
	
	local Xp = Stats.XP
	local NeededXP = Stats.NextLvlXP
	local LevelModule = require(script.Levels)
	
	while true do
		
		if script.Parent.Stats.Loaded.Value == true then
		
			if Xp.Value >= NeededXP.Value then
				
				Stats.Level.Value += 1
			
				LevelModule.NextLevel(player.Name)
			
			end
		end
		task.wait(1)
	end
	
end)
