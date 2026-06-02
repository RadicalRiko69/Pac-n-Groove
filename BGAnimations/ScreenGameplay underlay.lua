local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  OnCommand=cmd(Center;diffusealpha,1;sleep,4.25;queuecommand,"Go");
  GoCommand=cmd(diffusealpha,0.25);
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
    --Player Character
    Def.Sprite {
      InitCommand=cmd(addy,140;zoom,3.25;SetTextureFiltering,false;diffusealpha,0;sleep,4.25;diffusealpha,1);
      OnCommand=cmd(SetAllStateDelays,0.125;animate,true;playcommand,"Character");
      CharacterCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:Load(THEME:GetPathG("","mspacman/chr 4x1.png"));
        else
          self:Load(THEME:GetPathG("","pacman/chr 4x1.png"));
        end;
      end,
    },
    --Blinky
    LoadActor(THEME:GetPathG("","blinky 20x1.png"))..{
      OnCommand=cmd(addy,-120;zoom,3.25;SetTextureFiltering,false;queuecommand,"Wait");
      WaitCommand=cmd(animate,false;sleep,4.25;queuecommand,"Set");
      SetCommand=function(self)
              self:SetAllStateDelays(0.125):animate(true);
      end;
    };
    --Inky
    LoadActor(THEME:GetPathG("","inky 17x1.png"))..{
      OnCommand=cmd(addx,-80;zoom,3.25;SetTextureFiltering,false;queuecommand,"Wait");
      WaitCommand=cmd(animate,false;sleep,4.25;queuecommand,"Start");
      StartCommand=cmd(linear,0.3;addy,-20;queuecommand,"Move");
      MoveCommand=function(self)
              self:SetAllStateDelays(0.14):animate(true);
              self:linear(0.3):addy(40):linear(0.3):addy(-40):queuecommand("Move");
      end;
    };
    --Pinky
    LoadActor(THEME:GetPathG("","pinky 17x1.png"))..{
      OnCommand=cmd(zoom,3.25;SetTextureFiltering,false;setstate,3;queuecommand,"Wait");
      WaitCommand=cmd(animate,false;sleep,4.25;queuecommand,"Start");
      StartCommand=cmd(linear,0.3;addy,20;queuecommand,"Move");
      MoveCommand=function(self)
              self:SetAllStateDelays(0.145):animate(true);
              self:linear(0.3):addy(-40):linear(0.3):addy(40):queuecommand("Move");
      end;
    };
    --Clyde
    LoadActor(THEME:GetPathG("","clyde 17x1.png"))..{
      OnCommand=cmd(addx,80;zoom,3.25;SetTextureFiltering,false;queuecommand,"Wait");
      WaitCommand=cmd(animate,false;sleep,4.25;queuecommand,"Start");
      StartCommand=cmd(linear,0.3;addy,-20;queuecommand,"Move");
      MoveCommand=function(self)
              self:SetAllStateDelays(0.14):animate(true);
              self:linear(0.3):addy(40):linear(0.3):addy(-40):queuecommand("Move");
      end;
    };
};

return t