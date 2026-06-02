local gc = Var("GameCommand");

local t = Def.ActorFrame {};
t[#t+1] = Def.ActorFrame {
    Def.BitmapText {
        Font="Common large";
        Text=THEME:GetString("ScreenQuit", gc:GetName().."Exp");
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+50;diffusecolor,color("#ffff00");zoom,0.14;shadowlength,1;SetTextureFiltering,false);
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	  };
};
return t