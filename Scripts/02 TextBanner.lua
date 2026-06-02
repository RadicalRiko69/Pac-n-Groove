function TextBannerAfterSet(self,param)
	local Title = self:GetChild("Title")
	local Subtitle = self:GetChild("Subtitle")
	local Artist = self:GetChild("Artist")
	
	if Subtitle:GetText() == "" then
		Title:maxwidth(490)
		Title:y(-7)
		Title:zoom(1)
		
		-- hide so that the game skips drawing.
		Subtitle:visible(false)
		
		Artist:zoom(0.75)
		Artist:maxwidth(640)
		Artist:y(9)
	else
		Title:maxwidth(490)
		Title:y(-12)
		Title:zoom(0.75)
		
		-- subtitle below title
		Subtitle:visible(true)
		Subtitle:maxwidth(800)
		Subtitle:zoom(0.5)
		
		Artist:zoom(0.75)
		Artist:maxwidth(640)
		Artist:y(12)
	end
end

function TextBannerHighScoreAfterSet(self,param)
	local Title = self:GetChild("Title")
	local Subtitle = self:GetChild("Subtitle")
	local Artist = self:GetChild("Artist")
	
	if Subtitle:GetText() == "" then
		Title:maxwidth(490)
		Title:y(-7)
		Title:zoom(1)
		
		-- hide so that the game skips drawing.
		Subtitle:visible(false)
		
		Artist:zoom(0.75)
		Artist:maxwidth(640)
		Artist:y(9)
	else
		Title:maxwidth(490)
		Title:y(-12)
		Title:zoom(0.75)
		
		-- subtitle below title
		Subtitle:visible(true)
		Subtitle:maxwidth(800)
		Subtitle:zoom(0.5)
		
		Artist:zoom(0.75)
		Artist:maxwidth(640)
		Artist:y(12)
	end
end
