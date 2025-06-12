return Def.ActorFrame {
    --Maze
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(320,1):Center():addy(12):diffuse(color("#0000ff"))
      end,
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
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(320,1):Center():addy(-12):diffuse(color("#0000ff"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(320,1):Center():addy(-208):diffuse(color("#0000ff"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(1,196):Center():addx(-160):addy(-110):diffuse(color("#0000ff"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(1,196):Center():addx(160):addy(-110):diffuse(color("#0000ff"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(1,260):Center():addx(-160):addy(142):diffuse(color("#0000ff"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(1,260):Center():addx(160):addy(142):diffuse(color("#0000ff"))
      end,
    },
    --Dots NORTH EAST
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(-20):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(-40):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(-60):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(-80):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(-100):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(-120):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(-140):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(-160):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(-180):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(-200):diffuse(color("#ffff40"))
      end,
    },
    --Power Pellet MIDDLE RIGHT
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(8,6):Center():addx(170):addy(0):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(6,8):Center():addx(170):addy(0):diffuse(color("#ffff40"))
      end,
    },
    --Power Pellet TOP RIGHT
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(8,6):Center():addx(170):addy(-220):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(6,8):Center():addx(170):addy(-220):diffuse(color("#ffff40"))
      end,
    },
    --Dots SOUTH EAST
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(20):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(40):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(60):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(80):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(100):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(120):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(140):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(160):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(180):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(200):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(170):addy(220):diffuse(color("#ffff40"))
      end,
    },    
    --Dots NORTH WEST
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(-20):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(-40):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(-60):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(-80):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(-100):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(-120):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(-140):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(-160):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(-180):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(-200):diffuse(color("#ffff40"))
      end,
    },
    --Power Pellet MIDDLE LEFT
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(8,6):Center():addx(-170):addy(0):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(6,8):Center():addx(-170):addy(0):diffuse(color("#ffff40"))
      end,
    },
    --Power Pellet TOP LEFT
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(8,6):Center():addx(-170):addy(-220):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(6,8):Center():addx(-170):addy(-220):diffuse(color("#ffff40"))
      end,
    },
    --Dots SOUTH WEST
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(20):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(40):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(60):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(80):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(100):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(120):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(140):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(160):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(180):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(200):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-170):addy(220):diffuse(color("#ffff40"))
      end,
    },
    --Dots NORTH CENTER
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(150):addy(-220):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(130):addy(-220):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(110):addy(-220):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(90):addy(-220):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(70):addy(-220):diffuse(color("#ffff40"))
      end,
    },
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(4,4):Center():addx(-150):addy(-220):diffuse(color("#ffff40"))
      end,
    },
    --Wheel highlight
    Def.Quad {
      InitCommand=function(self)
        self:zoomto(260,15):Center():diffuse(color("#ffff00")):blend(Blend.Multiply)
      end,
    },	
  --Pac
    LoadActor(THEME:GetPathG("","pac 4x1.png"))..{
      OnCommand=cmd(Center;addx,-140;zoom,0.55;SetTextureFiltering,false);
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
      OffCommand=cmd(linear,1;addx,130);
    };
    --Blinky
    LoadActor(THEME:GetPathG("","ghost 2x1.png"))..{
      OnCommand=cmd(Center;addx,140;zoom,1.25;SetTextureFiltering,false);
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
    --SFX
    LoadActor(THEME:GetPathS("","pacman/down.wav"))..{
		  PreviousGroupMessageCommand=cmd(queuecommand,"Play");
      PlayCommand=cmd(stop;play);
    };	
    LoadActor(THEME:GetPathS("","pacman/down.wav"))..{
      NextGroupMessageCommand=cmd(queuecommand,"Play");
      PlayCommand=cmd(stop;play);
    };
    LoadActor(THEME:GetPathS("","pacman/eat.wav"))..{
      OffCommand=cmd(play);
    };	
    --Text
    Def.BitmapText {
        Font="Common normal";
        Text="TIMER";
        OnCommand=cmd(horizalign,right;xy,SCREEN_CENTER_X+152,SCREEN_BOTTOM-50;zoom,0.6;diffusecolor,color("#ff0000"));
	  };
    Def.BitmapText {
        Font="Common large";
        Text="Select Music";
        OnCommand=cmd(horizalign,left;xy,SCREEN_CENTER_X-135,SCREEN_TOP+18;zoom,0.27);
        OffCommand=function(s)
          SOUND:StopMusic();
        end;
	  };	
    Def.BitmapText {
        Font="Common normal";
        Text="music by:";
        OnCommand=cmd(horizalign,left;xy,SCREEN_CENTER_X-150,SCREEN_BOTTOM-38;zoom,0.4;diffusecolor,color("#ff76c0"));
        OffCommand=cmd(diffusealpha,0);
	  };
    Def.BitmapText {
        Font="Common normal";
        OnCommand=cmd(horizalign,left;maxwidth,550;xy,SCREEN_CENTER_X-150,SCREEN_BOTTOM-28;zoom,0.4;diffusecolor,color("#ff76c0"));
        OffCommand=cmd(diffusealpha,0);
        CurrentSongChangedMessageCommand=function(s)
        local song = GAMESTATE:GetCurrentSong();
          if song then
					  s:finishtweening():settext(song:GetDisplayArtist());
				  else
					  s:finishtweening():settext("");
				  end;
        end;
	  };
    Def.BitmapText {
        Font="Common normal";
        Text="current playlist:";
        OnCommand=cmd(horizalign,left;xy,SCREEN_CENTER_X-150,SCREEN_TOP+40;zoom,0.4);
        OffCommand=cmd(diffusealpha,0);
	  };
    Def.BitmapText {
        Font="Common normal";
        OnCommand=cmd(horizalign,left;maxwidth,550;xy,SCREEN_CENTER_X-150,SCREEN_TOP+48;zoom,0.4);
        OffCommand=cmd(diffusealpha,0);
        CurrentSongChangedMessageCommand=function(s)
        local song = GAMESTATE:GetCurrentSong():GetGroupName();
          if song then
					  s:finishtweening():settext(string.gsub(song,"^%d%d? ?%- ?", ""));
				  else
					  s:finishtweening():settext("");
				  end;
        end;
	  };
    Def.BitmapText {
        Font="Common normal";
        OnCommand=cmd(horizalign,right;maxwidth,550;xy,SCREEN_CENTER_X+150,SCREEN_TOP+46;zoom,0.4;diffusecolor,color("#ff8000"));
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
              self:settext("Speed:\n"..speedvalue);
            else
              self:stoptweening():settext("");
            end;
        end;
	  };
    Def.BitmapText {
        Font="Common normal";
        OnCommand=cmd(horizalign,left;maxwidth,550;xy,SCREEN_CENTER_X-150,SCREEN_BOTTOM-48;zoom,0.4;diffusecolor,color("#00ecff"));
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