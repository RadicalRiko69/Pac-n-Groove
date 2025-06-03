return Def.ActorFrame {
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
    Def.Quad {
		  InitCommand=cmd(zoomx,SCREEN_WIDTH*2;zoomy,50;Center;diffuse,color("#000000"));
	  };
    Def.BitmapText {
        Font="Common large";
        OnCommand=cmd(maxwidth,1320;xy,SCREEN_CENTER_X,SCREEN_TOP+10;zoom,0.26);
        CurrentSongChangedMessageCommand=function(s)
					  s:finishtweening():settext("Demo Play");
        end;
	  };
    Def.BitmapText {
        Font="Common large";
        OnCommand=cmd(maxwidth,1320;xy,SCREEN_CENTER_X,SCREEN_CENTER_Y;diffusecolor,color("#FF0000");zoom,0.5);
        CurrentSongChangedMessageCommand=function(s)
					  s:finishtweening():settext("GAME OVER");
        end;
	  };
};
