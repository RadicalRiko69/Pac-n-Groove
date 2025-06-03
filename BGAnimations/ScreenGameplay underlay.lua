local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  OnCommand=cmd(Center;zoom,0.8;diffusealpha,1;sleep,4.25;queuecommand,"Go");
  GoCommand=cmd(diffusealpha,0.25);
    LoadActor(THEME:GetPathG("","house.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,5;addy,0;draworder,99);
    };	
    --Pac
    LoadActor(THEME:GetPathG("","pac 4x1.png"))..{
      InitCommand=cmd(diffusealpha,0;sleep,2.45;diffusealpha,1);
      OnCommand=cmd(addy,140;zoom,2.12;rotationz,180;SetTextureFiltering,false);
      CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
      SetCommand=function(self)
              self:SetAllStateDelays(0.125);
      end;
      OffCommand=cmd(linear,1;addx,-130);
    };
    --Blinky
    LoadActor(THEME:GetPathG("","ghost 2x1.png"))..{
      OnCommand=cmd(addy,-120;zoom,4;SetTextureFiltering,false;queuecommand,"Wait");
      WaitCommand=cmd(animate,false;sleep,4.25;queuecommand,"Set");
      SetCommand=function(self)
              self:SetAllStateDelays(0.125):animate(true);
      end;
      OffCommand=cmd(linear,1;addx,-130);
    };
    --Inky
    LoadActor(THEME:GetPathG("","inky 4x1.png"))..{
      OnCommand=cmd(addx,-80;addy,-20;zoom,4;SetTextureFiltering,false;queuecommand,"Wait");
      WaitCommand=cmd(animate,false;sleep,4.25;queuecommand,"Move");
      MoveCommand=function(self)
              self:SetAllStateDelays(0.125):animate(true);
              self:linear(0.3):addy(40):linear(0.3):addy(-40):queuecommand("Move");
      end;
      OffCommand=cmd(linear,1;addx,-130);
    };
    --Pinky
    LoadActor(THEME:GetPathG("","pinky 4x1.png"))..{
      OnCommand=cmd(addy,25;zoom,4;SetTextureFiltering,false;queuecommand,"Wait");
      WaitCommand=cmd(animate,false;sleep,4.25;queuecommand,"Move");
      MoveCommand=function(self)
              self:SetAllStateDelays(0.125):animate(true);
              self:linear(0.3):addy(-60):linear(0.3):addy(60):queuecommand("Move");
      end;
      OffCommand=cmd(linear,1;addx,-130);
    };
    --Clyde
    LoadActor(THEME:GetPathG("","clyde 4x1.png"))..{
      OnCommand=cmd(addx,80;addy,-20;zoom,4;SetTextureFiltering,false;queuecommand,"Wait");
      WaitCommand=cmd(animate,false;sleep,4.25;queuecommand,"Move");
      MoveCommand=function(self)
              self:SetAllStateDelays(0.125):animate(true);
              self:linear(0.3):addy(40):linear(0.3):addy(-40):queuecommand("Move");
      end;
      OffCommand=cmd(linear,1;addx,-130);
    };
};

return t