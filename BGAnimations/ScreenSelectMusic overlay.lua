return Def.ActorFrame {
    --Maze
    Def.Quad {
      PlayerJoinedMessageCommand=function(self)
        SCREENMAN:SetNewScreen("ScreenCompany");
        SCREENMAN:SystemMessage("2 PLAYERS ARE\nNOT ALLOWED!!!");
        SOUND:StopMusic()
      end;

      OnCommand=function(self)
        if GAMESTATE:IsSideJoined(PLAYER_2) then
          SCREENMAN:SetNewScreen("ScreenCompany");
          SCREENMAN:SystemMessage("USE PLAYER 1\nSIDE ONLY!!!");
        end;
      end,
    },
    --Wheel highlight
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(260,22):Center():diffuse(color("#ffff2e")):blend(Blend.Multiply)
      end,
    },	
    --Player Character
    Def.Sprite {
      InitCommand=cmd(Center;addx,-140;zoom,0.95;rotationy,180;SetTextureFiltering,false);
      CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
      OffCommand=cmd(linear,1;addx,130);
      SetCommand=function(self)
            local song = GAMESTATE:GetCurrentSong()
            if song then
              local dispBpms = song:GetDisplayBpms()
              local bpmLimited = clamp(math.abs(dispBpms[2]),1,9999)
              local bps = (1/bpmLimited)*14.25;
              self:SetAllStateDelays(bps);
            else
              self:SetAllStateDelays(1);
        end;
      end;
      OnCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:Load(THEME:GetPathG("","mspacman/chr 4x1.png"));
        else
          self:Load(THEME:GetPathG("","pacman/chr 4x1.png"));
        end;
      end,
    },
    --Blinky
    LoadActor(THEME:GetPathG("","blinky 20x1.png"))..{
      OnCommand=cmd(Center;addx,140;zoom,1;SetTextureFiltering,false);
      CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
      SetCommand=function(self)
            local song = GAMESTATE:GetCurrentSong()
            if song then
              local dispBpms = song:GetDisplayBpms()
              local bpmLimited = clamp(math.abs(dispBpms[2]),1,9999)
              local bps = (1/bpmLimited)*14.25;
              self:SetAllStateDelays(bps);
            else
              self:SetAllStateDelays(1);
        end;
      end;
      OffCommand=cmd(linear,1;addx,-130);
    };    
    --Wheel highlight
    Def.Sprite {
      InitCommand=cmd(Center;zoom,1.5;SetTextureFiltering,false);
      OnCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:Load(THEME:GetPathG("","mspacman/music.png"));
        else
          self:Load(THEME:GetPathG("","pacman/music.png"));
        end;
      end,
    },
    --SFX
    LoadActor("pacfx")..{
    };
    --Text
    Def.BitmapText {
        Font="Common normal";
        Text="TIMER";
        OnCommand=cmd(horizalign,right;xy,SCREEN_CENTER_X+122,SCREEN_TOP+16;zoom,0.4;diffusecolor,color("#ff0000"));
        OffCommand=function(s)
          SOUND:StopMusic();
          s:diffusealpha(0);
        end;
	  };
    Def.BitmapText {
        Font="Common large";
        Text="SELECT MUSIC";
        OnCommand=cmd(horizalign,left;xy,SCREEN_CENTER_X-170,SCREEN_TOP+14;zoom,0.25);
        OffCommand=cmd(diffusealpha,0);
	  };
    Def.BitmapText {
        Font="Common normal";
        OnCommand=cmd(maxwidth,800;xy,SCREEN_CENTER_X,SCREEN_TOP+46;zoom,0.4;diffusecolor,color("#00ffff"));
        OffCommand=cmd(diffusealpha,0);
        CurrentSongChangedMessageCommand=function(s)
        local song = GAMESTATE:GetCurrentSong():GetGroupName();
          if song then
					  s:finishtweening():settext("current playlist: "..string.gsub(song,"^%d%d? ?%- ?", ""));
				  else
					  s:finishtweening():settext("");
				  end;
        end;
	  };
    LoadActor("record")..{
    };
    Def.BitmapText {
        Font="Common normal";
        OnCommand=cmd(horizalign,right;maxwidth,550;xy,SCREEN_CENTER_X+150,SCREEN_BOTTOM-48;zoom,0.4;diffusecolor,color("#ff8000"));
        OffCommand=cmd(diffusealpha,0);
        CurrentSongChangedMessageCommand=function(self)

        local song = GAMESTATE:GetCurrentSong();
            if song then
              local speedvalue;
              if song:IsDisplayBpmRandom() then
                speedvalue = "???";
              else
                local rawbpm = GAMESTATE:GetCurrentSong():GetDisplayBpms();
                local lobpm = math.ceil(rawbpm[1]);
                local hibpm = math.ceil(rawbpm[2]);
                if lobpm == hibpm then
                  speedvalue = hibpm
                else
                  speedvalue = lobpm..">"..hibpm
                end;
              end;
              self:settext("Speed: "..speedvalue);
            else
              self:stoptweening():settext("");
            end;
        end;
	  };
    Def.BitmapText {
        Font="Common normal";
        OnCommand=cmd(horizalign,left;maxwidth,550;xy,SCREEN_CENTER_X-150,SCREEN_BOTTOM-48;zoom,0.4;diffusecolor,color("#00ff00"));
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
    Def.BitmapText {
        Font="Common large";
        Text="loading song...";
        OnCommand=cmd(xy,SCREEN_CENTER_X,SCREEN_CENTER_Y-60;zoom,0.24;diffusealpha,0);
        OffCommand=cmd(diffusealpha,1;diffusecolor,color("#ffff00"));
	  };
    Def.BitmapText {
        Font="Common large";
        Text="let battle\ncommence!";
        OnCommand=cmd(xy,SCREEN_CENTER_X,SCREEN_CENTER_Y+60;zoom,0.4;diffusealpha,0);
        OffCommand=cmd(diffusealpha,1;diffusecolor,color("#ff0000"));
	  };
};