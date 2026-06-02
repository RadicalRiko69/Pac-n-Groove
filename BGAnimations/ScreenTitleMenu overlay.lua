local function inputs(event)
	--Check if player clicked screen, then skip to next screen if they did.
	local button = ToEnumShortString(event.DeviceInput.button)
	if button == "left mouse button" then
		--SCREENMAN:GetTopScreen():StartTransitioningScreen("SM_GoToNextScreen");
	end
end;

return Def.ActorFrame {
    OnCommand=function(self)
      SCREENMAN:GetTopScreen():AddInputCallback(inputs);
    end;
    CodeMessageCommand=function(self, params)
      if params.Name == "Trigger" then
        SCREENMAN:SetNewScreen("ScreenVisitDevs");
      elseif params.Name == "MsPacMode" then
        ThemePrefs.Set("MsPacMode","On");
        SCREENMAN:SetNewScreen("ScreenCompany");
      elseif params.Name == "Revert" then
        ThemePrefs.Set("MsPacMode","Off");
        SCREENMAN:SetNewScreen("ScreenCompany");
      end
    end;
    --Blinky
    LoadActor(THEME:GetPathG("","gangster.png"))..{
      OnCommand=cmd(SetTextureFiltering,false;zoom,1);
      InitCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:x(SCREEN_CENTER_X+100):y(SCREEN_CENTER_Y-10);
        else
          self:x(SCREEN_CENTER_X-100):y(SCREEN_CENTER_Y-40);
        end;
      end,
    },
    --Dancer
    Def.Sprite {
      InitCommand=cmd(Center;zoom,1.3;SetTextureFiltering,false);
      OnCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:Load(THEME:GetPathG("","mspacman/title.png"));
        else
          self:Load(THEME:GetPathG("","pacman/title.png"));
        end;
      end,
    };
    --Logo
    Def.Sprite {
      InitCommand=cmd(Center;addy,-190;zoom,0.75;SetTextureFiltering,false);
      OnCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:Load(THEME:GetPathG("","mspacman/logo.png"));
        else
          self:Load(THEME:GetPathG("","pacman/logo.png"));
        end;
      end,
    };
    Def.BitmapText {
        Font="Common normal";
        Text="Please press\nthe Start button";
        OnCommand=cmd(Center;zoom,0.64;addy,160);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="A beloved Pac-Man fan creation by";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-54;diffusecolor,color("#ffff00");zoom,0.14;SetTextureFiltering,false);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="Sushiverse Entertainment";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-40;diffusecolor,color("#00ff62ff");zoom,0.24;SetTextureFiltering,false);
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
