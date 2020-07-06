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
function Car::Spawn()
{
	local inst = this.GetInst();
	inst.Pos.x = this.SpawnPosX;
	inst.Pos.y = this.SpawnPosY;
	inst.Pos.z = this.SpawnPosZ;
	inst.Rotation.x = this.SpawnQuaternionX;
	inst.Rotation.y = this.SpawnQuaternionY;
	inst.Rotation.z = this.SpawnQuaternionZ;
	inst.Rotation.w = this.SpawnQuaternionW;
	inst.Colour1 = this.Color1;
	inst.Colour2 = this.Color2;
}
function Car::SetColors(c1,c2)
{
	local inst = this.GetInst();
	inst.Colour1 = c1;
	inst.Colour2 = c2;
	this.Color1 = c1;
	this.Color2 = c2;
	//perhaps use:
	//this.Color1 = inst.Colour1 = c1; ?
	//this.Color2 = inst.Colour2 = c2; ?
}