
function onScriptLoad()
{
	print("check #1");
}

function onScriptUnload()
{
    DisconnectSQL(iptocountry);
	DisconnectSQL( DB );
}

// =========================================== P L A Y E R   E V E N T S ==============================================

function onPlayerJoin( player )
{
	PLAYERS[player.ID] = Player(player.ID);
	PLAYERS[player.ID].Load();
    local country = IpToCountry(player.IP);
    Message("[#00ff00]Player " + player.Name + " has joined the server ( " + country + " )")
    CreateRadioStream(15, "Taraf", "http://manele.radiotaraf.ro:7100", true);
    CreateRadioStream(16, "Antena Satelor", "http://stream2.srr.ro:8042", true);
    CreateRadioStream(17, "Romania Actualitati", "http://stream2.srr.ro:8002", true);
    CreateRadioStream(18, "National FM", "http://live3.nationalfm.ro:8001", true);
    CreateRadioStream(19, "DIGI FM", "http://edge76.rdsnet.ro:84/digifm/digifm.mp3", true);
    CreateRadioStream(20, "Europa FM", "http://astreaming.europafm.ro:8000/europafm_aacp48k", true);
    CreateRadioStream(21, "Kiss FM", "https://astreaming.edi.ro:8443/EuropaFM_aac", true);
    CreateRadioStream(22, "Magic FM", "http://live.magicfm.ro:9128/magicfm.aacp", true);
    CreateRadioStream(23, "Radio Zu", "https://live7digi.antenaplay.ro/radiozu/02148/seg48000-04294086.ts", true);

}

function onPlayerPart( player, reason )
{
	PLAYERS[player.ID].LastPosX = player.Pos.x;
	PLAYERS[player.ID].LastPosY = player.Pos.y;
	PLAYERS[player.ID].LastPosZ = player.Pos.z;
	PLAYERS[player.ID].Quit();
	PLAYERS[player.ID] = null;
}

function onPlayerRequestClass( player, classID, team, skin )
{
	return 1;
}

function onPlayerRequestSpawn( player )
{
    if(PLAYERS[player.ID].Logged == false)
    {
        if(PLAYERS[player.ID].GetPassword() == null) MSGPLR(C_RED+"Trebuie sa te inregistrezi ca sa continui.",C_RED+"You must register to continue.",player);
        else MSGPLR(C_GREEN+"logheaza-te pe contul tau cu /login <parola> pentru a continua.",C_GREEN+"Please login to your account with /login <password> in order to continue..",player);
        return 0;
    }
    return 1;   
}

function onPlayerSpawn( player )
{
	PLAYERS[player.ID].Spawn();
    player.Colour = RGB( rand()%255,rand()%255,rand()%255 )
}

function onPlayerDeath( player, reason )
{
}

function onPlayerKill( player, killer, reason, bodypart )
{
	PLAYERS[killer.ID].Deaths++;
	PLAYERS[player.ID].Kills++;
}

function onPlayerTeamKill( player, killer, reason, bodypart )
{
	onPlayerKill( player, killer, reason, bodypart )
}

function onPlayerChat(player, text)
{     
    Message("[#ffffff][" + player.ID + "] " + PlrColToStrHex(player) + "" + player.Name + "[#ffffff]: " + text + "")
    print("[" + player.ID + "] " + player.Name + " " + text);
}

function onPlayerPM( player, playerTo, message )
{
	return 1;
}

function onPlayerBeginTyping( player )
{
}

function onPlayerEndTyping( player )
{
}

function onNameChangeable( player )
{
}

function onPlayerSpectate( player, target )
{
}

function onPlayerCrashDump( player, crash )
{
}

function onPlayerMove( player, lastX, lastY, lastZ, newX, newY, newZ )
{
}

function onPlayerHealthChange( player, lastHP, newHP )
{
}

function onPlayerArmourChange( player, lastArmour, newArmour )
{
}

function onPlayerWeaponChange( player, oldWep, newWep )
{
}

function onPlayerAwayChange( player, status )
{
}

function onPlayerNameChange( player, oldName, newName )
{
}

function onPlayerActionChange( player, oldAction, newAction )
{
}

function onPlayerStateChange( player, oldState, newState )
{
}

function onPlayerOnFireChange( player, IsOnFireNow )
{
}

function onPlayerCrouchChange( player, IsCrouchingNow )
{
}

function onPlayerGameKeysChange( player, oldKeys, newKeys )
{
}

function onPlayerUpdate( player, update )
{
}

// ========================================== V E H I C L E   E V E N T S =============================================

function onPlayerEnteringVehicle( player, vehicle, door )
{
	return 1;
}

function onPlayerEnterVehicle( player, vehicle, door )
{
}

function onPlayerExitVehicle( player, vehicle )
{
}

function onVehicleExplode( vehicle )
{
}

function onVehicleRespawn( vehicle )
{
}

function onVehicleHealthChange( vehicle, oldHP, newHP )
{
}

function onVehicleMove( vehicle, lastX, lastY, lastZ, newX, newY, newZ )
{
}

// =========================================== P I C K U P   E V E N T S ==============================================

function onPickupClaimPicked( player, pickup )
{
	return 1;
}

function onPickupPickedUp( player, pickup )
{
}

function onPickupRespawn( pickup )
{
}

// ========================================== O B J E C T   E V E N T S ==============================================

function onObjectShot( object, player, weapon )
{
}

function onObjectBump( object, player )
{
}

// ====================================== C H E C K P O I N T   E V E N T S ==========================================

function onCheckpointEntered(player, cp) {
    switch (cp.ID) {
        case 0:
        player.Pos = Vector(-936.309, -353.718, 7.22692) // rezolvat
        player.PlaySound(465)
        break;
        case 1:
        player.Pos = Vector(-934.265, -351.009, 17.8038) // rezolvat
        player.PlaySound(465)
        break;
        case 2:
        player.Pos = Vector(-902.013, 1055.28 11.0946) // rezolvat
        player.PlaySound(465)
        break;
        case 3:        
        player.Pos = Vector(-887.03, 1054.3, 14.2122) // rezolvat
        player.PlaySound(465)
        break;
        case 4:        
        player.Pos = Vector(-880.807, 1160.26, 17.8194) // rezolvat
        player.PlaySound(465)
        break;
        case 5:        
        player.Pos = Vector(-872.666, 1159.57, 11.0993) // rezolvat
        player.PlaySound(465)
        break;
        case 6:
        player.Pos = Vector(-1414.53, 1158.69, 266.762) // rezolvat
        player.PlaySound(465)
        break;
        case 7:
        player.Pos = Vector(-1106.06, 1330.81, 20.07) // rezolvat
        player.PlaySound(465)
        break;
 	}
 }

function onCheckpointExited( player, checkpoint )
{
}

// =========================================== B I N D   E V E N T S =================================================

function onKeyDown( player, key )
{
}

function onKeyUp( player, key )
{
}

// ================================== E N D   OF   O F F I C I A L   E V E N T S ======================================