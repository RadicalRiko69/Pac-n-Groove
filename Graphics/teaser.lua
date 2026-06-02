return Def.ActorFrame {
    --Ghost
    LoadActor(THEME:GetPathG("","gangster.png"))..{
      OnCommand=cmd(diffusealpha,0;SetTextureFiltering,false;zoom,1;queuecommand,"Ready");
      ReadyCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:diffusealpha(1):x(SCREEN_CENTER_X+400):y(SCREEN_CENTER_Y-10):queuecommand("Position");
        else
          self:diffusealpha(1):x(SCREEN_CENTER_X-400):y(SCREEN_CENTER_Y-40):queuecommand("Position");
        end;
      end,
      PositionCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:linear(1.25):x(SCREEN_CENTER_X+100);
        else
          self:linear(1.25):x(SCREEN_CENTER_X-100);
        end;
      end,
    },
    --Dancer
    Def.Sprite {
      InitCommand=cmd(y,SCREEN_CENTER_Y;zoom,1.3;SetTextureFiltering,false;queuecommand,"Ready");
      ReadyCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:diffusealpha(1):x(SCREEN_CENTER_X-400):queuecommand("Position");
        else
          self:diffusealpha(1):x(SCREEN_CENTER_X+400):queuecommand("Position");
        end;
      end,
      PositionCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:linear(1.25):x(SCREEN_CENTER_X);
        else
          self:linear(1.25):x(SCREEN_CENTER_X);
        end;
      end,
      OnCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:Load(THEME:GetPathG("","mspacman/title.png"));
        else
          self:Load(THEME:GetPathG("","pacman/title.png"));
        end;
      end,
    },
};
