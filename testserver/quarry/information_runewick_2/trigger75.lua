require("handler.sendmessagetoplayer")
require("handler.createplayeritem")
require("questsystem.base")
module("questsystem.information_runewick_2.trigger75", package.seeall)

local QUEST_NUMBER = 622
local PRECONDITION_QUESTSTATE = 202
local POSTCONDITION_QUESTSTATE = 196

local POSITION = position(727, 770, 0)
local RADIUS = 10

function UseItem( PLAYER, item, TargetItem, counter, Param, ltstate )
  if PLAYER:isInRangeToPosition(POSITION,RADIUS)
      and ADDITIONALCONDITIONS(PLAYER)
      and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then
    PLAYER:inform(TEXT_DE, TEXT_EN)
    
    HANDLER(PLAYER)
    
    questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)
    return true
  end

  return false
end


-- local TEXT_DE = TEXT -- German Use Text -- Deutscher Text beim Benutzen
-- local TEXT_EN = TEXT -- English Use Text -- Englischer Text beim Benutzen


function HANDLER(PLAYER)
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Bring die Traube zu Numila nun.", "Bring the grapes to Numila now."):execute()
    handler.createplayeritem.createPlayerItem(PLAYER, 388, 999, 1):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end