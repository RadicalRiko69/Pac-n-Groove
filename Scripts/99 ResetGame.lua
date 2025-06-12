function ResetGame()
	PREFSMAN:SetPreference("AllowW1",'AllowW1_Never');
	PREFSMAN:SetPreference("MusicWheelUsesSections",'Always');
	PREFSMAN:SetPreference("AttractSoundFrequency",'Never');
	PREFSMAN:SetPreference("EventMode",1);
	PREFSMAN:SetPreference("MusicWheelSwitchSpeed",'75');
	PREFSMAN:SetPreference("TimingWindowSecondsW2",0.080);
	PREFSMAN:SetPreference("TimingWindowSecondsW3",0.000);
	PREFSMAN:SetPreference("TimingWindowSecondsW4",0.000);
	PREFSMAN:SetPreference("TimingWindowSecondsW5",0.000);
	--test
	--SCREENMAN:SystemMessage("idk what im doin")
end
