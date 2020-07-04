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
	
	LastPosX = 0;
	LastPosY = 0;
	LastPosZ = 0;

	SpamMessages = 0;
	
}

//Functii data de baze
function Player::Register(password)
{
	
}
function Player::Create()
{
	
}
function Player::Login(password)
{
	
}
function Player::SaveStats()
{
	
}