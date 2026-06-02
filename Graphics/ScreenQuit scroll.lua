local gc = Var("GameCommand");
return Def.ActorFrame {
	Def.BitmapText {
		Font="Common large";
		Text=THEME:GetString("ScreenQuit",gc:GetText());
		InitCommand=function(self) self:zoom(0.2):rotationz(90) end;
		GainFocusCommand=function(self) self:stoptweening():diffusecolor(color("#ff0000")) end;
		LoseFocusCommand=function(self) self:stoptweening():diffusecolor(Color("White")) end;
	};
};