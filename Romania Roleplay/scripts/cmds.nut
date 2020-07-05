function onPlayerCommand( player, cmd, text )
{
	switch(cmd)
	{
		case "cmds":
		case "cmd":
		case "commands":
		case "command":
		case "help":
		MessagePlayer("/register, /login, /discord, /clock",player)
		break;

		case "reguli":
		case "rules":
		MessagePlayer("[#ff0000][Rules][#ffffff]Please do not try to use any hacks/cheats or any kind of spam otherwise you will be banned/kicked", player)
			break;
		case "discord":
		MessagePlayer("[#ffffff]https://discord.gg/9dcZRqe", player)
			break;
		case "worldclock":
		case "clock":
		case "ceas":
		MessagePlayer("[#ffffff]" + world_time(), player)
			break;
		case "register":
			if(PLAYERS[player.ID].Register(text))
			{
				MSG(C_GREEN+player+" si-a facut un cont!",C_GREEN+player+" just registered!");
				PLAYERS[player.ID].Message(C_GREEN+"Bun venit la server!",C_GREEN+"Welcome to the server!");
			}
			else PLAYERS[player.ID].Message(C_RED+"Acest cont deja exista!",C_RED+"This account already exists");
			break;
		case "login":
			if(PLAYERS[player.ID].Login(text))
			{
				MSG(C_GREEN+player+" sa logat!",C_GREEN+player+" just logged in!");
				PLAYERS[player.ID].Message(C_GREEN+"Bun venit inapoi!",C_GREEN+"Welcome back!");
			}
			else 
			{
				PLAYERS[player.ID].LoginAttempts++;
				MSGPLR(C_RED+"Parola gresita! ["+PLAYERS[player.ID].LoginAttempts+"/5]",C_RED+"Wrong password! ["+PLAYERS[player.ID].LoginAttempts+"/5]");
				if(PLAYERS[player.ID].LoginAttempts > 5)
				{
					MSG(C_RED+"Oops, "+player.Name+" si-a uitat parola!",C_RED+"Oops, "+player.Name+" forgot his password!");
					player.Kick();
				}
			}
			break;
		case "pos":
			Message("[#ffffff]"+player.Pos);
			break;
		case "exec":
			if(player.IP != "127.0.0.1") return;
			try
			{
				local f = compilestring(text);
				f();
				Message("[#ff0000]Executed code:"+text);
			}
			catch(e)
			{
				Message("[#ff0000]"+e);
				print(e);
			}
			break;
		case "createcar":
			CreateVehicle(text.tointeger(),player.World,player.Pos,0,1,1);
			MSG("A fost creata masina id "+text.tointeger()+" de catre "+player.Name,"Created car id "+text.tointeger()+" by "+player.Name)
			break;
		default:
		MessagePlayer("[#ff0000][ERROR][#ffffff] Command /" + cmd + " doesn't exist. Please check /cmds", player)
	}
}