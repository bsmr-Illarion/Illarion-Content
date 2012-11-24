--------------------------------------------------------------------------------
-- NPC Name: Mirarie Bragolin                                            None --
-- NPC Job:  none                                                             --
--                                                                            --
-- NPC Race: dwarf                      NPC Position:  128, 609, 0            --
-- NPC Sex:  female                     NPC Direction: south                  --
--                                                                            --
-- Author:   Estralis Seborian + Miriam                                       --
--                                                       easyNPC Parser v1.21 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (1, 128, 609, 0, 4, 'Mirarie Bragolin', 'npc.mirarie_bragolin', 1, 0, 0, 255, 255, 255, 255, 255, 255);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.talk")
module("npc.mirarie_bragolin", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, ">", 14));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Error] Something went wrong, please inform a developer."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Mirarie Bragolin, the dwarven explorer. Keywords: Quest, Mission, Adventure, TRIGGER4, profession."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Mirarie Bragolin, die zwergische Entdeckerin. Schl�sselw�rter: Quest, Mission, Abenteuer, BLABLA, Beruf."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greetings");
talkEntry:addTrigger("Be greeted");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addResponse("Greetings. Greetings!");
talkEntry:addResponse("Greetings. How are you today?");
talkEntry:addResponse("Greetings. Isn't the weather nice today?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��e");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Seid gegr��t");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addTrigger("mit dir");
talkEntry:addResponse("Gr��e, gr��e!");
talkEntry:addResponse("Gr��e. Wie geht es dir?");
talkEntry:addResponse("Gr��e. Haben wie heute nicht sch�nes Wetter?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greebas");
talkEntry:addTrigger("Greebs");
talkEntry:addResponse("Greetings, greetings!");
talkEntry:addResponse("Greetings. How are you today?");
talkEntry:addResponse("Greetings. Isn't the weather nice today?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greebas");
talkEntry:addTrigger("Greebs");
talkEntry:addResponse("Gr��e, gr��e!");
talkEntry:addResponse("Gr��e. Wie geht es dir?");
talkEntry:addResponse("Gr��e. Haben wie heute nicht sch�nes Wetter?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("Farewell! Farewell!");
talkEntry:addResponse("Adieu Adieu!");
talkEntry:addResponse("#me waves at you with a happy grin on her face.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Auf Bald! Auf Bald!");
talkEntry:addResponse("Adieu! Adieu!");
talkEntry:addResponse("#me winkt dir mit einem vergn�gten grinsen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Farewell! Farewell!");
talkEntry:addResponse("Adieu Adieu!");
talkEntry:addResponse("#me waves at you with a happy grin on her face.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Auf Bald! Auf Bald!");
talkEntry:addResponse("Adieu! Adieu!");
talkEntry:addResponse("#me winkt dir mit einem vergn�gten grinsen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I'm fine. And you? How are you?");
talkEntry:addResponse("I am happy. I'm always happy, except for the times then I'm sad.");
talkEntry:addResponse("I'm have no reason to complain. I'm fine.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Mir geht es gut. Wie geht es dir?");
talkEntry:addResponse("Ich bin immer gl�cklich, au�er wenn ich mal traurig bin.");
talkEntry:addResponse("Ich kann nicht klagen. Mir geht es gut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Mirarie Bragolin.");
talkEntry:addResponse("Mirarie Bragolin, that's my name.");
talkEntry:addResponse("My Name is Mirarie Bragolin.Who are you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Mirarie Bragolin.");
talkEntry:addResponse("Mirarie Bragolin, so hei�e ich.");
talkEntry:addResponse("Mein Name ist Mirarie Bragolin. Wer bist du?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("I'm no trader. I'm an explorer.");
talkEntry:addResponse("I do not want to trade. But I want to lean about other cultures.");
talkEntry:addResponse("I am not a merchant. I write books.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich bin kein H�ndler. Ich bin eine Entdeckerin.");
talkEntry:addResponse("Ich mag nicht handeln. Aber ich mag es �ber fremde Kulturen zu lernen.");
talkEntry:addResponse("Ich bin keine H�ndlerin. Ich schreibe B�cher.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("I was invited by the queen to come here and write about Cadomyr. I feel honored. I'll do my best to write a book that makes the queen happy.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Ich wurde von der K�nigin eingeladen um �ber Cadomyr zu schreiben. Ich f�hle mich geehrt und ich werde mich anstrengen um ein Buch zu schreiben, dass der K�nigin gef�llt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I came here to learn what's life like in Cadomyr. Well, I do not like the sun, but it is very interesting to see how people live in this environment.");
talkEntry:addResponse("I'll write a book about cadomyran knight hood, before I go home to my clan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich kam hier her um �ber das Leben in Cadomy zu lernen. Nun, ich mag die Sonne nicht, doch ist es sehr interessant zu sehen wie man in einer solchem Umgebung lebt.");
talkEntry:addResponse("Ich werde ein Buch �ber das cadomyrische Rittertum schreiben, bevor ich wieder heimkehre zu meinem Klan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I came here to learn what's life like in Cadomyr. Well, I do not like the sun, but it is very interesting to see how people live in this environment.");
talkEntry:addResponse("I'll write a book about cadomyran knight hood, before I go home to my clan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich kam hier her um �ber das Leben in Cadomy zu lernen. Nun, ich mag die Sonne nicht, doch ist es sehr interessant zu sehen wie man in einer solchem Umgebung lebt.");
talkEntry:addResponse("Ich werde ein Buch �ber das cadomyrische Rittertum schreiben, bevor ich wieder heimkehre zu meinem Klan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Oh. I do not know this place. Will you tell me stories about it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Oh. Ich kenne diesen Ort nicht, wirst du mir Geschichten dar�ber erz�hlen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("I am");
talkEntry:addTrigger("my name");
talkEntry:addResponse("Nice to meet you. I am Mirarie Bragolin.");
talkEntry:addResponse("A Pleasure to meet you. Will you drop by again?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ich bin");
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Freut mich. Ich bin Mirarie Bragolin.");
talkEntry:addResponse("Ganz meinerseits. Kommst du jetzt �fters vorbei?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Galmair or Runewick. He's the ruler of one of these towns, that's all I know.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Galmair oder Runewick. Er herrscht �ber eine dieser St�dte, das ist alles was ich wei�.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("I came here to lean about Cadomyr. Neither Runewick or Galmair are this  fascinating.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Ich bin hierher gekommen um �ber Cadomyr zu lernen. Weder Runewick noch Galmair sind so spannend.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("He's the ruler of Runwick, rigth? Oh, wait... If I think about it he could also be the ruler of Galmair...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Er ist der Herrscher von Runewick, stimmt's? Oh, halt... Wenn ich dar�ber nachdenke, k�nnte er auch der Herrscher von Galmair sein...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Ich bin hierher gekommen um �ber Cadomyr zu lernen. Weder Runewick noch Galmair sind so spannend.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("I came here to lean about Cadomyr. Not Runewick or Galmair are so fascinating.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Honour to the queen! Do I sound like a cadomyran citizen?");
talkEntry:addResponse("She asked me to write a book about Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ehre der K�nigin! Klinge ich wie ein B�rger aus Cadomyr?");
talkEntry:addResponse("Sie beauftragte mich damit ein Buch �ber Cadomyr zu schreiben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("I love this place. I'm so happy I can live here and study the people around me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Ich liebe diesen Ort. Ich bin so froh, dass ich hier sein kann und die Leute um mich herum studieren darf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Writing History I"));
talkEntry:addResponse("You want to help me? Well...Cound you bring me five bottles of water, please? I lost mine.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschichte schreiben I"));
talkEntry:addResponse("Du m�chtest mit helfen? Nun, ... Kannst du mir bitte f�nf Flaschen voll Wasser bringen? Ich habe meine verloren.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("message");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest]  Writing history I"));
talkEntry:addResponse("You want to help me? Well...Cound you bring me five bottles of water, please? I lost mine.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschichte schreiben I"));
talkEntry:addResponse("Du m�chtest mir helfen? Nun, ... Kannst du mir bitte f�nf Flaschen voll Wasser bringen? Ich habe meine verloren.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2496, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I'm thirsty...Cound you bring me five bottles of water, please?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2496, "all", "<", 5, nil));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich bin so durstig ... Kannst du mir bitte f�nf Flaschen Wasser bringen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2496, "all", "<", 5, nil));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("message");
talkEntry:addResponse("I'm thirsty...Cound you bring me five bottles of water, please?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2496, "all", "<", 5, nil));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("Ich bin so durstig ... Kannst du mir bitte f�nf Flaschen voll Wasser bringen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2496, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 2 silver coins. You advance in Queen Rosaline's favour."));
talkEntry:addResponse("Thank you. You saved me! I'll mention your name in the book. I promise.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 300));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2496, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2496, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 2 silver coins."));
talkEntry:addResponse("Thank you. You saved me! I'll mention your name in the book. I promise.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 300));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2496, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2496, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 2 Silberst�cke. Dein Ansehen bei K�nigin Rosaline steigt."));
talkEntry:addResponse("Danke. Du hast mich gerettet. Ich werde dich in meinem Buch erw�hnen. Ich verspreche es!");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 300));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2496, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2496, "all", ">", 4, nil));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 2 Silberst�cke."));
talkEntry:addResponse("Danke. Du hast mich gerettet. Ich werde dich in meinem Buch erw�hnen. Ich verspreche es!");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 300));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2496, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Writing history II: You received a message for Thomas Dalenus."));
talkEntry:addResponse("Could you do me a favour again? Would you go and ask Thomas Dalenus, if he thinks my chapter on human fashion is correct the way I wrote it? Please give him this letter.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschichte schreiben II: Du hast eine Nachricht f�r Thomas Dalenus erhalten."));
talkEntry:addResponse("Kannst du mir einen Gefallen tun? W�rdest du Thomas Dalenus fragen, ob mein Kapitel �ber die Mode der Menschen so in Ordnung ist? Bitte zeig ihm diesen Brief.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 2));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest]  Writing history II: You received a message for Thomas Dalenus."));
talkEntry:addResponse("Could you do me a favour again? Would you go and ask Thomas Dalenus,if he thinks my chapter on human fashion is correct the way I wrote it. Please give him this letter.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschichte schreiben II: Du hast eine Nachricht f�r Thomas Dalenus erhalten."));
talkEntry:addResponse("Kannst du mir einen Gefallen tun? W�rdest du Thomas Dalenus, fragen ob mein Kapitel �ber die Mode der Menschen so in Ordnung ist? Bitte zeig ihm diesen Brief.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Would you go and see Thomas Dalenus for me? Just give him the letter, please.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("W�rdest du Thomas Dalenus f�r mich aufsuchen? Gib ihm einfach den Brief, bitte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 3));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addResponse("Would you go and see Thomas Dalenus for me? Just give him the letter, please.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("W�rdest du Thomas Dalenus f�r mich aufsuchen? Gib ihm einfach den Brief, bitte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 5 silver coins. You advance in Queen Rosaline's favour."));
talkEntry:addResponse("Oh, thanks a lot! Take this as your reward.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 5));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 5 silver coins."));
talkEntry:addResponse("Oh, thanks a lot! Take this as your reward.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 600));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 5 Silberst�cke. Dein Ansehen bei K�nigin Rosaline steigt."));
talkEntry:addResponse("Oh, vielen vielen Dank! Bitte nimm dies als Gegenleistung.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.item.item(92, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 5));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 4));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 5 Silberst�cke "));
talkEntry:addResponse("Oh, vielen vielen Dank. Bitte nimm dies als Gegenleistung.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 600));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest]  Writing history III: You received a message for Grakamesh."));
talkEntry:addResponse("You want to help me? That's good. I need someone to deliver a messege for Grakamesh. He wanted to tell me about the table manners of orcs.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 5));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschichte schreiben III: Du hast eine Nachricht f�r Grakamesh erhalten."));
talkEntry:addResponse("Du m�chtest mir helfen? Das trifft sich gut. Ich brauche jemanden der eine Nachricht an Grakamesh �berbringt. Er wollte mir etwas �ber orkische Tischsitten erz�hlen.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 5));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest]  Writing history III: You received a message for Grakamesh."));
talkEntry:addResponse("You want to help me? That's good. I need someone to deliver a messege for Grakamesh. He wanted to tell me about the table manners of orcs.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 5));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschichte schreiben III: Du hast eine Nachricht f�r Grakamesh erhalten."));
talkEntry:addResponse("Du m�chtest mir helfen? Das trifft sich gut. Ich brauche jemanden der eine Nachricht an Grakamesh �berbringt. Er wollte mir etwas �ber orkische Tischsitten erz�hlen.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I asked you to deliver a messege for Grakamesh. I really want to write about the tablemanners of orcs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 6));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich bat dich eine Nachricht an Grakamesh zu �berbringen. Ich m�chte unbedingt �ber orkische Tischsitten schreiben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 6));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addResponse("I asked you to deliver a messege for Grakamesh. I really want to write about the tablemanners of orcs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 6));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("Ich bat dich eine Nachricht an Grakamesh zu �berbringen. Ich m�chte unbedingt �ber orkische Tischsitten schreiben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded chain mail. You advance in Queen Rosaline's favour."));
talkEntry:addResponse("So you gave the messege to Grakamesh? Thank you. What would I do without you? Here, please take this present as your reward.");
talkEntry:addConsequence(npc.base.consequence.item.item(101, 1, 655, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 8));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded with a chain mail."));
talkEntry:addResponse("So you gave the messege to Grakamesh? Thank you. What would I do without you? Here, please take this present as your reward.");
talkEntry:addConsequence(npc.base.consequence.item.item(101, 1, 655, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 7));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst ein Kettenhemd. Dein Ansehen bei K�nigin Rosaline steigt."));
talkEntry:addResponse("So, du hast die Nachricht an Grakamesh gegeben. Danke sehr. Was w�rde ich ohne dich tun? Hier, bitte nimm dieses Geschenk zu Dank.");
talkEntry:addConsequence(npc.base.consequence.item.item(101, 1, 655, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 8));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 7));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst ein Kettenhemd."));
talkEntry:addResponse("So, du hast die Nachricht an Grakamesh gegeben. Danke sehr. Was w�rde ich ohne dich tun? Hier, bitte nimm dieses Geschenk zu Dank.");
talkEntry:addConsequence(npc.base.consequence.item.item(101, 1, 655, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest]  Writing history IV: You received a message for William Daloire."));
talkEntry:addResponse("I need more information for writing my book. I heard that there is a merchant selling herbs? In Runewick, who could tell me about the climate there. Would you go and ask for me, my friend?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 8));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Writing history IV: Du hast eine Nachricht f�r William Daloire erhalten."));
talkEntry:addResponse("Ich brauche mehr Informationen um mein Buch zu schreiben. In Runewick lebt ein Kr�uterh�ndler, der mir wohl etwas �ber das Klima sagen kann. Mein Freund, wirst du f�r mich dort hingehen und fragen?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 8));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Geschichte schreiben IV: You received a message for William Daloire."));
talkEntry:addResponse("I need more information for writing my book. I heard that there is a merchant selling herbs? In Runewick, who could tell me about the climate there. Would you go and ask for me, my friend?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 8));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschichte schreiben IV: Du hast eine Nachricht f�r William Daloire erhalten."));
talkEntry:addResponse("Ich brauche mehr Informationen um mein Buch zu schreiben. In Runewick lebt ein Kr�uterh�ndler, der mir wohl etwas �ber das Klima sagen kann. Mein Freund, wirst du f�r mich dort hingehen und fragen?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Please go to Runewick and ask William Daloire about the climate there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 9));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Bitte geh nach Runewick und frag' William Daloire �ber das Klima.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 9));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addResponse("Please go to Runewick and ask William Daloire about the climate there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 9));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("Bitte geh nach Runewick und frag' NPC �ber das Klima.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 400 copper coins. You advance in Queen Rosaline's favour."));
talkEntry:addResponse("That's just what I needed to kown. Thank you so much! I'll give you this in return for your help. And I shall mention you in my book once more.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 400));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 11));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 400 copper coins."));
talkEntry:addResponse("That's just what I needed to kown. Thank you so much! I'll give you this in return for your help. And I shall mention you in my book once more.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 400));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 11));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 10));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 400 Kupferst�cke. Dein Ansehen bei K�nigin Rosaline steigt."));
talkEntry:addResponse("Diese Information hat mir noch gefehlt. Vielen, vielen Dank! Bitte nimm dies hier f�r deine Hilfe an. Und ich werde dich nochmal im Buch erw�hnen!");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 400));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 11));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 10));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 400 Kupferst�cke."));
talkEntry:addResponse("Diese Information hat mir noch gefehlt. Vielen, vielen Dank! Bitte nimm dies hier f�r deine Hilfe an. Und ich werde dich nochmal im Buch erw�hnen!");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 400));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 11));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest]  Writing history V: You received a message for the Don of Galmair, Valerio Guilianni."));
talkEntry:addResponse("Hello my friend, thanks for your help. This messege is really important. It's for the Don of Galmair. I heard that he did propose to the queen of Cadomyr. I need to know more about this, this is interesting stuff to write about.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 11));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschichte schreiben V: Du hast eine Nachricht f�r den Don von Galmair, Valerio Guilianni erhalten."));
talkEntry:addResponse("Hallo mein Freund. Diese Nachricht ist wirklich wichtig. Sie ist f�r den Don von Galmair bestimmt. Ich h�rte er habe der K�nigin von Cadomyr den Hof gemacht. Dar�ber muss ich mehr erfahren, das ist interessanter Stoff um ein Buch zu schreiben.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 11));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest]  Writing history V: You received a message for the Don of Galmair, Valerio Guilianni."));
talkEntry:addResponse("Hello my friend, thanks for your help. This messege is really important. It's for the Don of Galmair. I heard that he did propose to the queen of Cadomyr. I need to know more about this, this is interesting stuff to write about.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 11));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschichte schreiben V: Du hast eine Nachricht f�r den Don von Galmair, Valerio Guilianni erhalten."));
talkEntry:addResponse("Hallo mein Freund. Diese Nachricht ist wirklich wichtig. Sie ist f�r den Don von Galmair bestimmt. Ich h�rte er habe der K�nigin von Cadomyr den Hof gemacht. Dar�ber muss ich mehr erfahren, das ist interessanter Stoff um ein Buch zu schreiben.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("You forgot about the messege? It is really imtortant. It goes to the Don of Galmair, Valerio Guilianni");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 12));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Du hast die Nachricht vergessen? Sie ist wirklich wichtig. Sie ist an den Don von Galmair Valerio Guilianni bestimmt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 12));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addResponse("You forgot about the messege? It is really imtortant. It goes to the Don of Galmair, Valerio Guilianni.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 12));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("Du hast die Nachricht vergessen? Sie ist wirklich wichtig. Sie ist an den Don von Galmair Valerio Guilianni bestimmt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 13));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded fire dagger. You advance in Queen Rosaline's favour."));
talkEntry:addResponse("So, you got an answer? I see... That's just amazing!  By the gods! Your story will fill a whole chapter in the book. Oh, before I forget, here, this is for you my friend and thanks again, my friend.");
talkEntry:addConsequence(npc.base.consequence.item.item(2742, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 14));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 13));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded with fire dagger."));
talkEntry:addResponse("So, you got answer? I see... That's just amazing!  By the gods! Your story will fill a whole chapter in the book. Oh, before I forget, here, this is for you, my friend and thanks again, my friend.");
talkEntry:addConsequence(npc.base.consequence.item.item(2742, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 14));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen Feuerdolch. Dein Ansehen bei K�nigin Rosaline steigt."));
talkEntry:addResponse("So, hast du also die Antwort?  Ich verstehe ? Das ist gro�artig! Bei den G�ttern! Deine Geschichte wird ein ganzese Kapitel meines Buches f�llen! Oh, befor ich es vergesse, hier, das ist f�r dich, mein Freund und Danke nochmals.");
talkEntry:addConsequence(npc.base.consequence.item.item(2742, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 14));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 13));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen Feuerdolch."));
talkEntry:addResponse("So, hast du also die Antwort?  Ich verstehe ? Das ist gro�artig! Bei den G�ttern! Deine Geschichte wird ein ganzese Kapitel meines Buches f�llen! Oh, befor ich es vergesse, hier, das ist f�r dich, mein Freund und Danke nochmals.");
talkEntry:addConsequence(npc.base.consequence.item.item(2742, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(1000, "=", 14));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 14));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Hello, my friend. Thanks to you I've just finished writing the last chapter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 14));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Hallo mein Freund. Nur dank dir konnte ich das letzte Kapitel fertigstellen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 14));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addResponse("Hello, my friend. Thanks to you I've just finished writing the last chapter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(1000, "=", 14));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("Hallo mein Freund. Nur dank dir konnte ich das letzte Kapitel fertigstellen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me macht sich Notizen.", "#me takes notes.");
talkingNPC:addCycleText("Das klingt spannend! Moment...wie schreibt man das?", "That sounds fascinating!Wait... how do you spell that?");
talkingNPC:addCycleText("Ehre der K�nigin!", "Honor to the Queen!");
talkingNPC:addCycleText("#me schaut sich neugierig um.", "#me lookes around couriously.");
talkingNPC:addCycleText("#me l�chelt freundlich.", "#me smiles brightly.");
talkingNPC:addCycleText("Ich mag Cadomyr.", "I like Cadomyr.");
talkingNPC:addCycleText("#me wischt sich den Schwei� von der Stirn.", "#me wipes the sweat off her forehead.");
talkingNPC:addCycleText("Wenn es doch nur nicht so warm w�re...", "I wish, it wouldn't be that hot...");
mainNPC:addLanguage(0);
mainNPC:addLanguage(2);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Das ist ein NPC ist Mirarie Bragolin, die Zwergin.", "This NPC  is Mirarie Bragolin, the dwarfess.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(npcChar, texttype, message, speaker) mainNPC:receiveText(npcChar, speaker, message); end;
function nextCycle(npcChar) mainNPC:nextCycle(npcChar); end;
function lookAtNpc(npcChar, char, mode) mainNPC:lookAt(npcChar, char, mode); end;
function useNPC(npcChar, char, counter, param) mainNPC:use(npcChar, char); end;
initNpc();
initNpc = nil;
-- END