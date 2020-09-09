PROPS <- array(300,null);

class Prop
{
	constructor(name,pos,price)
	{
		Name = name;
		Pos = pos;
		Price = price;
	}
	Name = null;
	Pos = null;
	Owner = null;
	Price = 0;
	Shared1 = null;
	Shared2 = null;
	Shared3 = null;
}

function Prop::CreateNew()
{
	::QuerySQL(DB,"INSERT INTO Props( Nume , Price, PosX ,PosY ,PosZ ) VALUES ("+name+","+price+","+Pos.X+","+Pos.y+","+Pos.z")");
}
function Prop::Buy(player)
{
	if(PLAYERS[player.ID].Buy(this.Price))
	{
		this.Owner = player.Name;
		this.SaveOwner();
	}
	else return 1;
}
function Prop::SaveOwner()
{
	local name = this.GetSafeName();
	::QuerySQL(DB,"UPDATE Props SET Owner = "+name+" WHERE Nume = "+name);
}

function Prop::GetSafeName()
{
	return ::escapeSQLString(this.Owner);
}

function Prop::SaveShared1()
{
	local sh1 = ::escapeSQLString(this.Shared1);
	::QuerySQL(DB,"UPDATE Props SET Shared1 = "+sh1);
}
function Prop::SaveShared2()
{
	local sh1 = ::escapeSQLString(this.Shared2);
	::QuerySQL(DB,"UPDATE Props SET Shared1 = "+sh2);
}
function Prop::SaveShared3()
{
	local sh1 = ::escapeSQLString(this.Shared3);
	::QuerySQL(DB,"UPDATE Props SET Shared3 = "+sh3+" WHERE "+);
}

function Prop::DeleteShared1()
{
	this.Shared1 = null;
	::QuerySQL(DB,"UPDATE Props SET Shared1 = NULL WHERE Name = "+this.GetSafeName());
}
function Prop::DeleteShared1()
{
	this.Shared2 = null;
	::QuerySQL(DB,"UPDATE Props SET Shared2 = NULL WHERE Name = "+this.GetSafeName());
}
function Prop::DeleteShared1()
{
	this.Shared2 = null;
	::QuerySQL(DB,"UPDATE Props SET Shared3 = NULL WHERE Name = "+this.GetSafeName());
}

function Prop::Share(player)
{
	if(Shared1 == null)
	{
		this.Shared1 = player.Name;
		this.SaveShared1();
		return;
	}
	if(Shared2 == null)
	{
		this.Shared2 = player.Name;
		this.SaveShared2();
		return;
	}
	if(Shared3 == null)
	{
		this.Shared3 = player.Name;
		this.SaveShared3();
		return;
	}
}
function Prop::UnShare1()
{
	if(Shared1 != null)
	{
		this.Shared1 = player.Name;
		this.DeleteShared1();
		return;
	}
	if(Shared2 != null)
	{
		this.Shared2 = player.Name;
		this.DeleteShared2();
		return;
	}
	if(Shared3 != null)
	{
		this.Shared3 = player.Name;
		this.DeleteShared3();
		return;
	}
}