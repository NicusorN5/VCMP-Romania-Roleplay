bank1      <- CreateCheckpoint(null, 0, true, Vector(-938.722, -351.345, 17.2   ), ARGB(100, 255, 0, 0), 2)   // bank entrance (checkpoints)  
bank2      <- CreateCheckpoint(null, 0, true, Vector(-938.342, -351.895, 7.22   ), ARGB(100, 255, 0, 0), 2)   // bank exit (checkpoints) 
lovefist1  <- CreateCheckpoint(null, 0, true, Vector(-892.181, 1054.55, 15.6736 ), ARGB(100, 255, 0, 0), 3)   // love fist entrance (checkpoints)
lovefist2  <- CreateCheckpoint(null, 0, true, Vector(-901.296, 1060.48, 11.0946 ), ARGB(100, 255, 0, 0), 4)   // love fist exit (checkpoints)
vrock1     <- CreateCheckpoint(null, 0, true, Vector(-887.084, 1158.96, 14.0691 ), ARGB(100, 255, 0, 0), 6)   // vrock entrance (checkpoints)
vrock2     <- CreateCheckpoint(null, 0, true, Vector(-877.85, 1160.43, 17.813   ), ARGB(100, 255, 0, 0), 1.1) // vrock exit (checkpoints)
stadium1   <- CreateCheckpoint(null, 0, true, Vector(-1113.68, 1331.01, 20.1156 ), ARGB(100, 255, 0, 0), 7)   // stadium entrance (checkpoints)
stadium2   <- CreateCheckpoint(null, 0, true, Vector(-1414.87, 1154.66, 267.429 ), ARGB(100, 255, 0, 0), 2)   // stadium exit (checkpoints)

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