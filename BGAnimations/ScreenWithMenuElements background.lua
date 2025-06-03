local t = Def.ActorFrame {}
t[#t+1] = Def.ActorFrame {
	Def.Quad {
		OnCommand=function (self)
			self:zoomx(88888):zoomy(88888):Center():diffusecolor(Color("Black"));
		end,
	};
};

return t;
