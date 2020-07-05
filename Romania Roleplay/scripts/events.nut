
function onScriptLoad()
{
	print("check #1");
}

function onScriptUnload()
{
	DisconnectSQL( DB );
}

// =========================================== P L A Y E R   E V E N T S ==============================================

function onPlayerJoin( player )
{
	PLAYERS[player.ID] = Player(player);
}

function onPlayerPart( player, reason )
{
	PLAYERS[player.ID] = null;
}

function onPlayerRequestClass( player, classID, team, skin )
{
	return 1;
}

function onPlayerRequestSpawn( player )
{
	return 1;
}

function onPlayerSpawn( player )
{
}

function onPlayerDeath( player, reason )
{
}

function onPlayerKill( player, killer, reason, bodypart )
{
}

function onPlayerTeamKill( player, killer, reason, bodypart )
{
}

function onPlayerChat( player, text )
{
	print( player.Name + ": " + text );
	return 1;
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