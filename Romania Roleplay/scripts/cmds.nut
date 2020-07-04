function onPlayerCommand( player, cmd, text )
{
	switch(cmd)
	{
		case "reguli":
		case "rules":
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
				PLAYERS[player.ID].Message(C_RED+"Parola gresita! ["+PLAYERS[player.ID].LoginAttempts+"/5]",C_RED+"Wrong password! ["+PLAYERS[player.ID].LoginAttempts+"/5]");
				if(PLAYERS[player.ID].LoginAttempts > 5)
				{
					MSG(C_RED+"Oops, "+player.Name+" si-a uitat parola!",C_RED+"Oops, "+player.Name+" forgot his password!");
					player.Kick();
				}
			}
			break;
		default:
			break;
	}
}