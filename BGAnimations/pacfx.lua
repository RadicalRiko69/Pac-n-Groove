return Def.ActorFrame {

  --PAC MAN SFX
    --Start
    LoadActor(THEME:GetPathS("","pacman/eat"))..{
      OffCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "Off" then
          self:play();
        else
          self:stop();
        end;
      end;
    };
    --Change Folder
    LoadActor(THEME:GetPathS("","pacman/down"))..{
      NextGroupMessageCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "Off" then
          self:play();
        else
          self:stop();
        end;
      end;
      PreviousGroupMessageCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "Off" then
          self:play();
        else
          self:stop();
        end;
      end;
    };
    --Move Song
    LoadActor(THEME:GetPathS("","pacman/up"))..{
      CurrentSongChangedMessageCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "Off" then
          self:play();
        else
          self:stop();
        end;
      end;
    };

    --MS PAC MAN SFX
    --Start
    LoadActor(THEME:GetPathS("","mspacman/eat"))..{
      OffCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:play();
        else
          self:stop();
        end;
      end;
    };
    --Move
    LoadActor(THEME:GetPathS("","mspacman/dot"))..{
      CurrentSongChangedMessageCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:play();
        else
          self:stop();
        end;
      end;
      NextGroupMessageCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:play();
        else
          self:stop();
        end;
      end;
      PreviousGroupMessageCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:play();
        else
          self:stop();
        end;
      end;
    };
};
