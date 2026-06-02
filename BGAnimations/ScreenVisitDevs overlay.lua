return Def.ActorFrame {
    Def.BitmapText {
        Font="Common large";
        Text="Join our\nDiscord!";
        InitCommand=function(s)
            ResetGame();
        end;
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+40;diffusecolor,color("#ffffff");shadowlength,2;zoom,0.4;SetTextureFiltering,false);
	  };
    --Shivo Outline
    LoadActor(THEME:GetPathG("","shi.png"))..{
      OnCommand=cmd(Center;glow,Color("White");zoomx,0.61;zoomy,0.618;addy,-75.5;addx,0.5;shadowlength,2;SetTextureFiltering,false);
    };
    --Shivo
    LoadActor(THEME:GetPathG("","shi.png"))..{
      OnCommand=cmd(Center;zoom,0.6;addy,-75;SetTextureFiltering,false);
    };
    Def.BitmapText {
        Font="Common large";
        Text="SUSHIVERSE";
        InitCommand=function(s)
            ResetGame();
        end;
        OnCommand=cmd(x,SCREEN_CENTER_X-52;y,SCREEN_CENTER_Y-72;diffusecolor,color("#8400ff");horizalign,left;shadowlength,2;shadowcolor,Color("White");zoomx,0.36;zoomy,0.46;SetTextureFiltering,false);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="Entertainment";
        InitCommand=function(s)
            ResetGame();
        end;
        OnCommand=cmd(x,SCREEN_CENTER_X-52;y,SCREEN_CENTER_Y-50;diffusecolor,color("#00ff00");skewx,-0.2;horizalign,left;shadowlength,0.75;shadowcolor,Color("White");zoom,0.2;SetTextureFiltering,false);
	  };
    Def.BitmapText {
        Font="Common normal";
        Text="The creators behind:\n\nSushi Violation\n&\nDreamBook";
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
    --sfx
    LoadActor(THEME:GetPathS("","pacman/fruit.wav"))..{
      OnCommand=cmd(play);
    };
    
};
