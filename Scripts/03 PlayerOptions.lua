function table.shallowcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

--By Alisson, I don't think this function is used though
function SpeedMods()
	local t = {
		Name = "UserPrefSpeedMods";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = false;
		ExportOnChange = false;
		Choices = { "+0.25", "+0.5","+0.75"};
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("UserPrefSpeedMods") == nil then
				list[1] = true;
				--WritePrefToFile("UserPrefSpeedMods","+0.25");
			else

				if GetUserPref("UserPrefSpeedMods") == "+0.25" then
					list[1] = true;
				end

				if GetUserPref("UserPrefSpeedMods") == "+0.5" then
					list[2] = true;
				end

				if GetUserPref("UserPrefSpeedMods") == "+0.75" then
					list[3] = true;

				end

			end;
		end;
		SaveSelections = function(self, list, pn)
				if list[1] then
					--WritePrefToFile("UserPrefSpeedMods","+0.25");
					local speed = (math.ceil(GAMESTATE:GetPlayerState(pn):GetCurrentPlayerOptions():XMod()*100)/100)+0.25;
					GAMESTATE:ApplyGameCommand("mod,"..speed.."x",pn);
				end

				if list[2] then
					--WritePrefToFile("UserPrefSpeedMods","+0.5");
					local speed = (math.ceil(GAMESTATE:GetPlayerState(pn):GetCurrentPlayerOptions():XMod()*100)/100)+0.5;
					GAMESTATE:ApplyGameCommand("mod,"..speed.."x",pn);
				end

				if list[3] then
					--WritePrefToFile("UserPrefSpeedMods","+0.75");
					local speed = (math.ceil(GAMESTATE:GetPlayerState(pn):GetCurrentPlayerOptions():XMod()*100)/100)+0.75;
					GAMESTATE:ApplyGameCommand("mod,"..speed.."x",pn);
				end
				MESSAGEMAN:Broadcast("SpeedModChanged",{Player=pn});
		end
	};
	setmetatable( t, t );
	return t;
end
