local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  OnCommand=cmd(Center;zoom,0.8);
    LoadActor(THEME:GetPathS("","mspacman/death.wav"))..{
      OnCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:sleep(1):queuecommand("Play");
        else
          self:stop();
        end;
      end,
      PlayCommand=cmd(play);
    };
    LoadActor(THEME:GetPathS("","pacman/death.wav"))..{
      OnCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "Off" then
          self:sleep(0.5):queuecommand("Play");
        else
          self:stop();
        end;
      end,
      PlayCommand=cmd(play);
    };
    Def.Quad {
		  InitCommand=cmd(zoomx,SCREEN_WIDTH*2;zoomy,SCREEN_HEIGHT+10;;addy,80;diffuse,color("#000000"));
	  };	
    --Player Maze
    Def.Sprite {
      OnCommand=cmd(SetTextureFiltering,false;zoom,5;addy,0;draworder,99);
      InitCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:Load(THEME:GetPathG("","mspacman/house.png"));
        else
          self:Load(THEME:GetPathG("","pacman/house.png"));
        end;
      end,
    },
    Def.BitmapText {
        Font="Common large";
        Text="GAME OVER";
        OnCommand=cmd(diffusealpha,0;zoom,0.4;diffusecolor,color("#ff0000");sleep,3;diffusealpha,1;sleep,2);
	  };
    LoadActor(THEME:GetPathG("","mspacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;addy,174;zoom,4;animate,false;setstate,3;sleep,1;queuecommand,"Die");
      DieCommand=function(self)
        self:addrotationz(90):sleep(0.125)
        :addrotationz(90):sleep(0.125)
        :addrotationz(90):sleep(0.125)
        :addrotationz(90):sleep(0.125)
        :addrotationz(90):sleep(0.125)
        :addrotationz(90):sleep(0.125)
        :addrotationz(90):sleep(0.125)
        :addrotationz(90):sleep(0.125)
        :addrotationz(90):setstate(2):sleep(0.125)
        :sleep(0.85):diffusealpha(0);
      end;
        InitCommand=function(self)
              if ThemePrefs.Get("MsPacMode") == "On" then
                self:visible(true);
              else
                self:visible(false);
              end;
        end,
    };
    Def.Sprite{
      Name= "pacdeath",
      Frames= {
        {Frame= 0, Delay= 0.500},
        {Frame= 1, Delay= 0.125},
        {Frame= 2, Delay= 0.125},
        {Frame= 3, Delay= 0.125},
        {Frame= 4, Delay= 0.125},
        {Frame= 5, Delay= 0.125},
        {Frame= 6, Delay= 0.125},
        {Frame= 7, Delay= 0.125},
        {Frame= 8, Delay= 0.125},
        {Frame= 9, Delay= 0.125},
        {Frame= 10, Delay= 0.125},
        {Frame= 11, Delay= 0.125},
        {Frame= 12, Delay= 0.125},
        {Frame= 13, Delay= 0.125},
        {Frame= 14, Delay= 999},
      },
        OnCommand= cmd(SetTextureFiltering,false;addy,176;zoom,4),
        Texture=THEME:GetPathG("","pacman/death 15x1.png"),
        InitCommand=function(self)
              if ThemePrefs.Get("MsPacMode") == "Off" then
                self:visible(true);
              else
                self:visible(false);
              end;
        end,
      },
};
t[#t+1] = Def.ActorFrame {
    LoadActor("record")..{
      OnCommand=cmd(diffusealpha,0;sleep,3;diffusealpha,1);
    };
};
return t