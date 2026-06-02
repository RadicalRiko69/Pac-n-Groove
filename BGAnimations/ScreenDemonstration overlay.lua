return Def.ActorFrame {
    Def.Quad {
		  InitCommand=cmd(zoomx,SCREEN_WIDTH*2;zoomy,80;Center;addy,230;diffuse,color("#000000"));
	  };
    Def.BitmapText {
        Font="Common large";
        OnCommand=cmd(maxwidth,1320;xy,SCREEN_CENTER_X,SCREEN_TOP+25;zoom,0.5);
        CurrentSongChangedMessageCommand=function(s)
					  s:finishtweening():settext("Demo Play");
        end;
	  };
    Def.BitmapText {
        Font="Common large";
        OnCommand=cmd(maxwidth,1320;xy,SCREEN_CENTER_X,SCREEN_CENTER_Y+212;diffusecolor,color("#FF0000");zoom,0.5);
        CurrentSongChangedMessageCommand=function(s)
					  s:finishtweening():settext("GAME OVER");
        end;
	  };
    --crt
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
