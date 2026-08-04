local tbMapMod = GameMain:NewMod("MapMod");--先注册一个新的MOD模块

function tbMapMod:OnInit()
	print("MapMod init");
	CS.GameMain.Instance.NoFog = true;
	local bound = Map.Size-1;
	for x=0,bound do
		for y=0,bound do
			CS.MapRender.Instance.Fog:Unfog(x, y);
		end
	end
end

function tbMapMod:OnEnter()
	print("MapMod enter");
end

function tbMapMod:OnStep(dt)--请谨慎处理step的逻辑，可能会影响游戏效率
	--print("MapMod Step"..dt);
end

function tbMapMod:OnLeave()
	print("MapMod Leave");
end

function tbMapMod:OnSave()--系统会将返回的table存档 table应该是纯粹的KV
	print("MapMod OnSave");
end

function tbMapMod:OnLoad(tbLoad)--读档时会将存档的table回调到这里
	print("MapMod OnLoad");
end
