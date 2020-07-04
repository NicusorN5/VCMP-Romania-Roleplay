class Player
{
	constructor(id)
	{
		ID = id;
		Name = ""+FindPlayer(id).Name;
		Car = array(10,0);
		Language = 0;
		Cash = 0;
		BankCash = 0;
		Props = array(5,0);
		AdminLvl = 0;
	}
	ID = 0;
	Name = null;
	Language = 0; // 0 - eng, 1 - romana
	Cash = 0;
	BankCash = 0;
	Car = null;
	Props = null;
	AdminLvl = 0;
	
}