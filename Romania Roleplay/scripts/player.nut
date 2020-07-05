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
		Skin = 15;
	}
	ID = 0;
	Name = null;
	Password = null;
	Language = 0; // 0 - eng, 1 - romana
	Cash = 0;
	Skin = 0;
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
	if(password == null) return false;
	local p = ::escapeSQLString(password);
	if(this.GetPassword() == null)
	{
		::QuerySQL(DB,"INSERT INTO Cont(Nume TEXT, Parola TEXT, AdminLvl INT, Limba INT) VALUES('"+this.Name+"','"+password);
		::QuerySQL(DB,"INSERT INTO Status(Nume TEXT,Bani INT,BaniBanca INT, Clan TEXT,Job INT,"+
"RobSkill INT,CopSkill INT,MedicSkill INT,FiremanSkill INT,HunterSkill INT,BankGuardSkill INT,TruckerSkill INT,"+
"TerroristSkill INT,GangsterSkill INT,ArmsDealerSkill INT,RacesFinised INT,EventsFinished INT,VIPLvl INT,Hunger INT,Skin INT) VALUES "+
"('"this.Name+"','0','0','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','100','0')");
		return true;
	}
	return false;
}
function Player::Login(password)
{
	if(password == this.GetPassword())
	{
		this.Logged = true;
		return true;
	}
	return false;
}
function Player::Message(romana,engleza)
{
	switch(this.Language)
	{
		case 0:
			::MessagePlayer(engleza,this.GetInst());
			break;
		default:
			::MessagePlayer(romana,this.GetInst());
			break;
	}
}

