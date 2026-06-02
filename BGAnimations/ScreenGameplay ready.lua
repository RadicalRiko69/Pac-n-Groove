local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
    InitCommand=function(self)
          if ThemePrefs.Get("MsPacMode") == "On" then
            self:visible(false);
          else
            self:visible(true);
          end;
    end,
    OnCommand=function(self)
      self:xy(SCREEN_CENTER_X+120,SCREEN_BOTTOM-20):horizalign(right):zoom(0.18):sleep(4.25):diffusealpha(0);
    end;
    LoadActor(THEME:GetPathG("","pacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;animate,false;setstate,0);
    };	
    LoadActor(THEME:GetPathG("","pacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;addx,180;animate,false;setstate,0);
    };	
    LoadActor(THEME:GetPathG("","pacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;addx,-180;animate,false;setstate,0);
    };	
    LoadActor(THEME:GetPathG("","pacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;addx,-360;animate,false;setstate,0;sleep,2;diffusealpha,0);
    };	
};

t[#t+1] = Def.ActorFrame {
    InitCommand=function(self)
          if ThemePrefs.Get("MsPacMode") == "On" then
            self:visible(true);
          else
            self:visible(false);
          end;
    end,
    OnCommand=function(self)
      self:xy(SCREEN_CENTER_X+120,SCREEN_BOTTOM-20):horizalign(right):zoom(0.18):sleep(4.25):diffusealpha(0);
    end;
    LoadActor(THEME:GetPathG("","mspacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;animate,false;setstate,0);
    };	
    LoadActor(THEME:GetPathG("","mspacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;addx,180;animate,false;setstate,0);
    };	
    LoadActor(THEME:GetPathG("","mspacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;addx,-180;animate,false;setstate,0);
    };	
    LoadActor(THEME:GetPathG("","mspacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;addx,-360;animate,false;setstate,0;sleep,2;diffusealpha,0);
    };	
};

t[#t+1] = Def.ActorFrame {
    LoadActor(THEME:GetPathS("","pacman/start.wav"))..{
      OnCommand=function(self)
          if ThemePrefs.Get("MsPacMode") == "Off" then
            self:play();
          else
            self:stop();
          end;
      end,
    };
    LoadActor(THEME:GetPathS("","mspacman/start.wav"))..{
      OnCommand=function(self)
          if ThemePrefs.Get("MsPacMode") == "On" then
            self:play();
          else
            self:stop();
          end;
      end,
    };
    LoadActor(THEME:GetPathG("","mspacman/chr 4x1.png"))..{
      InitCommand=function(self)
          if ThemePrefs.Get("MsPacMode") == "On" then
            self:visible(true);
          else
            self:visible(false);
          end;
      end,
      OnCommand=cmd(Center;setstate,0;diffusealpha,0;sleep,2;diffusealpha,1;playcommand,"Play");
      PlayCommand=cmd(addy,140;zoom,3.25;animate,false;SetTextureFiltering,false;sleep,2.25;diffusealpha,0);
    };
    LoadActor(THEME:GetPathG("","pacman/chr 4x1.png"))..{
      InitCommand=function(self)
          if ThemePrefs.Get("MsPacMode") == "Off" then
            self:visible(true);
          else
            self:visible(false);
          end;
      end,
      OnCommand=cmd(Center;setstate,0;diffusealpha,0;sleep,2;diffusealpha,1;playcommand,"Play");
      PlayCommand=cmd(addy,140;zoom,3.25;animate,false;SetTextureFiltering,false;sleep,2.25;diffusealpha,0);
    };
    Def.BitmapText {
        Font="Common large";
        Text="READY!";
        OnCommand=cmd(Center;addy,110;zoom,0.5;diffusecolor,color("#ffff00");sleep,2;diffusealpha,0);
	  };	
};

return t