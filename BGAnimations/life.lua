local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
    LoadActor(THEME:GetPathG("","pac 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,5;animate,false;setstate,3);
      LifeChangedMessageCommand = function(self, params)
            local life = params.LifeMeter:GetLivesLeft();
            if life == 2 then
            self:diffusealpha(0);
            end;
        end,
    };	
    LoadActor(THEME:GetPathG("","pac 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,5;addx,180;animate,false;setstate,3);
      LifeChangedMessageCommand = function(self, params)
            local life = params.LifeMeter:GetLivesLeft();
            if life == 3 then
            self:diffusealpha(0);
            end;
        end,
    };	
    LoadActor(THEME:GetPathG("","pac 4x1.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,5;addx,-180;animate,false;setstate,3);
      LifeChangedMessageCommand = function(self, params)
            local life = params.LifeMeter:GetLivesLeft();
            if life == 1 then
            self:diffusealpha(0);
            end;
        end,
    };	
    LoadActor(THEME:GetPathG("","pac 4x1.png"))..{
      OnCommand=cmd(zoom,0);
      LifeChangedMessageCommand = function(self, params)
            local life = params.LifeMeter:GetLivesLeft();
            if life == 0 then
            SCREENMAN:SetNewScreen("NiceTry");
            end;
        end,
    };
};

return t