return Def.Sprite {
	Texture=NOTESKIN:GetPath( '_down', 'tap note' );
	InitCommand=cmd(SetTextureFiltering,false);
	Frames = Sprite.LinearFrames( 8, 1 );
};
