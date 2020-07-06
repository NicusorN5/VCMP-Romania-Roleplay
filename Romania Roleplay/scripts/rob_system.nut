function CreateRobPoints()
{
	//CreatePickup(...);
}

function GetPointName(pickup)
{
	switch(pickup.ID)
	{
		/*
		Foloseste case 1: return "something";
		case <ID> return "Nume";
		*/
	}
}

function RobPoint(pickup)
{
	if(PLAYERS[player.ID].Job == 1)
	{
		PLAYERS[player.ID].Job = 0;
		PLAYERS[player.ID].WantedLevel += 10;
	}
	PLAYER[player.ID].Cash += 5000 + (rand() % 5000);
	PLAYER[player.ID].WantedLevel++;
	PLAYER[player.ID].UpdateInst();
}