return Def.ActorFrame {
    --header
    Def.BitmapText {
      Font="Common normal";
      Text="INSTRUCTION";
      InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+50;diffusecolor,color('#ff0000');diffusealpha,0;zoom,0.8;SetTextureFiltering,false);
      OnCommand=cmd(sleep,2.5;diffusealpha,1;sleep,32.5;diffusealpha,0);
	  },
    --ch1
    Def.Sprite {
      Texture="arrow 2x1.png";
      InitCommand=cmd(Center;zoom,1.55;diffusealpha,0;animate,true;SetAllStateDelays,0.3;SetTextureFiltering,false);
      OnCommand=cmd(sleep,2.5;diffusealpha,1;sleep,32.5;diffusealpha,0);
    },
    Def.BitmapText {
      Font="Common normal";
      Text="This is the receptor.\n\nArrows will scroll from the bottom until they reach the targets.";
      InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+100;vertalign,top;wrapwidthpixels,500;diffusealpha,0;zoom,0.5;SetTextureFiltering,false);
      OnCommand=cmd(sleep,3;diffusealpha,1;sleep,5;diffusealpha,0);
	  },
    --ch2
    Def.Sprite {
      Texture="down 4x1.png";
      InitCommand=cmd(Center;zoom,1.55;diffusealpha,0;animate,true;SetAllStateDelays,0.25;SetTextureFiltering,false);
      OnCommand=cmd(sleep,8;diffusealpha,1;sleep,6;diffusealpha,0);
    },
    Def.BitmapText {
      Font="Common normal";
      Text="Here comes an incoming note!\n\nHit the arrows in time with the music.";
      InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+100;vertalign,top;wrapwidthpixels,500;diffusealpha,0;zoom,0.5;SetTextureFiltering,false);
      OnCommand=cmd(sleep,8;diffusealpha,1;sleep,4;diffusealpha,0);
	  },
    --ch2.5
    Def.Sprite {
      Texture="up 4x1.png";
      InitCommand=cmd(Center;zoom,1.55;diffusealpha,0;animate,true;SetAllStateDelays,0.25;SetTextureFiltering,false);
      OnCommand=cmd(sleep,12;diffusealpha,1;sleep,2;diffusealpha,0);
    },
    Def.BitmapText {
      Font="Common normal";
      Text="Here comes an incoming note!\n\nHit the arrows in time with the music.\n\nSometimes two or more notes can occur on the same beat.";
      InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+100;vertalign,top;wrapwidthpixels,500;diffusealpha,0;zoom,0.5;SetTextureFiltering,false);
      OnCommand=cmd(sleep,12;diffusealpha,1;sleep,2;diffusealpha,0);
	  },
    Def.Sprite {
      Texture="hold.png";
      InitCommand=cmd(Center;addy,-40;zoom,1.55;diffusealpha,0;SetTextureFiltering,false);
      OnCommand=cmd(sleep,15;diffusealpha,1;sleep,4;diffusealpha,0);
    },
    Def.BitmapText {
      Font="Common normal";
      Text="A long note has joined in!\n\nSimply hold down the note until the end of the tail.\nSome long notes have blue tails, which require you to release your foot on time.";
      InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+100;vertalign,top;wrapwidthpixels,500;diffusealpha,0;zoom,0.5;SetTextureFiltering,false);
      OnCommand=cmd(sleep,15;diffusealpha,1;sleep,4;diffusealpha,0);
	  },
    Def.Sprite {
      Texture="roll.png";
      InitCommand=cmd(Center;addy,-88;zoom,1.55;diffusealpha,0;SetTextureFiltering,false);
      OnCommand=cmd(sleep,20;diffusealpha,1;sleep,4;diffusealpha,0);
    },
    Def.BitmapText {
      Font="Common normal";
      Text="Watch out!\n\nThis is a roll note, this particular type of long note requires to rapidly tap instead of holding until the end of the tail.";
      InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+100;vertalign,top;wrapwidthpixels,500;diffusealpha,0;zoom,0.5;SetTextureFiltering,false);
      OnCommand=cmd(sleep,20;diffusealpha,1;sleep,4;diffusealpha,0);
	  },
    Def.Sprite {
      Texture="mine 2x1.png";
      InitCommand=cmd(Center;addy,-268;zoom,1.8;diffusealpha,0;SetTextureFiltering,false);
      OnCommand=cmd(sleep,25;diffusealpha,1;sleep,4;diffusealpha,0);
    },
    Def.BitmapText {
      Font="Common normal";
      Text="Avoid the ghost bombs!\n\nIf hit, they will blow up and you will lose a life.";
      InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+100;vertalign,top;wrapwidthpixels,500;diffusealpha,0;zoom,0.5;SetTextureFiltering,false);
      OnCommand=cmd(sleep,25;diffusealpha,1;sleep,4;diffusealpha,0);
	  },
    --ch6
    Def.Sprite {
      CharacterCommand=function(self)
        if ThemePrefs.Get("MsPacMode") == "On" then
          self:Load(THEME:GetPathG("","mspacman/lives.png"));
        else
          self:Load(THEME:GetPathG("","pacman/lives.png"));
        end;
      end,
      InitCommand=cmd(Center;zoom,1.55;diffusealpha,0;SetTextureFiltering,false;queuecommand,"Character");
      OnCommand=cmd(sleep,30;diffusealpha,1;sleep,5;diffusealpha,0);
    },
    Def.BitmapText {
      Font="Common normal";
      Text="Each stage comes with 4 lives. If all lives are lost, the game is over.\n\nThere are no limits on stages until a stage is failed.\n\nGood luck!";
      InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+100;vertalign,top;wrapwidthpixels,500;diffusealpha,0;zoom,0.5;SetTextureFiltering,false);
      OnCommand=cmd(sleep,30;diffusealpha,1;sleep,5;diffusealpha,0);
	  },
    Def.BitmapText {
      Font="Common normal";
      Text="Do you have what it takes to bust a move against these pesky ghosts?\n\nTest your rhythm!";
      InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+100;diffusecolor,color('#ffff00');vertalign,top;wrapwidthpixels,450;diffusealpha,0;zoom,0.75;SetTextureFiltering,false);
      OnCommand=cmd(sleep,35;diffusealpha,1);
	  },
};
