local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
    Def.Quad {
		  InitCommand=cmd(zoomx,SCREEN_WIDTH*2;zoomy,SCREEN_HEIGHT*2;diffuse,color("#3e983e"));
	  };
};

return t