new vodolazrazdevalka1,vodolazrazdevalka2,vodolazpokupka,vodolazsnarajenie,vodolazwork[MAX_PLAYERS],vodolazpickup[MAX_PLAYERS][4],vodolazcount[
MAX_PLAYERS],
vodolazzahod[MAX_PLAYERS],vodolazballon[MAX_PLAYERS],vodolazmewok[MAX_PLAYERS],vodolazpredmet[4],ballonchet[MAX_PLAYERS]
;
new last_pick[MAX_PLAYERS];


Public OnGameModeInit()
{
//-------------------------------------------------[Маппинг водолаза]----------------------------------------------------------------
CreateObject(8493,809.2999900,-2274.8000000,5.1000000,11.8060000,2.7870000,234.8850000); //object(pirtshp01_lvs) (1)
CreateObject(17031,798.0999800,-2251.5000000,-33.6000000,0.0000000,0.0000000,270.0000000); //object(cunt_rockgp2_13) (1)
CreateObject(17031,822.4000200,-2300.8999000,-28.2000000,0.0000000,0.0000000,180.0000000); //object(cunt_rockgp2_13) (2)
CreateObject(3361,830.5999800,-2069.1001000,1.8000000,0.0000000,0.0000000,180.0000000); //object(cxref_woodstair) (1)
CreateObject(3361,836.5999800,-2069.1001000,5.8000000,0.0000000,0.0000000,179.9950000); //object(cxref_woodstair) (2)
CreateObject(3361,842.5999800,-2069.1001000,9.8000000,0.0000000,0.0000000,179.9950000); //object(cxref_woodstair) (3)
CreateObject(2669,800.4000200,-2256.7000000,-14.3000000,352.8010000,8.2480000,141.0410000); //object(cj_chris_crate) (1)
CreateObject(2669,802.7999900,-2267.2000000,-8.1000000,356.4380000,11.8400000,142.5610000); //object(cj_chris_crate) (2)
CreateObject(2669,784.2999900,-2264.1001000,-17.1000000,347.2670000,359.0630000,50.6880000); //object(cj_chris_crate) (3)
CreateObject(2669,827.7999900,-2287.3999000,-8.7000000,356.4130000,10.0160000,163.3540000); //object(cj_chris_crate) (4)
CreateObject(3566,828.7999900,-2061.8000000,14.3000000,0.0000000,0.0000000,90.7240000); //object(lasntrk1) (1)
CreateObject(3569,828.7999900,-2054.6001000,14.2000000,0.0000000,0.0000000,90.3620000); //object(lasntrk3) (1)
CreateObject(3879,822.5000000,-2069.8999000,-0.7000000,0.0000000,0.0000000,270.0000000); //object(ws_jetty_sfx) (1)
CreateObject(1237,847.7999900,-2070.3000000,11.9000000,0.0000000,0.0000000,21.4500000); //object(strtbarrier01) (1)
CreateObject(1237,847.7999900,-2069.6001000,11.9000000,0.0000000,0.0000000,21.4450000); //object(strtbarrier01) (2)
CreateObject(1237,847.7999900,-2068.8999000,11.9000000,0.0000000,0.0000000,21.4450000); //object(strtbarrier01) (3)
CreateObject(1237,847.7999900,-2068.2000000,11.9000000,0.0000000,0.0000000,21.4450000); //object(strtbarrier01) (4)
CreateObject(1237,847.0999800,-2070.3000000,11.9000000,0.0000000,0.0000000,21.4450000); //object(strtbarrier01) (5)
CreateObject(1237,846.4000200,-2070.3000000,11.9000000,0.0000000,0.0000000,21.4450000); //object(strtbarrier01) (6)
CreateObject(1237,845.7000100,-2070.3000000,11.9000000,0.0000000,0.0000000,21.4450000); //object(strtbarrier01) (7)
CreateObject(996,837.7999900,-2067.8999000,12.7000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (1)
CreateObject(996,829.2000100,-2067.8999000,12.7000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (2)
CreateObject(996,820.5999800,-2067.8999000,12.7000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier1) (3)
CreateObject(997,847.4000200,-2067.8999000,12.0000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier3) (3)
CreateObject(997,850.2000100,-2067.8999000,12.0000000,0.0000000,0.0000000,0.0000000); //object(lhouse_barrier3) (4)
CreateObject(3615,834.7999900,-2047.9000000,14.1000000,0.0000000,0.0000000,180.0000000); //object(sanmonbhut1_law2) (1)
CreateObject(3615,827.0000000,-2047.9000000,14.1000000,0.0000000,0.0000000,179.9950000); //object(sanmonbhut1_law2) (2)
//------------------------------------------------------------------------------------------------------------------------------------
vodolazpredmet[0] = CreatePickup(1579, 23, 800.4330,-2256.5886,-14.5330, 0);
vodolazpredmet[1] = CreatePickup(1578, 23, 803.3135,-2266.9058,-8.2645, 0);
vodolazpredmet[2] = CreatePickup(1576, 23, 827.6103,-2287.7349,-8.9776, 0);
vodolazpredmet[3] = CreatePickup(1580, 23, 784.3167,-2264.0300,-17.3545, 0);
vodolazrazdevalka1 = CreatePickup(1275, 23, 832.8159,-2047.5227,14.7301, 0);
vodolazrazdevalka2 = CreatePickup(1275, 23, 825.0991,-2047.5751,14.7301, 0);
vodolazpokupka = CreatePickup(19134, 23, 837.9875,-2054.5308,12.8672, 0);
vodolazsnarajenie = CreatePickup(19134, 23, 837.9866,-2061.6511,12.8672, 0);
Create3DTextLabel("Покупка снаряжения", 0x1E90FFFF, 837.9875,-2054.5308,12.8672, 10.0, 0, 1);
Create3DTextLabel("Начало работа\n{FF4500}Водолаз", 0x1E90FFFF, 832.8159,-2047.5227,14.7301, 10.0, 0, 1);
Create3DTextLabel("Начало работа\n{FF4500}Водолаз", 0x1E90FFFF, 825.0991,-2047.5751,14.7301, 10.0, 0, 1);
Create3DTextLabel("Приём добычи", 0x1E90FFFF, 837.9866,-2061.6511,12.8672, 10.0, 0, 1);
}

Public OnPlayerConnect()
{
vodolazwork[playerid] = 0;
vodolazcount[playerid] = 0;
vodolazzahod[playerid] = 0;
vodolazmewok[playerid] = 0;
vodolazballon[playerid] = 0;
ballonchet[playerid] = 0;
}

Public OnPlayerDisonnnect()
{
vodolazwork[playerid] = 0;
vodolazcount[playerid] = 0;
vodolazzahod[playerid] = 0;
vodolazmewok[playerid] = 0;
vodolazballon[playerid] = 0;
ballonchet[playerid] = 0;
}

Public OnPlayerPickUpPickup()
{
if(last_pick[playerid] > gettime()) return 1; // Если не прошло 5 секунд то ничего не делаем.
if(pickupid == vodolazrazdevalka1)
{
last_pick[playerid] = gettime() + 10; // Ставим 10 секунд на то что-бы пикап не срабатывал моментально.
// if(PlayerInfo[playerid][pLevel] < 3) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Устроится на работу водолаза можно только с 3-его уровня."); // Проверка на то что-бы можно было работать с 3-го LVLа,можете добавить.
if(vodolazwork[playerid] == 0)
{
ShowPlayerDialog(playerid,610,DIALOG_STYLE_MSGBOX,"{1E90FF}Водолаз","{808080}Вы хотите {008000}начать {808080}работу водолаза?","Да","Нет");
}
else
{
ShowPlayerDialog(playerid,611,DIALOG_STYLE_MSGBOX,"{1E90FF}Водолаз","{808080}Вы хотите {FF4500}завершить {808080}работу водолаза?","Да","Нет");
}
return 0;
}
//--------------------------------------------------------------------------
if(pickupid == vodolazrazdevalka2)
{
last_pick[playerid] = gettime() + 5; // Ставим 5 секунд на то что-бы пикап не срабатывал моментально.
// if(PlayerInfo[playerid][pLevel] < 3) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Устроится на работу водолаза можно только с 3-его уровня."); // Проверка на то что-бы можно было работать с 3-го LVLа,можете добавить.
if(vodolazwork[playerid] == 0)
{
ShowPlayerDialog(playerid,610,DIALOG_STYLE_MSGBOX,"{1E90FF}Водолаз","{808080}Вы хотите {008000}начать {808080}работу водолаза?","Да","Нет");
}
else
{
ShowPlayerDialog(playerid,611,DIALOG_STYLE_MSGBOX,"{1E90FF}Водолаз","{808080}Вы хотите {FF4500}завершить {808080}работу водолаза?","Да","Нет");
}
return 0;
}
//--------------------------------------------------------------------------
if(pickupid == vodolazpokupka)
{
last_pick[playerid] = gettime() + 5; // Ставим 5 секунд на то что-бы пикап не срабатывал моментально.
if(vodolazwork[playerid] == 0) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы не можете открыть это меню покупок т.к Вы не работаете водолазом.");
SendClientMessage(playerid,0x808080,"Подсказка: Выберите то-что Вам необходимо купить.");
SendClientMessage(playerid,0x808080,"Подсказка: Без балона Вы не сможете попасть под воду,без мешка не сможете унести более 2-ух драгоценностей.");
ShowPlayerDialog(playerid,612,DIALOG_STYLE_LIST,"{1E90FF}Водолаз | Сняражения","{808080}Баллон {1E90FF}6 литров | {008000}1000$\n{808080}Баллон {1E90FF}12 литров | {008000}2000$\n{808080}Баллон {1E90FF}18 литров | {008000}2900$\n{808080}Мешок | {008000}800$","Купить","Отмена");
return 0;
}
//--------------------------------------------------------------------------
if(pickupid == vodolazpredmet[0])
{
if(vodolazwork[playerid] == 0) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы не работает водолазом.");
if(vodolazpickup[playerid][0] == 1) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы уже подобрали предметы на этом месте.");
if(vodolazzahod[playerid] == 2 && vodolazmewok[playerid] == 0) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы не купили мешок что-бы унести более 2-ух предметов.");
vodolazpickup[playerid][0] ++;
vodolazzahod[playerid] ++;
vodolazcount[playerid] += 600;
new string[64];
format(string,sizeof(string),"Вы взяли предметов на сумму %d$.",vodolazcount[playerid]);
SendClientMessage(playerid,0xFF4500FF,string);
return 0;
}
//--------------------------------------------------------------------------
if(pickupid == vodolazpredmet[1])
{
if(vodolazwork[playerid] == 0) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы не работает водолазом.");
if(vodolazpickup[playerid][1] == 1) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы уже подобрали предметы на этом месте.");
if(vodolazzahod[playerid] == 2 && vodolazmewok[playerid] == 0) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы не купили мешок что-бы унести более 2-ух предметов.");
vodolazpickup[playerid][1] ++;
vodolazzahod[playerid] ++;
vodolazcount[playerid] += 600;
new string[64];
format(string,sizeof(string),"Вы взяли предметов на сумму %d$.",vodolazcount[playerid]);
SendClientMessage(playerid,0xFF4500FF,string);
return 0;
}
//--------------------------------------------------------------------------
if(pickupid == vodolazpredmet[2])
{
if(vodolazwork[playerid] == 0) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы не работает водолазом.");
if(vodolazpickup[playerid][2] == 1) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы уже подобрали предметы на этом месте.");
if(vodolazzahod[playerid] == 2 && vodolazmewok[playerid] == 0) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы не купили мешок что-бы унести более 2-ух предметов.");
vodolazpickup[playerid][2] ++;
vodolazzahod[playerid] ++;
vodolazcount[playerid] += 600;
new string[64];
format(string,sizeof(string),"Вы взяли предметов на сумму %d$.",vodolazcount[playerid]);
SendClientMessage(playerid,0xFF4500FF,string);
return 0;
}
//--------------------------------------------------------------------------
if(pickupid == vodolazpredmet[3])
{
if(vodolazwork[playerid] == 0) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы не работает водолазом.");
if(vodolazpickup[playerid][3] == 1) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы уже подобрали предметы на этом месте.");
if(vodolazzahod[playerid] == 2 && vodolazmewok[playerid] == 0) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: Вы не купили мешок что-бы унести более 2-ух предметов.");
vodolazpickup[playerid][3] ++;
vodolazzahod[playerid] ++;
vodolazcount[playerid] += 600;
new string[64];
format(string,sizeof(string),"Вы взяли предметов на сумму %d$.",vodolazcount[playerid]);
SendClientMessage(playerid,0xFF4500FF,string);
return 0;
}
//--------------------------------------------------------------------------
if(pickupid == vodolazsnarajenie)
{
last_pick[playerid] = gettime() + 5; // Ставим 5 секунд на то что-бы пикап не срабатывал моментально.
if(vodolazzahod[playerid] == 0) return SendClientMessage(playerid,0xFF4500FF,"Вы ничего не принесли.");
new string[128];
format(string,sizeof(string),"Вы заработали %d$ и всего Вы погрузились %d раз.",vodolazcount[playerid],ballonchet[playerid]);
SendClientMessage(playerid,0x1E90FFFF,string);
PlayerInfo[playerid][pMoney] += vodolazcount[playerid];
vodolazcount[playerid] = 0,vodolazzahod[playerid] = 0;
vodolazpickup[playerid][0] = 0,vodolazpickup[playerid][1] = 0,vodolazpickup[playerid][2] = 0,vodolazpickup[playerid][3] = 0;
if(ballonchet[playerid] == 6 && vodolazballon[playerid] == 1)
{
ballonchet[playerid] = 0,vodolazmewok[playerid] = 0;
SendClientMessage(playerid,0xFF4500FF,"У Вас пустой баллон,Вы не сможете продолжать погружение. А так-же Вы порвали свой мешок.");
return 1;
}
else if(ballonchet[playerid] == 12 && vodolazballon[playerid] == 2)
{
ballonchet[playerid] = 0;
vodolazmewok[playerid] = 0;
SendClientMessage(playerid,0xFF4500FF,"У Вас пустой баллон,Вы не сможете продолжать погружение. А так-же Вы порвали свой мешок.");
return 1;
}
else if(ballonchet[playerid] == 18 && vodolazballon[playerid] == 3)
{
ballonchet[playerid] = 0;
vodolazmewok[playerid] = 0;
SendClientMessage(playerid,0xFF4500FF,"У Вас пустой баллон,Вы не сможете продолжать погружение. А так-же Вы порвали свой мешок.");
return 1;
}
ballonchet[playerid] ++;
return 0;
}
}

##В любой односекундный таймер:

if(IsPlayerInWater(playerid) && vodolazballon[playerid] > 1)
{
SetPlayerHealth(playerid,100);
}

Public OnDialogResponse()
{
if(dialogid == 610) // Начало работы
{
if(!response) return SendClientMessage(playerid,0xFF4500FF,"Вы отказались от работы.");
vodolazwork[playerid] = 1;
SetPlayerSkin(playerid,154);
SendClientMessage(playerid,0x808080FF,"Вы успешно {1E90FF}начали работу {008000}водолаза{808080}.");
SendClientMessage(playerid,0xFF4500FF,"Подсказка: Что-бы работать необходимо купить сняражение.");
SendClientMessage(playerid,0xFF4500FF,"Подсказка: Потом отправится к кораблю и подобрать затонувшие драгоценности...");
SendClientMessage(playerid,0xFF4500FF,"Подсказка: после чего их притащить обратно на берег и получить за них деньги.");
SendClientMessage(playerid,0xFF4500FF,"Подсказка: Корабль отмечен {FF0000}красной {FF4500}меткой на карте.");
SetPlayerCheckpoint(playerid, 804.3254,-2269.0549,-0.5078,1);
}
//--------------------------------------------------------------------------
if(dialogid == 611) // Завершение работы
{
if(!response) return SendClientMessage(playerid,0xFF4500FF,"Вы отказались от завершения работы.");
vodolazwork[playerid] = 0,vodolazballon[playerid] = 0,vodolazmewok[playerid] = 0,ballonchet[playerid] = 0;
SetPlayerSkin(playerid,PlayerInfo[playerid][pSkin]);
SendClientMessage(playerid,0x808080FF,"Вы успешно {FF4500}завершили{808080} работу {008000}водолаза{808080}.");
DisablePlayerCheckpoint(playerid);
}
//--------------------------------------------------------------------------
if(dialogid == 612) // Покупка снаряжения
{
if(!response) return 1;
if(listitem == 0) // Баллон на 6 литров
{
if(PlayerInfo[playerid][pMoney] < 1000) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: У Вас недостаточно денег.");
if(vodolazballon[playerid] > 1) return SendClientMessage(playerid,0xFF4500FF,"Для того что-бы купить новый баллон,израсходуйте старый.");
vodolazballon[playerid] = 1;
SendClientMessage(playerid,0x1E90FFFF,"Вы успешно приобрели баллон на 6 литров.");
SendClientMessage(playerid,0x808080FF,"Подсказка: Вы сможете сделать 6 погружений под воду.");
PlayerInfo[playerid][pMoney] -= 1000;
}
if(listitem == 1) // Баллон на 12 литров
{
if(PlayerInfo[playerid][pMoney] < 2000) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: У Вас недостаточно денег.");
if(vodolazballon[playerid] > 1) return SendClientMessage(playerid,0xFF4500FF,"Для того что-бы купить новый баллон,израсходуйте старый.");
vodolazballon[playerid] = 2;
SendClientMessage(playerid,0x1E90FFFF,"Вы успешно приобрели баллон на 12 литров.");
SendClientMessage(playerid,0x808080FF,"Подсказка: Вы сможете сделать 12 погружений под воду.");
PlayerInfo[playerid][pMoney] -= 2000;
}
if(listitem == 2) // Баллон на 16 литров
{
if(PlayerInfo[playerid][pMoney] < 2900) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: У Вас недостаточно денег.");
if(vodolazballon[playerid] > 1) return SendClientMessage(playerid,0xFF4500FF,"Для того что-бы купить новый баллон,израсходуйте старый.");
vodolazballon[playerid] = 3;
SendClientMessage(playerid,0x1E90FFFF,"Вы успешно приобрели баллон на 18 литров.");
SendClientMessage(playerid,0x808080FF,"Подсказка: Вы сможете сделать 18 погружений под воду.");
PlayerInfo[playerid][pMoney] -= 2900;
}
if(listitem == 3) // Мешок
{
if(PlayerInfo[playerid][pMoney] < 800) return SendClientMessage(playerid,0xFF4500FF,"[Ошибка]: У Вас недостаточно денег.");
if(vodolazmewok[playerid] == 1) return SendClientMessage(playerid,0xFF4500FF,"У Вас уже есть мешок.");
vodolazmewok[playerid] = 1;
SendClientMessage(playerid,0x1E90FFFF,"Вы успешно приобрели мешок");
SendClientMessage(playerid,0x808080FF,"Подсказка: Теперь Вы можете унести 4 предмета.");
PlayerInfo[playerid][pMoney] -= 800;
}
}

forward IsPlayerInWater(playerid);
public IsPlayerInWater(playerid)
{
        new Float:FXF_wpos[3];
        GetPlayerPos(playerid,FXF_wpos[0],FXF_wpos[1],FXF_wpos[2]);
        if((FXF_wpos[2] > 0.00) || IsPlayerInZone(playerid,1808.2019,1424.5392,-2230.5024,-2347.7979)) { return 0; }
        else if((FXF_wpos[2] < 0.00) && (FXF_wpos[2] > -1.00)) { return 1; }
        else if(FXF_wpos[2] < -1.00) { return 2; }
        return 0;
}
//--------------------------------Под конец мода----------------------------------------------
forward IsPlayerInZone(playerid, Float:minX, Float:minY, Float:maxX, Float:maxY);
public IsPlayerInZone(playerid, Float:minX, Float:minY, Float:maxX, Float:maxY)
{
    new Float:FXF_ZoneX, Float:FXF_ZoneY, Float:FXF_ZoneZ;
    GetPlayerPos(playerid, FXF_ZoneX, FXF_ZoneY, FXF_ZoneZ);
     if((FXF_ZoneX >= minX && FXF_ZoneX <= maxX) && (FXF_ZoneY >= minY && FXF_ZoneY <= maxY) && FXF_ZoneZ <= 500)
    {
        return 1;
    }
     return 0;
 }
 ##Команда для тп водолазам, рекомендую использовать для тестов
 CMD:test(playerid,params[])
{
SetPlayerPos(playerid,838.8438,-2027.2905,12.8672);
SetPlayerInterior(playerid,0);
SetPlayerVirtualWorld(playerid,0);
SendClientMessage(playerid,0xFF4500FF,"Вы телепортировались на место работы водолазов. {1E90FF}By Pawno-SoS.");
return 1;
}
//--------------------------------------------------------------------------
CMD:test1(playerid,params[])
{
SetPlayerPos(playerid,804.3254,-2269.0549,-0.5078);
SetPlayerInterior(playerid,0);
SetPlayerVirtualWorld(playerid,0);
SendClientMessage(playerid,0xFF4500FF,"Вы телепортировались на корабль. {1E90FF}By Pawno-SoS.");
return 1;
}