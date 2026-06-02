return Def.ActorFrame {
    --Characters
    LoadActor(THEME:GetPathG("","teaser"))..{
    },
    --Logo
    Def.Sprite {
      InitCommand=cmd(Center;addy,-300;SetTextureFiltering,false;zoom,0.75;queuecommand,"Move");
      MoveCommand=cmd(linear,1.25;addy,110);
      OnCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:Load(THEME:GetPathG("","mspacman/logo.png"));
        else
          self:Load(THEME:GetPathG("","pacman/logo.png"));
        end;
      end,
    },
    --hack
    Def.Quad {
        OnCommand=cmd(Center;diffusecolor,color("#000000");diffusealpha,1;zoom,600;sleep,0.1;diffusealpha,0);
	  };
    --Credits
    Def.BitmapText {
        Font="Common large";
        Text="A beloved Pac-Man fan creation by";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-54;diffusecolor,color("#ffff00");diffusealpha,0;zoom,0.14;SetTextureFiltering,false;queuecommand,"Move");
        MoveCommand=cmd(sleep,1.25;diffusealpha,1);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="Sushiverse Entertainment";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-40;diffusecolor,color("#00ff62ff");diffusealpha,0;zoom,0.24;SetTextureFiltering,false;queuecommand,"Move");
        MoveCommand=cmd(sleep,1.25;diffusealpha,1);
	  };
    --Join Text
    Def.BitmapText {
        Font="Common normal";
        Text="Press Start to begin!\n(1 Player Game Only)";
        OnCommand=cmd(Center;diffusealpha,0;zoom,0.64;addy,160;sleep,1.25;diffusealpha,1;queuecommand,"Blink");
        BlinkCommand=cmd(sleep,0.5;diffusealpha,0;sleep,0.5;diffusealpha,1;queuecommand,"Blink");
	  };
};
