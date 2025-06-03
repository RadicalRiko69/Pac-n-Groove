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
        OnCommand=cmd(maxwidth,1320;xy,SCREEN_CENTER_X,SCREEN_TOP+10;zoom,0.26);
        CurrentSongChangedMessageCommand=function(s)
        local song = GAMESTATE:GetCurrentSong();
          if song then
					  s:finishtweening():settext(song:GetTranslitMainTitle());
				  else
					  s:finishtweening():settext("");
				  end;
        end;
	  };
    Def.BitmapText {
        Font="Common large";
        OnCommand=cmd(maxwidth,1200;xy,SCREEN_CENTER_X,SCREEN_TOP+20;zoom,0.14;vertalign,top);
        CurrentSongChangedMessageCommand=function(s)
        local song = GAMESTATE:GetCurrentSong();
          if song then
					  s:finishtweening():settext(song:GetTranslitSubTitle());
				  else
					  s:finishtweening():settext("");
				  end;
        end;
	  };
};
