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
    Def.BitmapText {
        Font="Common large";
        Text="Join our\nDiscord!";
        InitCommand=function(s)
            ResetGame();
        end;
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+40;diffusecolor,color("#ffffff");shadowlength,2;zoom,0.4;SetTextureFiltering,false);
	  };
    Def.BitmapText {
        Font="Common normal";
        Text="The creators behind:\n\nSushi Violation\n&\nDoki Doki Revolution";
        OnCommand=cmd(Center;zoom,0.64;addy,60;shadowlength,1.25);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="Not only will you be able to\ncheck out new upcoming projects...\nyou also get Sushi emotes!!!\n\n(Sushi is our cat, to be clear.)";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-94;diffusecolor,color("#ffff00");zoom,0.14;shadowlength,1;SetTextureFiltering,false);
	  };
    Def.BitmapText {
        Font="_lowercase 60px";
        Text="discord.gg/Sa7XMWp";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-40;zoom,0.5;shadowlength,1.5;diffusecolor,color("#ff0000");SetTextureFiltering,false);
	  };
    --sushiverse
    LoadActor(THEME:GetPathG("","sushi.png"))..{
      OnCommand=cmd(Center;zoom,0.4;addy,-75;shadowlength,2;SetTextureFiltering,false);
    };
    --crt
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
    --sfx
    LoadActor(THEME:GetPathS("","pacman/fruit.wav"))..{
      OnCommand=cmd(play);
    };
    CodeMessageCommand=function(self, params)
      if params.Name == "LeaveScreen" then
        SCREENMAN:SetNewScreen("ScreenWarning");
      elseif params.Name == "Reject" then
        SCREENMAN:SetNewScreen("ScreenWarning");
      end
    end;
};
