local gc = Var("GameCommand");
return Def.ActorFrame {
	OnCommand=function(self) self:diffusealpha(1) end;
	OffCommand=function(self) self:diffusealpha(0) end;
	Def.BitmapText {
		Font="Common large";
		Text=THEME:GetString("ScreenTitleMenu",gc:GetText());
		InitCommand=function(self) self:zoom(0.2):rotationz(90) end;
		GainFocusCommand=function(self) self:stoptweening():diffusecolor(color("#ffffff")) end;
		LoseFocusCommand=function(self) self:stoptweening():diffusecolor(Color("White")) end;
	};
};