function Player::Load()
{
	
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
function Player::Spawn()
{
	local p = this.GetInst();
	p.Position = Vector(this.LastPosX,this.LastPosY,this.LastPosZ);
	p.Skin = this.Skin;
}
function MSGPLR(romana,engleza,plr)
{
	PLAYERS[plr.ID].Message(engleza,romana);
}

function Player::GetRobRankEN()
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
function Player::GetRobRankRO()
{
	if(this.RobSkill == 0) return "Cetatean legitim";
	if(this.RobSkill <= 5) return "Soarece";
	if(this.RobSkill >= 5 && this.RobSkill <= 10) return "Sobolan";
	if(this.RobSkill >= 10 && this.RobSkill <= 25) return "Sobolan murdar";
	if(this.RobSkill >= 25 && this.RobSkill <= 50) return "Sobolan gras";
	if(this.RobSkill >= 50 && this.RobSkill <= 75) return "Homalau";
	if(this.RobSkill >= 75 && this.RobSkill <= 100) return "Spion";
	if(this.RobSkill >= 100 && this.RobSkill <= 125) return "Drogat";
	if(this.RobSkill >= 125 && this.RobSkill <= 150) return "Hot drogat";
	if(this.RobSkill >= 150 && this.RobSkill <= 175) return "Hot b00b";
	if(this.RobSkill >= 175 && this.RobSkill <= 200) return "Hot amator";
	if(this.RobSkill >= 200 && this.RobSkill <= 250) return "Hot comun";
	if(this.RobSkill >= 250 && this.RobSkill <= 300) return "Hot cu experienta";
	if(this.RobSkill >= 300 && this.RobSkill <= 400) return "Hot profesionist";
	if(this.RobSkill >= 500) return "Regele strazilor";
}
function Player::GetCopRankEN()
{
	if(this.CopSkill == 0) return "Citizen";
	if(this.CopSkill <= 5) return "Agent";
	if(this.CopSkill >= 5 && this.CopSkill <= 10) return "Principal Agent";
	if(this.CopSkill >= 10 && this.CopSkill <= 25) return "Agent Deputy Chief";
	if(this.CopSkill >= 25 && this.CopSkill <= 50) return "Agent Chief";
	if(this.CopSkill >= 50 && this.CopSkill <= 75) return "Agent Main Chief";
	if(this.CopSkill >= 75 && this.CopSkill <= 100) return "Subinspector";
	if(this.CopSkill >= 100 && this.CopSkill <= 125) return "Inspector";
	if(this.CopSkill >= 125 && this.CopSkill <= 150) return "Principal Inspector";
	if(this.CopSkill >= 150 && this.CopSkill <= 175) return "Subcomissar";
	if(this.CopSkill >= 175 && this.CopSkill <= 200) return "Comissar";
	if(this.CopSkill >= 200 && this.CopSkill <= 250) return "Comissar Cheif";
	if(this.CopSkill >= 250 && this.CopSkill <= 300) return "Chestor";
	if(this.CopSkill >= 300 && this.CopSkill <= 400) return "Principal Chestor";
	if(this.CopSkill >= 400 && this.CopSkill <= 500) return "Chestor Cheif";
	if(this.CopSkill >= 500) return "Chestor General";
}
function Player::GetMedicRankEN()
{
	if(this.CopSkill == 0) return "Citizen";
	if(this.CopSkill <= 5) return "Student";
	if(this.CopSkill >= 5 && this.CopSkill <= 10) return "PhD";
	if(this.CopSkill >= 10 && this.CopSkill <= 25) return "Medic";
	if(this.CopSkill >= 25 && this.CopSkill <= 50) return "Specialized medic";
	if(this.CopSkill >= 50 && this.CopSkill <= 75) return "Surgeon";
	if(this.CopSkill >= 75 ) return "Specialized surgeon";
}
function Player::GetMedicRankRO()
{
	if(this.CopSkill == 0) return "Cetatean";
	if(this.CopSkill <= 5) return "Student";
	if(this.CopSkill >= 5 && this.CopSkill <= 10) return "Student cu doctorat";
	if(this.CopSkill >= 10 && this.CopSkill <= 25) return "Medic";
	if(this.CopSkill >= 25 && this.CopSkill <= 50) return "Medic specializat";
	if(this.CopSkill >= 50 && this.CopSkill <= 75) return "Chirurg";
	if(this.CopSkill >= 75 ) return "Chirurg specializat";
}
function Player::GetHunterRankEN()
{
	if(this.CopSkill == 0) return "Citizen";
	if(this.CopSkill <= 5) return "n00b silver sh00ter";
	if(this.CopSkill >= 5 && this.CopSkill <= 10) return "n00b sh00ter";
	if(this.CopSkill >= 10 && this.CopSkill <= 25) return "Amateur";
	if(this.CopSkill >= 25 && this.CopSkill <= 50) return "Common hunter";
	if(this.CopSkill >= 50 && this.CopSkill <= 75) return "HUNTer";
	if(this.CopSkill >= 75 && this.CopSkill <= 100) return "Experienced Hunter";
	if(this.CopSkill >= 100 && this.CopSkill <= 125) return "Snipp";
	if(this.CopSkill >= 125 && this.CopSkill <= 150) return "n00b sniper";
	if(this.CopSkill >= 150 && this.CopSkill <= 175) return "Sniper";
	if(this.CopSkill >= 175 && this.CopSkill <= 200) return "Experienced sniper";
	if(this.CopSkill >= 200 && this.CopSkill <= 250) return "King of the forest";
	if(this.CopSkill >= 300 && this.CopSkill <= 400) return "King of the savanna";
	if(this.CopSkill >= 400 && this.CopSkill <= 500) return "King of the jungle";
	if(this.CopSkill >= 500) return "King of the nature";
}
function Player::GetHunterRankRO()
{
	if(this.CopSkill == 0) return "Cetatean";
	if(this.CopSkill <= 5) return "n00b silver sh00ter";
	if(this.CopSkill >= 5 && this.CopSkill <= 10) return "n00b sh00ter";
	if(this.CopSkill >= 10 && this.CopSkill <= 25) return "Amator";
	if(this.CopSkill >= 25 && this.CopSkill <= 50) return "Vanator comun";
	if(this.CopSkill >= 50 && this.CopSkill <= 75) return "HUNTer";
	if(this.CopSkill >= 75 && this.CopSkill <= 100) return "Vanator cu experienta";
	if(this.CopSkill >= 100 && this.CopSkill <= 125) return "Snipp";
	if(this.CopSkill >= 125 && this.CopSkill <= 150) return "lunetist n00b";
	if(this.CopSkill >= 150 && this.CopSkill <= 175) return "Lunetist";
	if(this.CopSkill >= 175 && this.CopSkill <= 200) return "Lunetist cu experienta";
	if(this.CopSkill >= 200 && this.CopSkill <= 250) return "Rege al padurii";
	if(this.CopSkill >= 300 && this.CopSkill <= 400) return "Rege al savanei";
	if(this.CopSkill >= 400 && this.CopSkill <= 500) return "Rege al junglei";
	if(this.CopSkill >= 500) return "Rege al naturii";
}