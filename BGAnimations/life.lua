local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
    InitCommand=function(self)
          if ThemePrefs.Get("MsPacMode") == "On" then
            self:visible(true);
          else
            self:visible(false);
          end;
    end,
    LoadActor(THEME:GetPathG("","mspacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;animate,false;setstate,0);
      LifeChangedMessageCommand = function(self, params)
            local life = params.LifeMeter:GetLivesLeft();
            if life == 2 then
            self:diffusealpha(0);
            end;
      end,
    };	
    LoadActor(THEME:GetPathG("","mspacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;addx,180;animate,false;setstate,0);
      LifeChangedMessageCommand = function(self, params)
            local life = params.LifeMeter:GetLivesLeft();
            if life == 1 then
            self:diffusealpha(0);
            end;
      end,
    };	
    LoadActor(THEME:GetPathG("","mspacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;addx,-180;animate,false;setstate,0);
      LifeChangedMessageCommand = function(self, params)
            local life = params.LifeMeter:GetLivesLeft();
            if life == 3 then
            self:diffusealpha(0);
            end;
      end,
    };	
};

t[#t+1] = Def.ActorFrame {
    InitCommand=function(self)
          if ThemePrefs.Get("MsPacMode") == "Off" then
            self:visible(true);
          else
            self:visible(false);
          end;
    end,
    LoadActor(THEME:GetPathG("","pacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;animate,false;setstate,0);
      LifeChangedMessageCommand = function(self, params)
            local life = params.LifeMeter:GetLivesLeft();
            if life == 2 then
            self:diffusealpha(0);
            end;
      end,
    };	
    LoadActor(THEME:GetPathG("","pacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;addx,180;animate,false;setstate,0);
      LifeChangedMessageCommand = function(self, params)
            local life = params.LifeMeter:GetLivesLeft();
            if life == 1 then
            self:diffusealpha(0);
            end;
      end,
    };	
    LoadActor(THEME:GetPathG("","pacman/chr 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,8;addx,-180;animate,false;setstate,0);
      LifeChangedMessageCommand = function(self, params)
            local life = params.LifeMeter:GetLivesLeft();
            if life == 3 then
            self:diffusealpha(0);
            end;
      end,
    };	
};

t[#t+1] = Def.ActorFrame {
    Def.Quad {
      InitCommand=cmd(zoom,0);
      LifeChangedMessageCommand = function(self, params)
            local life = params.LifeMeter:GetLivesLeft();
            if life == 0 then
            SCREENMAN:SetNewScreen("NiceTry");
            end;
        end,
    };
};

return t