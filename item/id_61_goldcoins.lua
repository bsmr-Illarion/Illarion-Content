-- I_61.lua Goldm&uuml;nzen einschmelzen

-- UPDATE common SET com_script='item.id_61_goldcoins' WHERE com_itemid IN (61);

require("base.common")

module("item.id_61_goldcoins", package.seeall)

if not InitTime then
	InitTime=true;
	TimeList = {};
end

function UseItem(User,SourceItem,TargetItem,Counter,Param)
	if ( SourceItem.number == 1 ) then  --works only with 1 coin

    	if TimeList[User.id]~=nil then
			if  ( (math.abs(world:getTime("second") - TimeList[User.id]) ) <=3) then  --1 Rl. second delay
				return;
			end
		end
      	TimeList[User.id] = world:getTime("second");
		
		if math.random(2) == 1 then	gValue = "Kopf"; eValue = "head";
		else gValue = "Zahl"; eValue = "tail"; end    
		
		User:talkLanguage(Character.say, Player.german, "#me wirft eine M�nze in die Luft und f�ngt sie wieder auf. Sie zeigt "..gValue..".");
		User:talkLanguage(Character.say, Player.english, "#me throws a coin in the air and catches it again. It shows "..eValue..".");

	end
	
	
	if (User:isAdmin()) then
	
		world:createItemFromId(10, 1 ,position (240,732,0),false, 0, 0);
        world:createItemFromId(10, 1 ,position (240,722,0),false, 0, 0);
        world:createItemFromId(10, 1 ,position (250,732,0),false, 0, 0);
        world:createItemFromId(10, 1 ,position (250,722,0),false, 0, 0);
        
        User:inform("portale stehen nahe 240,732,0 rum");
        
		world:createItemFromId(434, 1 ,position (220,735,0),false, 333, 333);
        world:createItemFromId(434, 1 ,position (220,737,0),false, 333, 333);
        world:createItemFromId(434, 1 ,position (220,739,0),false, 333, 333);
        world:createItemFromId(434, 1 ,position (220,741,0),false, 333, 333);
        world:createItemFromId(434, 1 ,position (220,743,0),false, 333, 333);

		world:createItemFromId(434, 1 ,position (33,20,0),false, 333, 333);    --elevator test
		world:createItemFromId(434, 1 ,position (33,10,0),false, 333, 333);
		
        User:inform("hebel stehen nahe 220,735,0 rum");
        
        
	end
end

function MoveItemAfterMove(User, SourceItem, TargetItem)

    if TargetItem.pos == position(890,390,0) then -- donation to cherga to reduce death counter, for one gold we reduce all deathes at once!
	    getProgress = User:getQuestProgress(666)
		if getProgress == 0 then
			getProgress = 10000
		end	
		
		deathCounter = getProgress-((math.floor(getProgress/10))*10)  
		if deathCounter > 0 then
		    base.common.InformNLS(User, "Als die Gottheit das Opfer annzunehmen scheint, hast Du das Gef�hl, dass du ganz von der Last des Todes befreift wirst.",
				"As the divinity seems to accept your offer, you get the feeling, that your burden of death is easied completely.")
		else
		    base.common.InformNLS(User, "Ein angenehmes Gef�hl erf�llt dich, als die Gottheit deine Spende zu akzeptieren scheint.",
				                            "You get a comfortable feeling, as the divinity seems to accept your offer.")
		end
		
		User:setQuestProgress(666,getProgress - deathCounter)
		world:erase(TargetItem,1)
        world:gfx(31,position(890,390,0))
	end	
return true
end