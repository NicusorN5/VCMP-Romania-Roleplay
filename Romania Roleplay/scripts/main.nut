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
QuerySQL(DB,"CREATE DATABASE IF NOT EXISTS Cont(Nume TEXT,Parola TEXT,AdminLvl INT,Limba INT)");
QuerySQL(DB,"CREATE DATABASE IF NOT EXISTS Status(Nume TEXT,Bani INT,BaniBanca INT)");