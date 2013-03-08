-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (707, 'quest.zlatxhol_707_cadomyr');

require("base.common")
module("development.zlatxhol_707_cadomyr", package.seeall)

GERMAN = Player.german
ENGLISH = Player.english

-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Das Glasblasen und Ziegelmachen"
Title[ENGLISH] = "Glass blowing and brick making"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Sammel 30 Klumpen Lehm beim Fluss im Westen der Stadt f�r Zlatxhol. Um den Lehm zu sammeln, musst du die Schauefel in die Hand nehmen und an einer Stelle, wo es Dreck nahe am Wasser gibt, graben."
Description[ENGLISH][1] = "Collect 30 clumps of clay at the river on the west side of the city for Zlatxhol. You can collect the clay if you take the shovel in your hand and use it on a spot where there is dirt next to the water."
Description[GERMAN][3] = "Stell 15 Ziegel am Glassschmelzofen f�r Zlatxhol in Cadomyr her. Um die Ziegel herzustellen, musst du die Ziegelform in die Hand nehmen und den Ofen benutzen. Dann stellst du ungebrannte Ziegel her. Anschlie�end wiederholst du das ganze und hast gebrannte Ziegel."
Description[ENGLISH][3] = "Produce 15 bricks in the glass melting oven for Zlatxhol in Cadomyr. To produce the bricks, you have to take the brick mould in your hand and use the oven. First of all you will produce unfired bricks, then you repeat the action again to produce fired bricks."
Description[GERMAN][5] = "Sammel zehn Haufen groben Sand. Geh zum Sieb in der Werkstatt und mach daraus Quarzsand und zeig anschlie�end den Sand Zlatxhol. Groben Sand findet man unter Steinen in der W�ste, wenn man mit der Schaufel gr�bt. Hat man erst etwas groben Sand, kann man mit der Holzkelle am Sieb Quarzsand damit herstellen. Der gewonnene Quarzsand l�sst sich zusammen mit Asche bei einem Glasschmelzofen mit dem Glasblasrohr in der Hand zu Glasbl�cken formen."
Description[ENGLISH][5] = "Collect ten piles coarse sand and go to the sieve in the workshop to turn these to quartz sand, and show the result to Zlatxhol. You can dig coarse sand with the shovel in the desert around stones. Once you have enough coarse sand, you can use the wooden shovel to sieve the quartz sand. You will need quartz sand, together with ash, to make glass."
Description[GERMAN][7] = "Mach ein Feuer mit den Holzscheiten die dir Zlatxhol gegeben hat und mach dann zusammen mit dem Quarzsand am Glassschmelzofen zehn Glasbbl�cke f�r Zlatxhol daraus. Ein Lagerfeuer l�sst sich entz�nden, wenn du Holzscheite auf den Boden legst und diese benutzt. Hast du weiteres Holz im G�rtel kannst du das Feuer benutzen und stellst dadurch dann Asche her."
Description[ENGLISH][7] = "Make a fire with the wood that Zlatxhol gave you. You can light a fire if you place some wood on the ground and use it. Together the quartz sand and ash can be combined to make glass ingots by using the glass blowing pipe in your hand at the glass melting oven. Make ten glass ingots and take them to Zlatxhol."
Description[GERMAN][9] = "Stell f�nf leere Flaschen mit dem Glasblasrohr f�r Zlatxhol her und zeig ihm die Flaschen."
Description[ENGLISH][9] = "Produce five empty bottles from glass ingots using the glass blowing pipe at the glass melting oven and show them to Zlatxhol."
Description[GERMAN][10] = "Du hast alle Aufgaben von Zlatxhol erf�llt."
Description[ENGLISH][10] = "You have fulfilled all the tasks for Zlatxhol."


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(142, 589, 0), position(84, 612, 0)} -- Clay
QuestTarget[2] = {position(142, 589, 0)} 
QuestTarget[3] = {position(142, 589, 0), position(142, 587, 0)} -- Glass melting oven
QuestTarget[4] = {position(142, 589, 0)} 
QuestTarget[5] = {position(142, 589, 0), position(128, 654, 0), position(143, 592, 0)} -- sand and sieve
QuestTarget[6] = {position(142, 589, 0)} 
QuestTarget[7] = {position(142, 589, 0), position(142, 587, 0)} -- Glass melting oven
QuestTarget[8] = {position(142, 589, 0)} 
QuestTarget[9] = {position(142, 589, 0), position(142, 587, 0)} -- Glass melting oven

-- Insert the quest status which is reached at the end of the quest
FINAL_QUEST_STATUS = 8


function QuestTitle(user)
    return base.common.GetNLS(user, Title[GERMAN], Title[ENGLISH])
end

function QuestDescription(user, status)
    local german = Description[GERMAN][status] or ""
    local english = Description[ENGLISH][status] or ""

    return base.common.GetNLS(user, german, english)
end

function QuestTargets(user, status)
    return QuestTarget[status]
end

function QuestFinalStatus()
    return FINAL_QUEST_STATUS
end