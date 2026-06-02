local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
    InitCommand=cmd(addy,500);
    OnCommand=cmd(linear,2;y,60;sleep,2;diffusealpha,0);
    --sushiverse
    LoadActor(THEME:GetPathG("","shi.png"))..{
      OnCommand=cmd(Center;zoom,0.6;addy,-75;shadowlength,2;SetTextureFiltering,false);
    };
    Def.BitmapText {
        Font="Common large";
        Text="SUSHIVERSE";
        InitCommand=function(s)
            ResetGame();
        end;
        OnCommand=cmd(x,SCREEN_CENTER_X-52;y,SCREEN_CENTER_Y-72;diffusecolor,color("#8400ff");horizalign,left;shadowlength,2;shadowcolor,Color("White");zoomx,0.36;zoomy,0.46;SetTextureFiltering,false);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="Entertainment";
        InitCommand=function(s)
            ResetGame();
        end;
        OnCommand=cmd(x,SCREEN_CENTER_X-52;y,SCREEN_CENTER_Y-50;diffusecolor,color("#00ff00");skewx,-0.2;horizalign,left;shadowlength,0.75;shadowcolor,Color("White");zoom,0.2;SetTextureFiltering,false);
	  };
};

t[#t+1] = Def.ActorFrame {
  Def.BitmapText {
        Font="Common large";
        Text="presents";
        OnCommand=cmd(Center;zoom,0.35;diffusealpha,0;diffusecolor,color("#00ffff");sleep,4;diffusealpha,1);
	  };	
};

return t