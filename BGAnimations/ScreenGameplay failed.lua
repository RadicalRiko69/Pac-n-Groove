local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  OnCommand=cmd(Center;zoom,0.8);
    LoadActor(THEME:GetPathS("","pacman/death.wav"))..{
      OnCommand=cmd(sleep,0.5;queuecommand,"Play");
      PlayCommand=cmd(play);
    };
    Def.Quad {
		  InitCommand=cmd(zoomx,SCREEN_WIDTH*2;zoomy,SCREEN_HEIGHT+10;;addy,80;diffuse,color("#000000"));
	  };
    LoadActor(THEME:GetPathG("","house.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,5;addy,0;draworder,99);
    };	
    Def.BitmapText {
        Font="Common large";
        Text="GAME OVER";
        OnCommand=cmd(diffusealpha,0;zoom,0.4;diffusecolor,color("#ff0000");sleep,3;diffusealpha,1;sleep,2);
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
        {Frame= 10, Delay= 0.500},
        {Frame= 11, Delay= 999},
      },
        OnCommand= cmd(SetTextureFiltering,false;addy,140;zoom,5),
        Texture=THEME:GetPathG("","death 12x1.png"),
      },
};

return t