class Player
{
	constructor(id)
	{
		ID = id;
		Name = ""+FindPlayer(id).Name;
		Language = 0;
		Cash = 0;
		BankCash = 0;
		AdminLvl = 0;
		Clan = "";
		Job = 0;
	}
	ID = 0;
	Name = null;
	Password = null;
	Language = 0; // 0 - eng, 1 - romana
	Cash = 0;
	BankCash = 0;
	AdminLvl = 0;
	Clan = "";
	Job = 0;
	RobSkill = 0;
	CopSkill = 0;
	MedicSkill = 0;
	FiremanSkill = 0;
	HunterSkill = 0;
	BankGuardSkill = 0;
	TruckerSkill = 0;
	TerroristSkill = 0;
	GangsterSkill =0;
	ArmsDealerSkill = 0;
	RacesFinished = 0;
	EventFinished = 0;
	VIP = 0;
	
	LastPosX = 0;
	LastPosY = 0;
	LastPosZ = 0;

	SpamMessages = 0;
	Logged = false;
	LoginAttempts = 0;
}
//Functii interene
function Player::GetInst()
{
	return ::FindPlayer(this.ID);
}


//Functii data de baze
function Player::GetPassword()
{
	local n = ::escapeSQLString(this.Nume);
	local q = ::QuerySQL("SELECT Password FROM Cont WHERE Nume ='"+n+"'");
	if(q)
	{
		local pass = ::GetSQLColumnData(q,0);
		::FreeSQLQuery(q);
		return pass;
	}
	return null;
}

function Player::Register(password)
{
	local p = ::escapeSQLString(password);
	if(this.GetPassword() == null)
	{
		::QuerySQL(DB,"INSERT INTO Cont(Nume TEXT, Parola TEXT, AdminLvl INT, Limba INT) VALUES('"+this.Name+"','"+password);
		::QuerySQL(DB,"INSERT INTO Status(Nume TEXT,Bani INT,BaniBanca INT, Clan TEXT,Job INT,"+
"RobSkill INT,CopSkill INT,MedicSkill INT,FiremanSkill INT,HunterSkill INT,BankGuardSkill INT,TruckerSkill INT,"+
"TerroristSkill INT,GangsterSkill INT,ArmsDealerSkill INT,RacesFinised INT,EventsFinished INT,VIPLvl INT,Hunger INT) VALUES "+
"('"this.Name+"','0','0','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','100')");
		return true;
	}
	return false;
}
function Player::Login(password)
{
	return (password == this.GetPassword())
}
function Player::Message(romana,engleza)
{
	switch(this.Language)
	{
		case 0:
			MessagePlayer(engleza,this.GetInst());
			break;
		default:
			MessagePlayer(romana,this.GetInst());
			break;
	}
}

function Player::SaveStats()
{
	
}

function MSG(romana,engleza)
{
	for(local i =0 ; i < 100;i++)
	{
		if(PLAYERS[i] != null)
		{
			PLAYERS[i].Message(engleza,romana);
		}
	}
}
function Player::GetRobRank()
{
	if(this.RobSkill == 0) return "Legit citizen";
	if(this.RobSkill <= 5) return "Mice";
	if(this.RobSkill >= 5 && this.RobSkill <= 10) return "Rat";
	if(this.RobSkill >= 10 && this.RobSkill <= 25) return "Dirty Rat";
	if(this.RobSkill >= 25 && this.RobSkill <= 50) return "Fat Rat";
	if(this.RobSkill >= 50 && this.RobSkill <= 75) return "Hobo";
	if(this.RobSkill >= 75 && this.RobSkill <= 100) return "Stalker";
	if(this.RobSkill >= 100 && this.RobSkill <= 125) return "Low lifer";
	if(this.RobSkill >= 125 && this.RobSkill <= 150) return "Low life robber";
	if(this.RobSkill >= 150 && this.RobSkill <= 175) return "N00b robber";
	if(this.RobSkill >= 175 && this.RobSkill <= 200) return "Amateur robber";
	if(this.RobSkill >= 200 && this.RobSkill <= 250) return "Common robber";
	if(this.RobSkill >= 250 && this.RobSkill <= 300) return "Experienced robber";
	if(this.RobSkill >= 300 && this.RobSkill <= 400) return "Professional robber";
	if(this.RobSkill >= 500) return "King of the streets";
}
function Player::GetCopRank()
{
	if(this.CopSkill == 0) return "Citizen";
	if(this.CopSkill <= 5) return "Recruit";
	if(this.CopSkill >= 5 && this.CopSkill <= 10) return "Private";
	if(this.CopSkill >= 10 && this.CopSkill <= 15) return "";
	
}