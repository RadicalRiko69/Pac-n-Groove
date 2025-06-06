return Def.ActorFrame {
  --PIU
    LoadActor(THEME:GetPathG("","breakdance.png"))..{
      InitCommand=cmd(visible,IsGame("pump"));
      OnCommand=cmd(Center;addx,400;zoom,1.3;SetTextureFiltering,false;queuecommand,"Move");
      MoveCommand=cmd(linear,1.25;addx,-400);
    };
    --ITG
    LoadActor(THEME:GetPathG("","funky.png"))..{
      InitCommand=cmd(visible,IsGame("dance"));
      OnCommand=cmd(Center;addx,400;zoom,1.3;SetTextureFiltering,false;queuecommand,"Move");
      MoveCommand=cmd(linear,1.25;addx,-400);
    };
    LoadActor(THEME:GetPathG("","gangster.png"))..{
      OnCommand=cmd(Center;addx,-400;addy,-40;SetTextureFiltering,false;zoom,1;queuecommand,"Move");
      MoveCommand=cmd(linear,1.25;addx,300);
    };
    LoadActor(THEME:GetPathG("","groove.png"))..{
      OnCommand=cmd(Center;addy,-300;SetTextureFiltering,false;zoom,0.75;queuecommand,"Move");
      MoveCommand=cmd(linear,1.25;addy,110);
    };
    Def.BitmapText {
        Font="Common large";
        Text="A beloved Pac-Man fan creation by";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-54;diffusecolor,color("#ffff00");diffusealpha,0;zoom,0.14;SetTextureFiltering,false;queuecommand,"Move");
        MoveCommand=cmd(sleep,1.25;diffusealpha,1);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="Frequency Style Arcade";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-40;diffusecolor,color("#ff1500");diffusealpha,0;zoom,0.24;SetTextureFiltering,false;queuecommand,"Move");
        MoveCommand=cmd(sleep,1.25;diffusealpha,1);
	  };
    Def.BitmapText {
        Font="Common normal";
        Text="Press Start to begin!\n(1 Player Game Only)";
        OnCommand=cmd(Center;diffusealpha,0;zoom,0.64;addy,160;sleep,1.25;diffusealpha,1;queuecommand,"Blink");
        BlinkCommand=cmd(sleep,0.5;diffusealpha,0;sleep,0.5;diffusealpha,1;queuecommand,"Blink");
	  };
};
