return Def.ActorFrame {
    Def.BitmapText {
        Font="Common large";
        Text="WARNING!";
        InitCommand=function(s)
            ResetGame();
        end;
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+40;diffusecolor,color("#ff1500");zoom,0.4;SetTextureFiltering,false);
	  };
    Def.BitmapText {
        Font="Common normal";
        Text="This project is\nnot for sale or for\ncommercial arcade usage.\nThis is purely a\nfan project dedicated to\nPac-Man lovers and\nrhythm gamers alike.\n\nI made this project to\nalways be free for everyone\nwho uses it.\n\nIf you or anyone has\npaid for this theme,\nyou have been scammed!";
        OnCommand=cmd(Center;zoom,0.64;addy,-20);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="This project is not official\nnor affiliated with\nBandai Namco Entertainment Inc.";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-84;diffusecolor,color("#ffff00");zoom,0.14;SetTextureFiltering,false);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="Please support\nofficial releases!";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-40;diffusecolor,color("#00ffff");zoom,0.24;SetTextureFiltering,false);
	  };
    Def.Sprite{
      Name="scanlines";
      Texture=THEME:GetPathG("","crt.png");
      InitCommand=cmd(Center;diffusealpha,0;SetTextureFiltering,false);
      OnCommand=function(s)
        if ThemePrefs.Get("Scanlines") == true then
          s:finishtweening():diffusealpha(0.45);
        else
          s:finishtweening():diffusealpha(0);
        end;
      end;
    };
};
