--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>. 
]]
-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (709, 'quest.seleseth_709_galmair');

local common = require("base.common")
local factions = require("base.factions")
local M = {}

local GERMAN = Player.german
local ENGLISH = Player.english

-- Insert the quest title here, in both languages
local Title = {}
Title[GERMAN] = "Das Edelsteinschleifen und Ziegelmachen"
Title[ENGLISH] = "Gem grinding and brick making"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
local Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Geh zu Seleseth in der Werkstatt von Galmair. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][1] = "Go to Seleseth in the workshop of Galmair, he is sure to have another task for you."
Description[GERMAN][2] = "Geh zu Seleseth in der Werkstatt von Galmair. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][2] = "Go to Seleseth in the workshop of Galmair, he is sure to have another task for you."
Description[GERMAN][3] = "Geh zu Seleseth in der Werkstatt von Galmair. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][3] = "Go to Seleseth in the workshop of Galmair, he is sure to have another task for you."
Description[GERMAN][4] = "Geh zu Seleseth in der Werkstatt von Galmair. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][4] = "Go to Seleseth in the workshop of Galmair, he is sure to have another task for you."
Description[GERMAN][5] = "Schleife acht Amethysten, f�r Seleseth, mit der Zange am Edelsteinschleifer in der Werkstatt von Galmair. Um den Edelsteinschleifer zu benutzen, brauchst du rohe Edelsteine und eine Zange in der Hand. Rohe Edelsteine findet man beim Sch�rfen in der Mine."
Description[ENGLISH][5] = "Grind eight amethysts for Seleseth with the tongs he gave you at the gem grinder in the workshop of Galmair. You can use the gem grinder if you have raw gems and hold the tongs in your hand. You can find raw gems in the mines whilst mining."
Description[GERMAN][6] = "Geh zu Seleseth in der Werkstatt von Galmair. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][6] = "Go to Seleseth in the workshop of Galmair, he is sure to have another task for you."
Description[GERMAN][7] = "Geh erneut zum Edelsteinschleifer und mach f�r Seleseth zwei Beutel Amethyststaub aus den acht geschliffenen Amethysten."
Description[ENGLISH][7] = "Go once again to the gem grinder and produce two bags of amethyst powder by grinding eight of the ground amethysts you produced."
Description[GERMAN][8] = "Geh zu Seleseth in der Werkstatt von Galmair. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][8] = "Go to Seleseth in the workshop of Galmair, he is sure to have another task for you."
Description[GERMAN][9] = "Stell f�r Seleseth, in der Werkstatt von Galmair, aus den zwei rohen Steinen 20 kleine Steine her. Um kleine Steine herzustellen, musst du den Mei�el in die Hand nehmen und rohe Steine bei dir haben. Anschlie�end benutzt du den Mei�el, um aus den rohen Steinen Steinquader zu machen. Aus den gewonnenen Steinquadern lassen sich kleine Steine herstellen, wenn man die Prozedur wiederholt. Rohe Steine lassen sich in der Mine, als Nebenprodukt, beim Abbau finden. Die kleinen Steine k�nnen mit einer Schleuder in der Hand als Waffe genutzt werden."
Description[ENGLISH][9] = "Produce twenty small stones from the two raw stones for Seleseth at the workshop of Galmair. To produce the small stones you need to take the chisel in your hand and use it, whilst you have raw stones in your inventory. Once you have made stone blocks you repeat the process again to make small stones. You can find raw stones whilst mining. Furthermore you can use the small stones together with a sling as a weapon."
Description[GERMAN][10] = "Du hast alle Aufgaben von Seleseth erf�llt."
Description[ENGLISH][10] = "You have fulfilled all the tasks for Seleseth."


-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {387, 278, 0}


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
local QuestTarget = {}
QuestTarget[1] = {position(387, 278, 0)}
QuestTarget[2] = {position(387, 278, 0)} 
QuestTarget[3] = {position(387, 278, 0)} 
QuestTarget[4] = {position(387, 278, 0)} 
QuestTarget[5] = {position(387, 278, 0), position(387, 279, 0)} -- gem grinder
QuestTarget[6] = {position(387, 278, 0)} 
QuestTarget[7] = {position(387, 278, 0), position(387, 279, 0)} -- gem grinder
QuestTarget[8] = {position(387, 278, 0)} 
QuestTarget[9] = {position(387, 278, 0)} -- Workshop
QuestTarget[10] = {position(387, 278, 0)} 

-- Insert the quest status which is reached at the end of the quest
local FINAL_QUEST_STATUS = 10


function M.QuestTitle(user)
    return common.GetNLS(user, Title[GERMAN], Title[ENGLISH])
end

function M.QuestDescription(user, status)
    local german = Description[GERMAN][status] or ""
    local english = Description[ENGLISH][status] or ""

    return common.GetNLS(user, german, english)
end

function M.QuestStart()
    return Start
end

function M.QuestTargets(user, status)
    return QuestTarget[status]
end

function M.QuestFinalStatus()
    return FINAL_QUEST_STATUS
end

function M.QuestAvailability(user, status)
    if factions.isGalmairCitizen(user) and status == 0 then
        return Player.questAvailable
    else
        return Player.questNotAvailable
    end
end

return M
