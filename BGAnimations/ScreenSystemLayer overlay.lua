
--
local t = Def.ActorFrame {}
	-- Text
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
};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(xy,SCREEN_CENTER_X-150,SCREEN_BOTTOM-10;zoom,0.5);
	Def.BitmapText{
		Font="Common large";
		Name="credit";
		Text="FREE PLAY";
		InitCommand=cmd(horizalign,left;vertalign,bottom;zoom,0.4);
	};
};

t[#t+1] = Def.ActorFrame {
	Def.Sprite{
		Name="scanlines";
		Texture=THEME:GetPathG("","crt.png");
		InitCommand=cmd(Center;diffusealpha,0.325;SetTextureFiltering,false;blend,"BlendMode_Subtract");
	};
	Def.Sprite{
		Name="black bars";
		Texture=THEME:GetPathG("","sidebars (doubleres).png");
		InitCommand=cmd(Center;zoom,0.668);
	};
};

return t;
