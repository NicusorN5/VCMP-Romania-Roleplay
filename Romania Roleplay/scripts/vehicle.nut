class Car
{
	constructor(id)
	{
		ID = id;
	}
	ID = 0;
	Owner = null;
	Model = 0; //{get; private set;} pls
	SpawnPosX = 0.0;
	SpawnPosY = 0.0;
	SpawnPosZ = 0.0;
	SpawnQuaternionX = 0.0;
	SpawnQuaternionY = 0.0;
	SpawnQuaternionZ = 0.0;
	SpawnQuaternionW = 0.0;
	Color1 = 1;
	Color2 = 1;
	Fuel = 100;
	NOS = 1000;
}
function Car::GetInst()
{
	return ::FindVehicle(this.ID);
}
function Car::Owner_SafeText()
{
	if(Owner != null) return Owner;
	else return "For Sale";
}
function Car::FuelClamp()
{
	if(this.Fuel < 0) this.Fuel = 0;
	if(this.Fuel > 100) this.Fuel = 0;
}
function Car::NOSClamp()
{
	if(this.NOS < 0) this.NOS = 0;
	if(this.NOS > 1000) this.NOS = 0;
}
function Car::MinuteUpdate()
{
	this.Fuel -= 1;
	this.FuelClamp();
	if(this.Fuel == 0) this.DisableEngine();
}
function Car::EnableEngine()
{
	local car = this.GetInst();
	//TODO: Scrie docul ca sa resetezi acceleratia si viteza maxima la vehicul
}
function Car::DisableEngine()
{
	local car = this.GetInst();
	///TODO: Scrie codul ca sa nu mai functioneze masina
}
function Car::AddFuel(val)
{
	if((this.Fuel == 0 ) && (val > 0))
	{
		this.Fuel += val;
		this.FuelClamp();
		this.EnableEngine();
	}
}
function Car::ActivateNos()
{
	local c = this.GetInst();
	//aaaaaaaaaaaaaaa
}
function Car::DisableNos()
{
	local c = this.GetInst();
	//bbbbbbbbbbbbbbbbbbb
}
function Car::Buy(classplayer)
{
	if(classplayer.Buy(this.GetPrice()) == true)
	{
		this.Owner = classplayer.Name;
		this.SaveStats();
		return true;
	}
	return false;
}
function Car::LoadStats()
{
	
}
function Car::SaveStats()
{
	
}