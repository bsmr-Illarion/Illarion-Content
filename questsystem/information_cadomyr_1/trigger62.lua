require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.information_cadomyr_1.trigger62", package.seeall)

local QUEST_NUMBER = 641
local PRECONDITION_QUESTSTATE = 66
local POSTCONDITION_QUESTSTATE = 319


function MoveToField( PLAYER )
    if ADDITIONALCONDITIONS(PLAYER)
    and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then
    
        HANDLER(PLAYER)
    
        questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)
        return true
    end
    
    return false
end


function HANDLER(PLAYER)
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Der mittlere Stuhl der drei zu deiner Linken sieht auff�llig auf. Vielleicht solltest du dir den mal genauer aus der N�he ansehen.", "The middle chair of the three on your left side looks suspicious. You should probably take a look from a close position at this chair."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end