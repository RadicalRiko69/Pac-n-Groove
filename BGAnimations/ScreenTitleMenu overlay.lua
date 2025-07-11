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
      end
    end;
  --Blinky
    LoadActor(THEME:GetPathG("","gangster.png"))..{
      OnCommand=cmd(Center;addx,-100;addy,-40;SetTextureFiltering,false);
    };
    --ITG
    LoadActor(THEME:GetPathG("","funky.png"))..{
      InitCommand=cmd(visible,IsGame("dance"));
      OnCommand=cmd(Center;zoom,1.3;SetTextureFiltering,false);
    };
    --PIU
    LoadActor(THEME:GetPathG("","breakdance.png"))..{
      InitCommand=cmd(visible,IsGame("pump"));
      OnCommand=cmd(Center;zoom,1.3;SetTextureFiltering,false);
    };
    LoadActor(THEME:GetPathG("","groove.png"))..{
      OnCommand=cmd(Center;addy,-190;zoom,0.75;SetTextureFiltering,false);
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
        Text="Frequency Style Arcade";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-40;diffusecolor,color("#ff1500");zoom,0.24;SetTextureFiltering,false);
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
