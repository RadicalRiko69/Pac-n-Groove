return Def.ActorFrame {
    Def.BitmapText {
        Font="Common large";
        Text="presents";
        OnCommand=cmd(Center;zoom,0.35;diffusealpha,0;diffusecolor,color("#00ffff");sleep,4;diffusealpha,1);
	  };	
    --orb
    LoadActor(THEME:GetPathG("","orb.png"))..{
      InitCommand=cmd(Center;zoom,0.1;addy,-300);
      OnCommand=cmd(linear,2;addy,SCREEN_CENTER_Y+20;SetTextureFiltering,false;sleep,2;diffusealpha,0);
    };
    --name
    LoadActor(THEME:GetPathG("","brand.png"))..{
      InitCommand=cmd(Center;zoom,0.4;addy,300);
      OnCommand=cmd(linear,2;addy,-280;SetTextureFiltering,false;sleep,2;diffusealpha,0);
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