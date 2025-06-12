return Def.ActorFrame {
  LoadActor("life")..{
      OnCommand=function(self)
          self:xy(SCREEN_CENTER_X+120,SCREEN_BOTTOM-20):diffusealpha(0):horizalign(right):zoom(0.18):sleep(4.25):diffusealpha(1);
      end;
  };
    LoadFont("Common large")..{
      InitCommand=function(self)
          self:xy(SCREEN_CENTER_X-80,SCREEN_TOP+38):horizalign(right):zoom(0.152);
      end;
      OnCommand=cmd(playcommand,"Change");
      JudgmentMessageCommand=cmd(playcommand,"Change");
      ChangeCommand=function(self)
        self:stoptweening()
        local PSS = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1);
        local total = PSS:GetCurrentPossibleDancePoints();
        local current = PSS:GetActualDancePoints();
        local extra = string.format( "%.1f", current/100 );
          if current >= 0.1 then
            self:settext("high score\n"..current);
          else
            self:settext("high score\n00");
          end
      end;
  };
  LoadFont("Common large")..{
      InitCommand=function(self)
          self:xy(SCREEN_CENTER_X+80,SCREEN_TOP+38):horizalign(left):zoom(0.152);
      end;
      OnCommand=cmd(playcommand,"Change");
      JudgmentMessageCommand=cmd(playcommand,"Change");
      ChangeCommand=function(self)
        self:settext("max combo\n"..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):MaxCombo());
      end;
  };
    Def.BitmapText {
        Font="Common large";
        InitCommand=cmd(maxwidth,1320;xy,SCREEN_CENTER_X,SCREEN_TOP+10;zoom,0.26);
        OnCommand=function(s)
          local sub = GAMESTATE:GetCurrentSong():GetTranslitSubTitle();
          if sub == "" then
            s:addy(5)
          else
            s:addy(0)
          end;
        end;
        CurrentSongChangedMessageCommand=function(s)
        local song = GAMESTATE:GetCurrentSong();
          if song then
              s:finishtweening():settext(song:GetTranslitMainTitle());
          end;
        end;
	  };
    Def.BitmapText {
        Font="Common large";
        OnCommand=cmd(maxwidth,2400;xy,SCREEN_CENTER_X,SCREEN_TOP+19;zoom,0.14;vertalign,top);
        CurrentSongChangedMessageCommand=function(s)
        local song = GAMESTATE:GetCurrentSong();
          if song then
					  s:finishtweening():settext(song:GetTranslitSubTitle());
				  else
					  s:finishtweening():settext("");
				  end;
        end;
	  };
    Def.BitmapText {
        Font="Common normal";
        OnCommand=cmd(maxwidth,550;xy,SCREEN_CENTER_X,SCREEN_TOP+38;zoom,0.5);
        OffCommand=cmd(diffusealpha,0);
        CurrentSongChangedMessageCommand=cmd(queuecommand,"Set");
        CurrentStepsP1ChangedMessageCommand=cmd(queuecommand,"Set");
        SetCommand=function(s)
        local song = GAMESTATE:GetCurrentSong()
        if song then
          s:diffusealpha(1);
          local steps = GAMESTATE:GetCurrentSteps(PLAYER_1);
          local diff = string.gsub(string.gsub(ToEnumShortString(steps:GetStepsType()),".*_",""), ".*", string.upper);
          local meter = GAMESTATE:GetCurrentSteps(PLAYER_1):GetMeter()
                  s:finishtweening():settext("Level: "..meter);
          end;
		  end;
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
