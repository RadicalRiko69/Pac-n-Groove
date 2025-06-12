return Def.ActorFrame {
    LoadActor(THEME:GetPathS("","pacman/intermission.wav"))..{
      OnCommand=cmd(queuecommand,"Play");
      PlayCommand=cmd(play);
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
    LoadActor(THEME:GetPathS("","pacman/extend.wav"))..{
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
      Name= "pacman",
      Frames= {
        {Frame= 0, Delay= 0.05},
        {Frame= 1, Delay= 0.05},
        {Frame= 2, Delay= 0.05},
        {Frame= 1, Delay= 0.05},
      },
        OnCommand= cmd(Center;SetTextureFiltering,false;zoom,2.5;addx,-300;queuecommand,"Run"),
        RunCommand=cmd(sleep,0.34;linear,4.5;addx,590),
        Texture=THEME:GetPathG("","pac 4x1.png"),
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
