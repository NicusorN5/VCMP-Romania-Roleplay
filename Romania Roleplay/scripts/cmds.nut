function onPlayerCommand(player, cmd, text) {
    switch (cmd.tolower()) {
        case "cmds":
        case "cmd":
        case "commands":
        case "command":
        case "help":
            MSGPLR("[#002B7F][CHESTII DE BAZA][#FFFFFF] /register, /login, /clock", "[#002B7F][BASICS][#FFFFFF] /register, /login, /clock", player)
            MSGPLR("[#FCD116][ALTE][#FFFFFF] /lang, /credits", "[#FCD116][OTHERS][#FFFFFF] /lang, /credits", player)
            MSGPLR("[#CE1126][SOCIAL][#FFFFFF] /discord, /forum", "[#CE1126][SOCIAL][#FFFFFF] /discord, /forum", player)
            break;
        case "credit":
        case "credits":
            MSGPLR(C_WHITE + "Serverul a fost facut de AlecuMadalin32 si NicusorN5", "[#ffffff]This server have been made by AlecuMadalin32 and NicusorN5", player)
            break;
        case "reguli":
        case "rules":
            MSGPLR(C_RED + "[Reguli][#FFFFFF]Nici sa nu indraznesti sa folosesti hackuri/cheat sau sa faci spam ca ban/kick", "[#ff0000][Rules][#ffffff] Please do not try to use any hacks/cheats or any kind of spam otherwise you will be banned/kicked")
            break;
        case "discord":
            MessagePlayer(C_WHITE + "https://discord.gg/9dcZRqe", player)
            break;
        case "worldclock":
        case "clock":
        case "ceas":
            MSGPLR("[#FFFFFF]Olanda: " + timez("gmt") + "", "[#FFFFFF]Netherlands: " + timez("gmt") + "", player)
            MSGPLR("[#FFFFFF]Regatul unit: " + timez("cet") + "", "[#FFFFFF]United Kingdom: " + timez("cet") + "", player)
            MSGPLR("[#FFFFFF]Australia: " + timez("aus") + "", "[#FFFFFF]Australia: " + timez("aus") + "", player)
            MSGPLR("[#FFFFFF]Brazilia: " + timez("est") + "", "[#FFFFFF]Brasil: " + timez("est") + "", player)
            MSGPLR("[#FFFFFF]Statele Unite: " + timez("est") + "", "[#FFFFFF]United States: " + timez("est") + "", player)
            MSGPLR("[#FFFFFF]Israel: " + timez("Israel") + "", "[#FFFFFF]Israel: " + timez("Israel") + "", player)
            MSGPLR("[#FFFFFF]Maroco: " + timez("sg") + "", "[#FFFFFF]Marroco: " + timez("sg") + "", player)
            MSGPLR("[#FFFFFF]Republica Dominicana: " + timez("ast") + "", "[#FFFFFF]Dominican Republic: " + timez("ast") + "", player)
            MSGPLR("[#FFFFFF]Iordania: " + timez("ast") + "", "[#FFFFFF]Jordan: " + timez("ast") + "", player)
            MSGPLR("[#FFFFFF]India: " + timez("ind") + "", "[#FFFFFF]India: " + timez("ind") + "", player)
            break;
        case "register":
            if (PLAYERS[player.ID].Register(text)) {
                MSG(C_GREEN + player + " si-a facut un cont!", C_GREEN + player + " just registered!");
                PLAYERS[player.ID].Message(C_GREEN + "Bun venit la server!", C_GREEN + "Welcome to the server!");
            } else PLAYERS[player.ID].Message(C_RED + "Acest cont deja exista!", C_RED + "This account already exists");
            break;
        case "login":
            if (PLAYERS[player.ID].Logged == true) {
                MSGPLR(C_RED + "Esti deja logat", C_RED + "You are already logged in", player);
                break;
            }
            if (PLAYERS[player.ID].GetPassword() == null) {
                MSG(C_RED + "Acest cont nu este inregistrat.", C_RED + "This account is not registered.");
                break;
            }
            if (PLAYERS[player.ID].Login(text)) {
                MSG(C_GREEN + player + " sa logat!", C_GREEN + player + " just logged in!");
                MSGPLR(C_GREEN + "Bine ai venit, " + player.Name + " ( " + timez("gmt") + " )", C_GREEN + "Welcome, " + player.Name + " ( " + timez("gmt") + " )", player)
            } else {
                if (PLAYERS[player.ID].LoginAttempts > 5) {
                    MSG(C_RED + "Oops, " + player.Name + " si-a uitat parola!", C_RED + "Oops, " + player.Name + " forgot his password!");
                    player.Kick();
                    break;
                }
                PLAYERS[player.ID].LoginAttempts++;
                MSGPLR(C_RED + "Parola gresita! [" + PLAYERS[player.ID].LoginAttempts + "/6]", C_RED + "Wrong password! [" + PLAYERS[player.ID].LoginAttempts + "/6]", player);
            }
            break;
        case "a": {
            if (!text) {
                MessagePlayer("[#6666FF]Anims' list: [#FFFF81](/a) stop, watcha, lean, talk, wave, die^, fall^, fallback^, :o, apply, bu!, arg^, carwback, wback, elbow^, rollback, boss, crawling, rollinfront, falling, roll, beware, idk, look, dumb, aim^, drown, handsup, wut, fu, phone, sit, stand, sell, hm?, onfoot, db^, heal, lay, bored, riot, dance, drunk", player);
                MessagePlayer("[#6666FF]READ ME -> The symbol ^ means the anim has more options. Example: /a dance, /a dance 2, /a dance 3.", player);
            } else {
                switch (text) {
                    case "stop":
                        player.SetAnim(0, 29);
                        break;
                    case "watcha":
                        player.SetAnim(0, 7);
                        break;
                    case "lean":
                        player.SetAnim(0, 9);
                        break;
                    case "talk":
                        player.SetAnim(0, 11);
                        break;
                    case "wave":
                        player.SetAnim(0, 12);
                        break;
                    case "die":
                        player.SetAnim(0, 17);
                        break;
                    case "die 2":
                        player.SetAnim(0, 13);
                        break;
                    case "fall":
                        player.SetAnim(0, 25);
                        break;
                    case "fall 2":
                        player.SetAnim(0, 37);
                        break;
                    case "fallback":
                        player.SetAnim(0, 27);
                        break;
                    case "fallback 2":
                        player.SetAnim(0, 43);
                        break;
                    case "oo":
                        player.SetAnim(0, 44);
                        break;
                    case "apply":
                        player.SetAnim(0, 62);
                        break;
                    case "bu!":
                        player.SetAnim(0, 67);
                        break;
                    case "arg":
                        player.SetAnim(0, 112);
                        break;
                    case "arg 2":
                        player.SetAnim(0, 113);
                        break;
                    case "carwback":
                        player.SetAnim(0, 114);
                        break;
                    case "wback":
                        player.SetAnim(0, 118);
                        break;
                    case "elbow":
                        player.SetAnim(0, 123);
                        break;
                    case "elbow 2":
                        player.SetAnim(0, 124);
                        break;
                    case "rollback":
                        player.SetAnim(0, 126);
                        break;
                    case "boss":
                        player.SetAnim(0, 130);
                        break;
                    case "crawling":
                        player.SetAnim(0, 133);
                        break;
                    case "rollinfront":
                        player.SetAnim(0, 135);
                        break;
                    case "falling":
                        player.SetAnim(0, 144);
                        break;
                    case "roll":
                        player.SetAnim(0, 147);
                        break;
                    case "beware":
                        player.SetAnim(0, 151);
                        break;
                    case "idk":
                        player.SetAnim(0, 152);
                        break;
                    case "look":
                        player.SetAnim(0, 153);
                        break;
                    case "dumb":
                        player.SetAnim(0, 154);
                        break;
                    case "aim":
                        player.SetAnim(0, 155);
                        break;
                    case "aim 2":
                        player.SetAnim(0, 157);
                        break;
                    case "aim 3":
                        player.SetAnim(0, 160);
                        break;
                    case "drown":
                        player.SetAnim(0, 156);
                        break;
                    case "handsup":
                        player.SetAnim(0, 161);
                        break;
                    case "wut":
                        player.SetAnim(0, 162);
                        break;
                    case "fu":
                        player.SetAnim(0, 163);
                        break;
                    case "phone":
                        player.SetAnim(0, 166);
                        break;
                    case "sit":
                        player.SetAnim(0, 169);
                        break;
                    case "stand":
                        player.SetAnim(0, 168);
                        break;
                    case "sell":
                        player.SetAnim(0, 171);
                        break;
                    case "hm?":
                        player.SetAnim(0, 172);
                        break;
                    case "onfoot":
                        player.SetAnim(3, 192);
                        break;
                    case "db":
                        player.SetAnim(3, 201);
                        break;
                    case "db 2":
                        player.SetAnim(3, 202);
                        break;
                    case "db 3":
                        player.SetAnim(3, 203);
                        break;
                    case "heal":
                        player.SetAnim(24, 214);
                        break;
                    case "lay":
                        player.SetAnim(25, 210);
                        break;
                    case "bored":
                        player.SetAnim(26, 215);
                        break;
                    case "bored 2":
                        player.SetAnim(26, 216);
                        break;
                    case "bored 3":
                        player.SetAnim(26, 217);
                        break;
                    case "bored 4":
                        player.SetAnim(26, 218);
                        break;
                    case "riot":
                        player.SetAnim(27, 219);
                        break;
                    case "riot 2":
                        player.SetAnim(27, 220);
                        break;
                    case "riot 3":
                        player.SetAnim(27, 221);
                        break;
                    case "riot 4":
                        player.SetAnim(27, 222);
                        break;
                    case "riot 5":
                        player.SetAnim(27, 223);
                        break;
                    case "riot 6":
                        player.SetAnim(27, 224);
                        break;
                    case "riot 7":
                        player.SetAnim(27, 225);
                        break;
                    case "dance":
                        player.SetAnim(28, 226);
                        break;
                    case "dance 2":
                        player.SetAnim(28, 227);
                        break;
                    case "dance 3":
                        player.SetAnim(28, 228);
                        break;
                    case "dance 4":
                        player.SetAnim(28, 229);
                        break;
                    case "dance 5":
                        player.SetAnim(28, 230);
                        break;
                    case "dance 6":
                        player.SetAnim(28, 231);
                        break;
                    case "dance 7":
                        player.SetAnim(28, 232);
                        break;
                    case "drunk":
                        player.SetAnim(29, 210);
                        break;
                    default:
                        MessagePlayer(">> [#FF3636]This animation doesn't exist. Type '/a' to see the list !", player);
                }
            }
            break;
        }
        case "lang":
            switch (text) {
                case "ro":
                    if (!PLAYERS[player.ID].Language) {
                        PLAYERS[player.ID].Language = 1
                        MessagePlayer(C_RED + "S-a schimbat limba la romana.", player)
                    } else {
                        MessagePlayer(C_RED + "Este limba deja setata in romana.", player)
                    }
                    break;
                case "en":
                    if (PLAYERS[player.ID].Language) {
                        PLAYERS[player.ID].Language = 0
                        MessagePlayer(C_RED + "Switched the language to english.", player)
                    } else {
                        MessagePlayer(C_RED + "Language has been already set to english.", player)
                    }
                    break;
                default:
                    MessagePlayer(C_RED + "Syntax: lang <ro/en>", player)
            }
            break;
        case "pos":
            Message(C_WHITE + player.Pos);
            break;
        case "exec":
            if (player.IP != "127.0.0.1") return;
            try {
                local f = compilestring(text);
                f();
                Message(C_RED + "Executed code: " + text);
            } catch (e) {
                Message(C_RED + e);
                print(e);
            }
            break;
        case "createcar":
            CreateVehicle(text.tointeger(), player.World, player.Pos, 0, 1, 1);
            MSG("A fost creata masina id " + text.tointeger() + " de catre " + player.Name, "Created car id " + text.tointeger() + " by " + player.Name)
            break;
        default:
            MSGPLR("[#ff0000][EROARE][#ffffff] Comanda /" + cmd + " nu exista. Uita-te in /cmds", "[#ff0000][EROARE][#ffffff] Command /" + cmd + " doesn't exist. Please check /cmds", player);
    }
}