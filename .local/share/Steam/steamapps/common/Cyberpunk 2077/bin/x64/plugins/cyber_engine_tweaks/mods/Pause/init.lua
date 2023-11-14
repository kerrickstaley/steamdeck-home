--Author: yakuzadeso

paused = false

registerInput('Pause', 'Pause', function(isKeyDown)
	if not isKeyDown then
		return
	end
	paused = not paused
	if paused then
		Game.GetTimeSystem():SetTimeDilation(CName.new("pause"), 0.0)
		TimeDilationHelper.SetTimeDilationWithProfile(Game.GetPlayer(), "radialMenu", true, true)
		TimeDilationHelper.SetIgnoreTimeDilationOnLocalPlayerZero(Game.GetPlayer(), true)
	else
		Game.GetTimeSystem():UnsetTimeDilation(CName.new("pause"), "None")
		TimeDilationHelper.SetTimeDilationWithProfile(Game.GetPlayer(), "radialMenu", false, true)
		TimeDilationHelper.SetIgnoreTimeDilationOnLocalPlayerZero(Game.GetPlayer(), false)
	end
end)
