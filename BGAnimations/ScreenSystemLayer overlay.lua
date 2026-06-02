
--
local t = Def.ActorFrame {}
	--[[ Text
t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(Center;diffusealpha,0);
	OnCommand=cmd(finishtweening;diffusealpha,1;);
	OffCommand=cmd(sleep,0.25;diffusealpha,0;);
	Def.Quad {
		InitCommand=cmd(zoomx,8500;zoomy,8500;diffuse,color("#000000"));
	};
	Def.BitmapText{
		Font="Common Normal";
		Name="Text";
		InitCommand=cmd(maxwidth,750;zoom,0.75);
	};
	SystemMessageMessageCommand = function(self, params)
		self:GetChild("Text"):settext( params.Message );
		self:playcommand( "On" );
		if params.NoAnimate then
			self:finishtweening();
		end
		self:playcommand( "Off" );
	end;
	HideSystemMessageMessageCommand = cmd(finishtweening);
};--]]

t[#t+1] = Def.ActorFrame {
	Def.Sprite{
		Name="bezel";
		Texture=THEME:GetPathG("","blackbars (doubleres).png");
		InitCommand=cmd(Center;zoom,0.668;SetTextureFiltering,false);
	};
};

return t;
