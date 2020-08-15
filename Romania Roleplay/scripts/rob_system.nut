class RobPoint()
{
	constructor(name,pos)
	{
		PID = CreatePickup(408,0,pos,255,true);
		Name = name;
		Pos = pos;
	}
	PID = -1;
	Name = null;
	Pos = null;
}

function CreateRobPoints()
{
	
}

function AddRobPoint(name,pos)
{
	QuerySQL("INSERT INTO RobPoints VALUES(Nume ,PosX ,PosY ,PosZ) ("+escapeSQLString(name)+","+pos.x+","+pos.y+","+pos.z+")");
}

function GetRobPointName(pickup)
{
	for(local i =0 ; i < 300; i++)
	{
		if(pickup.Pos.x == ROBPOINTS[i].Pos.x && pickup.Pos.y == ROBPOINTS[i].Pos.y && pickup.Pos.z == ROBPOINTS[i].Pos.z)
		{
			return ROBPOINTS[i].Name;
		}
	}
}

function RobPoint::Rob()
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

ROBPOINTS <- array(300,null);
