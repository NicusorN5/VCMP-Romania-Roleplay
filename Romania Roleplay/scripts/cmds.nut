function onPlayerCommand( player, cmd, text )
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
	default: break;
}