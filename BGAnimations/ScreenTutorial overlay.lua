local t = Def.ActorFrame {}

--Pac-Man
t[#t+1] = Def.ActorFrame {
  InitCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "Off" then
          self:visible(true);
        else
          self:visible(false);
        end;
  end,
  OnCommand=cmd(sleep,6.5;diffusealpha,0);
    Def.Sprite {
      Texture=THEME:GetPathG("","pacman/how.png");
      InitCommand=cmd(Center;addx,-500;zoom,1.5;animate,true;SetAllStateDelays,0.3;SetTextureFiltering,false);
      OnCommand=cmd(linear,1;addx,500);
    };
    Def.Sprite {
      Texture=THEME:GetPathG("","pacman/to.png");
      InitCommand=cmd(Center;addy,500;zoom,1.5;animate,true;SetAllStateDelays,0.3;SetTextureFiltering,false);
      OnCommand=cmd(sleep,0.5;linear,1;addy,-500);
    };
    Def.Sprite {
      Texture=THEME:GetPathG("","pacman/play.png");
      InitCommand=cmd(Center;addx,500;zoom,1.5;animate,true;SetAllStateDelays,0.3;SetTextureFiltering,false);
      OnCommand=cmd(sleep,1.25;linear,1;addx,-500);
    };
};

--Ms. Pac-Man
t[#t+1] = Def.ActorFrame {
  InitCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:visible(true);
        else
          self:visible(false);
        end;
  end,
  OnCommand=cmd(sleep,6.5;diffusealpha,0);
    Def.Sprite {
      Texture=THEME:GetPathG("","mspacman/how.png");
      InitCommand=cmd(Center;addx,-500;zoom,1.5;animate,true;SetAllStateDelays,0.3;SetTextureFiltering,false);
      OnCommand=cmd(linear,1;addx,500);
    };
    Def.Sprite {
      Texture=THEME:GetPathG("","mspacman/to.png");
      InitCommand=cmd(Center;addy,500;zoom,1.5;animate,true;SetAllStateDelays,0.3;SetTextureFiltering,false);
      OnCommand=cmd(sleep,0.5;linear,1;addy,-500);
    };
    Def.Sprite {
      Texture=THEME:GetPathG("","mspacman/play.png");
      InitCommand=cmd(Center;addx,500;zoom,1.5;animate,true;SetAllStateDelays,0.3;SetTextureFiltering,false);
      OnCommand=cmd(sleep,1.25;linear,1;addx,-500);
    };
};

t[#t+1] = Def.ActorFrame {
    LoadActor(THEME:GetPathG("","tutorial"))..{
      OnCommand=cmd(hibernate,4);
    };
    LoadActor(THEME:GetPathG("","teaser"))..{
      InitCommand=cmd(addy,-60);
      OnCommand=cmd(hibernate,39);
    };
};

return t;
