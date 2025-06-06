return Def.ActorFrame {
    Def.BitmapText {
        Font="Common large";
        Text="CREDIT(S):";
        InitCommand=function(s)
            ResetGame();
        end;
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+40;diffusecolor,color("#0000ff");zoom,0.4;SetTextureFiltering,false);
	  };
    Def.BitmapText {
        Font="Common normal";
        Text="Theme designed\nand coded by\n\nGiovanni Shawn @\nSushiverse Entertainment\n\n---\n\nSpecial thanks to\n\nNamelessVega\n\nfor the pixel art\ntitle screen!";
        OnCommand=cmd(Center;zoom,0.64;addy,-20);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="Pac'n Groove is also\nnot associated with any\nStepMania development team.";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-84;diffusecolor,color("#ffff00");zoom,0.14;SetTextureFiltering,false);
	  };
    Def.BitmapText {
        Font="Common large";
        Text="Sincerely,\nFrequency Style Arcade";
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-40;diffusecolor,color("#00ffff");zoom,0.24;SetTextureFiltering,false);
	  };
};
