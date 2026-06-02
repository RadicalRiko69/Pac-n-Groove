return Def.ActorFrame {    
  --Wheel highlight
    Def.Sprite {
      InitCommand=cmd(Center;zoom,1.5;SetTextureFiltering,false);
      OnCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:Load(THEME:GetPathG("","mspacman/music.png"));
        else
          self:Load(THEME:GetPathG("","pacman/music.png"));
        end;
      end,
    },
    Def.BitmapText {
        Font="Common large";
        Text="Quit game?";
        InitCommand=function(s)
            ResetGame();
            SOUND:StopMusic();
        end;
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-50;diffusecolor,color("#ffffff");shadowlength,2;zoom,0.4;SetTextureFiltering,false);
	  };
    Def.BitmapText {
        Font="Common normal";
        Text="/";
        OnCommand=cmd(Center;zoom,0.64;shadowlength,1.25);
	  };
};
