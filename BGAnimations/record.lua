
--This tracks how many stages a player survived (only cleared stages counted).
local t = Def.ActorFrame {}

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(xy,SCREEN_CENTER_X,SCREEN_BOTTOM-10;zoom,0.5);
	Def.BitmapText{
		Font="Common large";
		Name="credit";
		Text="STAGES SURVIVED: "..STATSMAN:GetStagesPlayed();
		InitCommand=cmd(draworder,99999;vertalign,bottom;zoom,0.4);
	};
};

return t;
