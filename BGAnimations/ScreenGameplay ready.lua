return Def.ActorFrame {
    LoadActor(THEME:GetPathS("","pacman/start.wav"))..{
      OnCommand=cmd(queuecommand,"Play");
      PlayCommand=cmd(play);
    };
    Def.BitmapText {
        Font="Common large";
        Text="READY!";
        OnCommand=cmd(Center;addy,110;zoom,0.5;diffusecolor,color("#ffff00");sleep,2;diffusealpha,0);
	  };	
    --Pac
    LoadActor(THEME:GetPathG("","pac 4x1.png"))..{
      InitCommand=cmd(Center;diffusealpha,0;sleep,2;diffusealpha,1);
      OnCommand=cmd(addy,112;zoom,1.7;rotationz,180;animate,false;SetTextureFiltering,false;sleep,2.25;diffusealpha,0);
      SetCommand=function(self)
              self:setstate(0);
      end;
      OffCommand=cmd(linear,1;addx,-130);
    };
};
