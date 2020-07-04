function Main()
{
	SetServerName("[RO]Romania Roleplay");
	SetGameModeName("RRP 0.0.0[EN/RO]");
	SetPassword("dt_over_dx");
}
Main();
dofile("scripts/functions.nut");
dofile("scripts/events.nut");
dofile("scripts/player.nut");
dofile("scripts/jobs.nut");
dofile("scripts/client.nut");

PLAYERS <- array(100,0);

DB <- ConnectSQL( "Database.db" );
QuerySQL(DB,"CREATE TABLE IF NOT EXISTS Cont(Nume TEXT, Parola TEXT, AdminLvl INT, Limba INT)");

QuerySQL(DB,"CREATE TABLE IF NOT EXISTS Status(Nume TEXT,Bani INT,BaniBanca INT, Clan TEXT,Job INT,"+
"RobSkill INT,CopSkill INT,MedicSkill INT,FiremanSkill INT,HunterSkill INT,BankGuardSkill INT,TruckerSkill INT,"+
"TerroristSkill INT,GangsterSkill INT,ArmsDealerSkill INT,RacesFinised INT,EventsFinished INT,VIPLvl INT,Hunger INT,Skin INT)");

QuerySQL(DB,"CREATE TABLE IF NOT EXISTS Masini(CarID INTEGER PRIMARY KEY AUTOINCREMENT,ModelID INT,PosX FLOAT,PosY FLOAT,PosZ FLOAT,"+
"RotX FLOAT,RotY FLOAT,RotZ FLOAT,RotW FLOAT,Color1 INT,Color2 INT,Fuel INT,Nitro INT)");

QuerySQL(DB,"CREATE TABLE IF NOT EXISTS Props(PropID INTEGER PRIMARY KEY AUTOINCREMENT, Nume TEXT, PosX FLOAT,PosY FLOAT, PosZ FLOAT, Owner TEXT, Shared1 TEXT,Shared2 TEXT,Shared3 TEXT)");

QuerySQL(DB,"CREATE TABLE IF NOT EXISTS RobPoints(Nume TEXT,PosX FLOAT,PosY FLOAT,PosZ FLOAT)");

QuerySQL(DB,"CREATE TABLE IF NOT EXISTS Bans(Victim TEXT,Admin TEXT,Reason TEXT,Timp TEXT)");