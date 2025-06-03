function TextBannerAfterSet(self,param)
	local Title = self:GetChild("Title")
	local Subtitle = self:GetChild("Subtitle")
	local Artist = self:GetChild("Artist")
	
	if Subtitle:GetText() == "" then
		Title:maxwidth(500)
		Title:y(0)
		Title:zoom(1)
		
		-- hide so that the game skips drawing.
		Subtitle:visible(false)

		Artist:zoom(0)
	else
		Title:maxwidth(500)
		Title:y(-7)
		Title:zoom(0.75)
		
		-- subtitle below title
		Subtitle:visible(true)
		Subtitle:maxwidth(500)
		Subtitle:zoom(0.6)
		Subtitle:y(7)
		
		Artist:zoom(0)
	end
end

function TextBannerHighScoreAfterSet(self,param)
	local Title = self:GetChild("Title")
	local Subtitle = self:GetChild("Subtitle")
	local Artist = self:GetChild("Artist")
	
	if Subtitle:GetText() == "" then
		Title:maxwidth(500)
		Title:y(0)
		Title:zoom(1)
		
		-- hide so that the game skips drawing.
		Subtitle:visible(false)

		Artist:zoom(0)
	else
		Title:maxwidth(500)
		Title:y(-7)
		Title:zoom(0.75)
		
		-- subtitle below title
		Subtitle:visible(true)
		Subtitle:maxwidth(500)
		Subtitle:zoom(0.6)
		Subtitle:y(7)
		
		Artist:zoom(0)
	end
end
