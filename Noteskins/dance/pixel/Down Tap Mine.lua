local t = Def.ActorFrame {
	Def.Sprite {
		Texture=NOTESKIN:GetPath( '_down', 'tap mine' );
		OnCommand=cmd(SetTextureFiltering,false);
		Frames= {
			{Frame= 0, Delay= 0.15},
			{Frame= 1, Delay= 0.15},
		},

	};
};
return t;
