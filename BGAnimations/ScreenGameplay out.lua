return Def.ActorFrame {
    LoadActor(THEME:GetPathS("","pacman/intermission"))..{
      OnCommand=cmd(queuecommand,"Play");
      PlayCommand=function(self)
          if ThemePrefs.Get("MsPacMode") == "Off" then
            self:play();
          else
            self:stop();
          end;
      end,
    };
    LoadActor(THEME:GetPathS("","mspacman/intermission"))..{
      OnCommand=cmd(queuecommand,"Play");
      PlayCommand=function(self)
          if ThemePrefs.Get("MsPacMode") == "On" then
            self:play();
          else
            self:stop();
          end;
      end,
    };
    Def.Quad {
		  InitCommand=cmd(zoomx,8500;zoomy,8500;diffuse,color("#000000"));
	  };
    Def.BitmapText {
        Font="Common large";
        Text="You did it!";
        OnCommand=cmd(Center;diffusealpha,0;zoom,0.45;diffusecolor,color("#ff0000");sleep,6;diffusealpha,1;sleep,2);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="Try next stage!";
        OnCommand=cmd(Center;addy,80;diffusealpha,0;zoom,0.2;sleep,6;diffusealpha,1;sleep,2);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="No Lives Lost!\nAmazing Job!!!";
        OnCommand=cmd(Center;addy,-80;diffusealpha,0;diffusecolor,color("#ffff00");zoom,0.35;sleep,6;queuecommand,"Check");
        CheckCommand=function(s)
          local life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife();
            if life == 1 then
              s:diffusealpha(1);
            else
              s:diffusealpha(0);
            end;
        end,
	  };
    LoadActor(THEME:GetPathS("","_extend.wav"))..{
      OnCommand=cmd(sleep,6;queuecommand,"Play");
      PlayCommand=function(s)
          local life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife();
            if life == 1 then
              s:play();
            else
              s:stop();
            end;
        end,
    };
    Def.Sprite{
      Name= "chr",
      Frames= {
        {Frame= 0, Delay= 0.05},
        {Frame= 1, Delay= 0.05},
        {Frame= 2, Delay= 0.05},
        {Frame= 1, Delay= 0.05},
      },
        InitCommand=function(self)
          if ThemePrefs.Get("MsPacMode") == "On" then
            self:Load(THEME:GetPathG("","mspacman/chr 4x1.png"));
          else
            self:Load(THEME:GetPathG("","pacman/chr 4x1.png"));
          end;
        end,
        OnCommand= cmd(Center;SetTextureFiltering,false;zoom,4;rotationy,180;addx,-306;queuecommand,"Run"),
        RunCommand=cmd(sleep,0.34;linear,4.5;addx,590),
    };
    Def.Sprite{
      Name= "ghost",
      Frames= {
        {Frame= 0, Delay= 0.05},
        {Frame= 1, Delay= 0.05},
      },
        OnCommand= cmd(Center;SetTextureFiltering,false;zoom,2;addx,-250;addy,20;queuecommand,"Run"),
        RunCommand=cmd(linear,4.85;addx,580),
        Texture=THEME:GetPathG("","food 2x1.png"),
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
