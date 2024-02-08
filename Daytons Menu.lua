--This is a test scrip to show dayton how to code.

function printFlag()
    print(" ")
    print(" ")
    print(" ")
    print("--DACANADACANADACANADACANADACANADACANADACANADACANADACANADACANADACANAD")
    print("--ACANADACANADACAN                                   NADACANADACANADA")
    print("--CANADACANADACANA                 A                 ADACANADACANADAC")
    print("--ANADACANADACANAD                ADA                DACANADACANADACA")
    print("--NADACANADACANADA           AC  ADACA  DA           ACANADACANADACAN")
    print("--ADACANADACANADAC            ANADACANADA            CANADACANADACANA")
    print("--DACANADACANADACA        DA   ADACANADA   AD        ANADACANADACANAD")
    print("--ACANADACANADACAN    ANADACAN  ACANADA  NADACANA    NADACANADACANADA")
    print("--CANADACANADACANA     ADACANADACANADACANADACANA     ADACANADACANADAC")
    print("--ANADACANADACANAD   NADACANADACANADACANADACANADAC   DACANADACANADACA")
    print("--NADACANADACANADA      CANADACANADACANADACANAD      ACANADACANADACAN")
    print("--ADACANADACANADAC         DACANADACANADACAN         CANADACANADACANA")
    print("--DACANADACANADACA           ANADACANADACA           ANADACANADACANAD")
    print("--ACANADACANADACAN         CANADACANADACANAD         NADACANADACANADA")
    print("--CANADACANADACANA                 A                 ADACANADACANADAC")
    print("--ANADACANADACANAD                 D                 DACANADACANADACA")
    print("--NADACANADACANADA                 A                 ACANADACANADACAN")
    print("--ADACANADACANADAC                                   CANADACANADACANA")
    print("--DACANADACANADACANADACANADACANADACANADACANADACANADACANADACANADACANAD")
    print(" ")
    print("Love From Canada.")
    print(" ")
    print(" ")
end

local scriptFree = false
local customPlates = {}

function loadCustomPlates()
    -- Custom Plate file Import
    customPlates = {
        --[[
        Limit opening quotes Columns to
        17, 29, 41, 53, 65, 77 and 89
        ]]

        USERPLATES = {
            "Made by", "D Reagan", "BEAM NG", "COOTER", "RACEWIN", "NOS 9999", "SPDLGHT",
            "GT RACE", "DRIV4FUN", "SPEDWAY", "QUICKWIN", "RALLY X", "CATCHME", "TOO FAST",
            "ROCKET1", "SPD RCR", "ZOOM ZM", "FLY BY", "RACER X", "DRFT KNG", "GTA RCR",
            "HOT ROD", "SPD DEMN", "TURBO 1", "VROOOM", "FASTCAR", "NITRO US", "1ST PLC",
            "WINNING", "CHKR FLG", "RD STR", "REVV IT", "GO FSTGO", "RALLY CR", "GRN FLAG",
            "BURN OUT", "OVRTAKE", "QUICK 1", "SWIFT", "GO GO", "RAC DAY", "SPRINT",
            "RPM 9999", "PDL 2MTL", "LAP TIME", "BLITZ", "SUPRSON", "THRILL", "ENGNE",
            "TRBO CHG", "CAR LOVR", "DRVR", "RACE ON", "SPEEDY", "2FAST4U", "JMP STR",
            "ACEL RT", "VELOCIT", "CRN ZON", "NEED4SPD", "GLIDE", "AIRBRNE", "RUSH HR"
        },

        starWarsCharacterPlates = {
            "STORMTRP", "CLONE", "EWOK", "DROID", "GALAXY", "EMPIRE", "REBELS",
            "YODA 1", "VADER", "LUKE SKY", "LEIA ORG", "KENOBI", "R2 D2", "C3 PO",
            "BOBAFET", "JABBA", "CHEWBACA", "REY4CE", "KYLO REN", "SITHLOR", "JEDI KNT",
            "MAUL", "GRIEVS", "PADME", "MANDO", "ASHOKA", "TARKIN", "WICKET",
            "LANDO", "HAN SOLO", "QUI GON", "FINN"
        },

        starWarsShipPlates = {
            "XWING 1", "TIE X1", "MILLENNM", "STRTSTR", "JEDI STR", "SITH SP", "REBL SH",
            "FALCON", "X WING", "TIE FGHT", "SLAVE 1", "ROGUE", "ST DEST", "TANTIVE",
            "NABOO", "EXECUTR", "CORVET", "INTRCPT", "VENATOR", "DEFSATL", "SIDIOUS",
            "GHOST", "ARCLGHT", "BWING", "AWING", "UWING", "JEDSTAR", "TIEBOMB",
            "TIEADV", "SITHINF", "REBEL", "IMPERIAL"
        },

        gtaViceCityPlates = {
            "RACER V", "SPEEDVC", "FAST GT", "TROPIC", "GANGSTA", "COP CHS", "SCARFACE",
            "VICE CTY", "TOMMY V", "LANCE", "VERCETI", "DIAZ", "MALIBU", "CUBANS",
            "BIKER", "LUVFIST", "CORTZ", "RICARDO", "KENROSE", "MERCENY", "PHILCAS",
            "BANKJOB", "YATCHT", "V ROCK", "FEVER", "WILDSTY", "BANDSIX", "GOLF CRT",
            "CHEETAH", "SABRETT", "STINGER", "HOTRING"
        },

        gtaSanAndreasPlates = {
            "GANGWAR", "SA RACE", "FLY AWAY", "GROVEST", "CRIMINAL", "SAN FLY", "SA HERO",
            "GROVE ST", "CJ 1992", "BIGSMOKE", "SWEET", "RYDER", "OG LOC", "KENDL",
            "CESAR", "ZER0", "TRUTH", "WUZIMU", "AZTECA", "BALLAS", "VAGOS",
            "NITRO", "BURGLRY", "HYDRA", "TANK", "BMXBIKE", "LOWRIDER", "JETPACK",
            "CASINO", "HEIST", "TRIBOSS", "CJ MOM", "K DST", "K ROSE", "BUSTA"
        },

        gtaIVPlates = {
            "GANG IV", "LC RACE", "CRIME IV", "LIB CTY", "MOBGAME", "IV HERO", "COP IV",
            "NIKO B", "ROMAN", "LIBERTY", "VLAD", "DIMITRI", "PACKIE", "FAUSTIN",
            "BELLECI", "DARDAN", "RAY B", "PEGORIN", "ULPC", "LILJACOB", "BULGARN",
            "GAMBETI", "GRACIE", "IVAN", "KIKI", "LYLE", "MALLORI", "MANNY",
            "PHIL B", "PLAYBOY", "RICKY", "VLAD M"
        },

        gtaVPlates = {
            "GTAVWIN", "LS RACE", "CRIME V", "V HERO", "GANG V", "COP V", "V FAST",
            "LSANTOS", "TREVOR", "FRANKLN", "MICHAEL", "LAMAR", "CHOP", "TRACEY",
            "JIMMY", "LESTER", "DEVIN", "AMANDA", "FIB", "HEIST", "VINEWD",
            "BALLAD", "GROVE", "DELPRRO", "LS CSTM", "ECLIPSE", "HAO", "SIMION",
            "OMEGA", "TONYA", "HANGER", "YACHT"
        },

        gameCharacterPlates = {
            "PACMAN", "TOMB RD", "GHOST", "WIZARD", "PRINCES", "HERO", "VILLAIN",
            "MARIO", "SONIC", "LARA C", "MASTCHF", "KIRBY", "PEEK A", "LINK",
            "ZELDA", "DKONG", "CLOUD", "SNAKE", "SAMUS", "POKEMON", "KRATOS",
            "MEGAMAN", "EARTHBD", "SIMCITY", "BOMBRMN", "TETRIS", "GORDON", "ALTAIR",
            "EZIO", "LEE", "CLEMENT", "NATHAN", "MEGATRON", "OPTIMUS"
        },

        gameVehiclePlates = {
            "TIMECAR", "FUTURE", "SPACESH", "ROCKET", "FASTCAR", "GAMECAR", "HEROCAR",
            "KART", "WARTHOG", "GHST RDR", "P WAGON", "VIPER", "BAT MBL", "KITT",
            "GEN LEE", "OPTIMUS", "GADGETV", "HERBIE", "A TEAM", "PEACEMKR", "ECTO1",
            "MILANO", "ELEANOR", "AKIRA", "NCC1707", "MACH 5", "MAXIMUS", "SERENITY",
            "NOSTROMO", "MCQUEEN", "MATER", "KARR", "MCFLY", "BEAUTY"
        },

        gta6CharactersLocationsPlates = {
            "LUCIA", "JASON", "BONCLYD", "SAN4SAN", "GRDIBRO", "MILITIA", "PORTGLH",
            "SBEACH", "NMIA", "OKECHO", "MALIBU", "PAWNSHP", "STRIPCLB", "GASSTN",
            "JWLRYLP", "HAPPYJU", "SHOPWEL", "COPARST", "DNUTBRN", "TIRESWG", "SHADYMI",
            "IGUANA", "LAUNDRY", "THIEFIE", "CRIMINAL"
        },

        muscleCarPlates = {
            "MUSCLE", "V8 BEAST", "DRAGSTR", "OLD COOL", "HEMI 68", "GTO 1967", "SS 454",
            "MUSCLPR", "V8POWER", "DRAGBURN", "OLDSCOOL", "ROARLOUD", "FASTLNE", "HOTROD",
            "CLASSIC", "TORQUE", "GRITTY", "REVMAX", "POWRIDE", "STREETKN", "VINTMUSC",
            "CHARGER", "CAMARO", "MUSTANG", "RUMBLE", "PONYCAR", "HORSEPWR"
        },

        streetTunerPlates = {
            "TURBO X", "LOW 4U", "DRFTKNG", "TUNE IT", "NOSRUSH", "RACETRK", "SPRTSTR",
            "TURBOCH", "NITROUS", "LOWRIDE", "SPRTCOMP", "DRFTKING", "NEONS", "SPOILER",
            "AERO", "SHIFTQCK", "TUNEDUP", "MODLIFE", "SUSPENS", "TWINTRBO", "DRAGSTR",
            "SLICKTYR", "RALLYRD", "STREETR", "QUICKSHF", "PERFTUNE", "CUSTMOD"
        },

        supercarPlates = {
            "SPD DEM", "SUPRCAR", "FAST V8", "HYPRCAR", "LUX SPD", "AERO X", "TOPSPD",
            "SUPRSPD", "HYPER", "EXOTIC", "LUXFAST", "AERODYN", "CARBON", "SLEEK",
            "ELITE", "TOPGEAR", "SPEED", "V MAX", "ULTMTE", "PREMIUM", "FASTLN",
            "JETSET", "FIBRE", "PINNACLE", "GTSTYLE", "RACERDY", "SPEEDMON"
        },

        offRoadPlates = {
            "MUD FUN", "4X4 LIFE", "OFFROAD", "TRAILX", "JEEP 4X4", "JEEP", "ROCKCRWL",
            "4X4TOUGH", "DIRTROAD", "MUDKING", "TRALBLAZ", "RAIDER", "ALLTERRN", "RUGGED",
            "OFFTRCK", "JEEPLIFE", "CLIMBER", "BOUNTY", "EXPLORE", "ROCKCWL", "DIRTRDR",
            "LANDROV", "SAFARI", "ADVENTR", "OFFBEAT", "TRAILHN", "RUGGEDX"
        },

        vintageClassicPlates = {
            "OLDTIME", "RETRO 8", "ANTQ CAR", "VINTAGE", "CLSC CAR", "OLDLOVE", "ERA GOLD",
            "TIMELESS", "RETRO", "VINTELEG", "ANTIQUE", "OLDTIMER", "CLASSY", "VINTROD",
            "NOSTLGIA", "LEGEND", "HISTORC", "ERAICON", "AGED FN", "CLASSICA", "OLDCHARM",
            "RELVINT", "PASTIME", "VINTAGE", "OLDGOLD", "TIMEHNR", "RETROLV"

        }

    }

    print("Loading of Custom Plates Complete")
end

local Timer = {}
local startTimeInCar = stats.get_int("MP" .. stats.get_int("MPPLY_LAST_MP_CHAR") .. "_TIME_IN_CAR")

-- start the timer
function Timer.start()
    startTimeInCar = getTimeInCar()     -- Reset the timer with the current time in the car
end

-- Get the elapsed time in milliseconds since the timer started
function Timer.elapsedTime()
    local currentTimeInCar = getTimeInCar()
    local elapsedMilliseconds = (currentTimeInCar - startTimeInCar)
    return elapsedMilliseconds
end

-- Function to get the current time in car
function getTimeInCar()
    return stats.get_int("MP" .. stats.get_int("MPPLY_LAST_MP_CHAR") .. "_TIME_IN_CAR")
end

-- Vehicle Hash Data
local vehicleHashes = {}

function loadVehicleHashes()
    -- Vehicle Hash File Import
    vehicleHashes = {
        [-1132721664] = "imorgon",
        [1456336509] = "vstr",
        [1284356689] = "zhaba",
        [740289177] = "vargant",
        [872704284] = "sultan2",
        [987469656] = "sugoi",
        [301304410] = "stryder",
        [2031587082] = "retinue2",
        [408825843] = "outlaw",
        [394110044] = "jb7002",
        [960812448] = "furia",
        [-1960756985] = "formula2",
        [340154634] = "formula",
        [-1756021720] = "everon",
        [-2098954619] = "club",
        [-1728685474] = "coquette4",
        [2134119907] = "dukes3",
        [-2122646867] = "gauntlet5",
        [-913589546] = "glendale2",
        [-838099166] = "landstalker2",
        [1717532765] = "manana2",
        [1492612435] = "openwheel1",
        [1181339704] = "openwheel2",
        [-631322662] = "penumbra2",
        [1107404867] = "peyote3",
        [-1810806490] = "seminole2",
        [-1358197432] = "tigon",
        [1802742206] = "youga3",
        [-777275802] = "freighttrailer",
        [-1744505657] = "impaler4",
        [600450546] = "hustler",
        [628003514] = "issi4",
        [-1293924613] = "dominator6",
        [1239571361] = "issi6",
        [679453769] = "cerberus2",
        [1279262537] = "deviant",
        [-579747861] = "scarab3",
        [1502869817] = "trailerlarge",
        [-1259134696] = "flashgt",
        [-1374500452] = "deathbike3",
        [1938952078] = "firetruk",
        [1721676810] = "monster3",
        [-1146969353] = "scarab",
        [-42959138] = "hunter",
        [1637620610] = "imperator2",
        [840387324] = "monster4",
        [-376434238] = "tyrant",
        [1254014755] = "caracara",
        [-1134706562] = "taipan",
        [788045382] = "sanchez",
        [-214906006] = "jester3",
        [1542143200] = "scarab2",
        [931280609] = "issi3",
        [1046206681] = "michelli",
        [-1694081890] = "bruiser2",
        [1537277726] = "issi5",
        [-1924800695] = "impaler3",
        [1742022738] = "slamvan6",
        [1617472902] = "fagaloa",
        [-1100548694] = "trailers4",
        [-2042350822] = "bruiser3",
        [-1566607184] = "clique",
        [1118611807] = "asbo",
        [409049982] = "kanjo",
        [-1254331310] = "minitank",
        [1693751655] = "yosemite2",
        [83136452] = "rebla",
        [-834353991] = "komoda",
        [159274291] = "ardent",
        [1011753235] = "coquette2",
        [1051415893] = "jb700",
        [418536135] = "infernus",
        [-1558399629] = "tornado6",
        [-1566741232] = "feltzer3",
        [-982130927] = "turismo2",
        [1762279763] = "tornado3",
        [1504306544] = "torero",
        [500482303] = "swinger",
        [1483171323] = "deluxo",
        [1841130506] = "retinue",
        [886810209] = "stromberg",
        [-882629065] = "nebula",
        [668439077] = "bruiser",
        [2139203625] = "brutus",
        [444994115] = "imperator",
        [2038858402] = "brutus3",
        [1009171724] = "impaler2",
        [868868440] = "metrotrain",
        [-1476447243] = "armytrailer",
        [-2061049099] = "slamvan4",
        [219613597] = "speedo4",
        [-1812949672] = "deathbike2",
        [1126868326] = "bfinjection",
        [-801550069] = "cerberus",
        [373261600] = "slamvan5",
        [1909189272] = "gb200",
        [-1267543371] = "ellie",
        [838982985] = "z190",
        [661493923] = "comet5",
        [-755532233] = "imperator3",
        [-1375060657] = "dominator5",
        [-688189648] = "dominator4",
        [-27326686] = "deathbike",
        [408970549] = "avenger2",
        [-1890996696] = "brutus2",
        [-2120700196] = "entity2",
        [-715746948] = "monster5",
        [-121446169] = "kamacho",
        [1909700336] = "cerberus3",
        [-1842748181] = "faggio",
        [2069146067] = "oppressor2",
        [-891462355] = "bati2",
        [-757735410] = "fcr2",
        [-609625092] = "vortex",
        [-1352468814] = "trflat",
        [1019737494] = "graintrailer",
        [-1770643266] = "tvtrailer",
        [1854776567] = "issi7",
        [1922255844] = "schafter6",
        [-1372848492] = "kuruma",
        [-1106353882] = "jester2",
        [736902334] = "buffalo2",
        [353883353] = "polmav",
        [-1973172295] = "police4",
        [-1779120616] = "policeold2",
        [-2007026063] = "pbus",
        [2046537925] = "police",
        [-1536924937] = "policeold1",
        [1912215274] = "police3",
        [1127131465] = "fbi",
        [-1205689942] = "riot",
        [-1627000575] = "police2",
        [469291905] = "lguard",
        [719660200] = "ruston",
        [108773431] = "coquette",
        [-1106120762] = "zr3802",
        [1104234922] = "sentinel3",
        [-1089039904] = "furoregt",
        [-1757836725] = "seven70",
        [310284501] = "dynasty",
        [-777172681] = "omnis",
        [-566387422] = "elegy2",
        [-1041692462] = "banshee",
        [237764926] = "buffalo3",
        [-2022483795] = "comet3",
        [-1848994066] = "neon",
        [410882957] = "kuruma2",
        [-208911803] = "jugular",
        [-331467772] = "italigto",
        [767087018] = "alpha",
        [499169875] = "fusilade",
        [1102544804] = "verlierer2",
        [-1620126302] = "neo",
        [867799010] = "pariah",
        [-1529242755] = "raiden",
        [1074745671] = "specter2",
        [1489967196] = "schafter4",
        [-1485523546] = "schafter3",
        [196747873] = "elegy",
        [686471183] = "drafter",
        [-591651781] = "blista3",
        [-377465520] = "penumbra",
        [-447711397] = "paragon",
        [1886268224] = "specter",
        [-941272559] = "locust",
        [1039032026] = "blista2",
        [540101442] = "zr380",
        [-304802106] = "buffalo",
        [-1045541610] = "comet2",
        [-1995326987] = "feltzer2",
        [544021352] = "khamelion",
        [-888242983] = "schafter5",
        [1032823388] = "Obey 9F",
        [-1461482751] = "ninef2",
        [-362150785] = "hellion",
        [-286046740] = "rcbandito",
        [-54332285] = "freecrawler",
        [101905590] = "trophytruck",
        [1233534620] = "marshall",
        [-1435919434] = "bodhi2",
        [-1590337689] = "blazer5",
        [-1237253773] = "dubsta3",
        [-1479664699] = "brawler",
        [1645267888] = "rancherxl",
        [-2045594037] = "rebel2",
        [-845961253] = "monster",
        [-663299102] = "trophytruck2",
        [92612664] = "kalahari",
        [-312295511] = "dune5",
        [-827162039] = "dune4",
        [-2103821244] = "rallytruck",
        [-1912017790] = "wastelander",
        [1917016601] = "trash",
        [-305727417] = "brickade",
        [1283517198] = "airbus",
        [1941029835] = "tourbus",
        [-2072933068] = "coach",
        [-713569950] = "bus",
        [-956048545] = "taxi",
        [345756458] = "pbus2",
        [-1098802077] = "rentalbus",
        [-1255698084] = "trash2",
        [-311022263] = "seashark3",
        [1448677353] = "tropic2",
        [1033245328] = "dinghy",
        [-1066334226] = "submersible2",
        [861409633] = "jetmax",
        [1070967343] = "toro",
        [-616331036] = "seashark2",
        [290013743] = "tropic",
        [-2100640717] = "tug",
        [400514754] = "squalo",
        [771711535] = "submersible",
        [1739845664] = "bison3",
        [-1743316013] = "burrito3",
        [-1126264336] = "minivan2",
        [-16948145] = "bison",
        [728614474] = "speedo2",
        [1026149675] = "youga2",
        [-810318068] = "speedo",
        [-1987130134] = "boxville",
        [943752001] = "pony2",
        [-310465116] = "minivan",
        [1132262048] = "burrito5",
        [296357396] = "gburrito2",
        [1951180813] = "taco",
        [-1311240698] = "surfer2",
        [-907477130] = "burrito2",
        [534258863] = "dune2",
        [-1269889662] = "blazer3",
        [-1207771834] = "rebel",
        [1770332643] = "dloader",
        [2071877360] = "insurgent2",
        [-1532697517] = "riata",
        [1180875963] = "technical2",
        [1897744184] = "dune3",
        [989381445] = "sandking2",
        [1356124575] = "technical3",
        [433954513] = "nightshark",
        [-1924433270] = "insurgent3",
        [-1349095620] = "caracara2",
        [-1860900134] = "insurgent",
        [-2096818938] = "technical",
        [-2064372143] = "mesa3",
        [2044532910] = "menacer",
        [1933662059] = "rancherxl2",
        [-48031959] = "blazer2",
        [-440768424] = "blazer4",
        [-349601129] = "bifta",
        [-2128233223] = "blazer",
        [-1189015600] = "sandking",
        [-1661854193] = "dune",
        [1824333165] = "besra",
        [1058115860] = "jet",
        [621481054] = "luxor",
        [-1214293858] = "luxor2",
        [1341619767] = "vestra",
        [-975345305] = "rogue",
        [-2122757008] = "stunt",
        [-1746576111] = "mammatus",
        [1349725314] = "sentinel",
        [330661258] = "cogcabrio",
        [-1193103848] = "zion2",
        [1581459400] = "windsor",
        [-89291282] = "felon2",
        [-624529134] = "jackal",
        [-511601230] = "oracle2",
        [-1930048799] = "windsor2",
        [-5153954] = "exemplar",
        [-391594584] = "felon",
        [-1122289213] = "zion",
        [-591610296] = "f620",
        [873639469] = "sentinel2",
        [1348744438] = "oracle",
        [-1776615689] = "rumpo2",
        [893081117] = "burrito4",
        [1069929536] = "bobcatxl",
        [-119658072] = "pony",
        [121658888] = "boxville3",
        [1488164764] = "paradise",
        [1876516712] = "camper",
        [-1346687836] = "burrito",
        [-1745203402] = "gburrito",
        [699456151] = "surfer",
        [1475773103] = "rumpo3 or boxville3",
        [1162065741] = "rumpo",
        [-233098306] = "boxville2",
        [444171386] = "boxville4",
        [-120287622] = "journey",
        [65402552] = "youga",
        [2072156101] = "bison2",
        [782665360] = "rhino",
        [-1435527158] = "khanjali",
        [-212993243] = "barrage",
        [1074326203] = "barracks2",
        [630371791] = "barracks3",
        [-1881846085] = "trailersmall2",
        [-692292317] = "chernobog",
        [562680400] = "apc",
        [321739290] = "crusader",
        [-823509173] = "barracks",
        [-32236122] = "halftrack",
        [-1214505995] = "shamal",
        [-1295027632] = "nimbus",
        [-1006919392] = "cutter",
        [444583674] = "handler",
        [1886712733] = "bulldozer",
        [-2130482718] = "dump",
        [-1705304628] = "rubble",
        [-784816453] = "mixer",
        [475220373] = "mixer2",
        [-2107990196] = "guardian",
        [1353720154] = "flatbed",
        [1269098716] = "landstalker",
        [-808457413] = "patriot",
        [1337041428] = "serrano",
        [1221512915] = "seminole",
        [-1543762099] = "gresley",
        [142944341] = "baller2",
        [1203490606] = "xls",
        [-1829436850] = "novak",
        [914654722] = "mesa",
        [-808831384] = "baller",
        [-789894171] = "cavalcade2",
        [-394074634] = "dubsta2",
        [666166960] = "baller6",
        [-420911112] = "patriot2",
        [850565707] = "bjxl",
        [3862958888] = "xls2",
        [634118882] = "baller4",
        [1878062887] = "baller3",
        [486987393] = "huntley",
        [-1137532101] = "fq2",
        [470404958] = "baller5",
        [-1775728740] = "granger",
        [683047626] = "contender",
        [-748008636] = "mesa2",
        [2006918058] = "cavalcade",
        [884422927] = "habanero",
        [-1168952148] = "toros",
        [1177543287] = "dubsta",
        [2136773105] = "rocoto",
        [-1651067813] = "radi",
        [1489874736] = "thruster",
        [-295689028] = "sultanrs",
        [-1403128555] = "zentorno",
        [2123327359] = "prototipo",
        [-1242608589] = "vigilante",
        [1031562256] = "tezeract",
        [819197656] = "sheava",
        [989294410] = "voltic2",
        [-682108547] = "zorrusso",
        [917809321] = "xa21",
        [338562499] = "vacca",
        [1392481335] = "cyclone",
        [-324618589] = "s80",
        [1093792632] = "nero2",
        [-638562243] = "scramjet",
        [1352136073] = "sc1",
        [1987142870] = "osiris",
        [-1696146015] = "bullet",
        [-313185164] = "autarch",
        [-998177792] = "visione",
        [1034187331] = "nero",
        [-1622444098] = "voltic",
        [1426219628] = "fmj",
        [1663218586] = "t20",
        [1234311532] = "gp1",
        [-664141241] = "krieger",
        [1323778901] = "emerus",
        [633712403] = "banshee2",
        [1939284556] = "vagner",
        [-1291952903] = "entityxf",
        [2067820283] = "tyrus",
        [272929391] = "tempesta",
        [234062309] = "reaper",
        [-482719877] = "italigtb2",
        [-1216765807] = "adder",
        [-1232836011] = "le7b",
        [408192225] = "turismor",
        [1044193113] = "thrax",
        [-947761570] = "tiptruck2",
        [48339065] = "tiptruck",
        [841808271] = "rhapsody",
        [-1177863319] = "issi2",
        [1682114128] = "dilettante2",
        [-1130810103] = "dilettante",
        [1723137093] = "stratum",
        [906642318] = "cog55",
        [-14495224] = "regina",
        [-1008861746] = "tailgater",
        [886934177] = "intruder",
        [-2040426790] = "primo2",
        [-1883869285] = "premier",
        [-1807623979] = "asea2",
        [1777363799] = "washington",
        [-1477580979] = "stanier",
        [321186144] = "stafford",
        [-1894894188] = "surge",
        [-1903012613] = "asterope",
        [1909141499] = "fugitive",
        [-1883002148] = "emperor2",
        [-1809822327] = "asea",
        [1123216662] = "superd",
        [-114627507] = "limo2",
        [704435172] = "cog552",
        [-685276541] = "emperor",
        [-1255452397] = "schafter2",
        [-604842630] = "cognoscenti2",
        [-1289722222] = "ingot",
        [-2030171296] = "cognoscenti",
        [1373123368] = "warrener",
        [-1150599089] = "primo",
        [75131841] = "glendale",
        [-1961627517] = "stretch",
        [627094268] = "romero",
        [-1241712818] = "emperor3",
        [-1829802492] = "pfister811",
        [-2048333973] = "italigtb",
        [-1758137366] = "penetrator",
        [-1311154784] = "cheetah",
        [-1361687965] = "chino2",
        [1896491931] = "moonbeam2",
        [-1790546981] = "faction2",
        [972671128] = "tampa",
        [2006667053] = "voodoo",
        [784565758] = "coquette3",
        [-589178377] = "ratloader2",
        [723973206] = "dukes",
        [-682211828] = "buccaneer",
        [349605904] = "chino",
        [525509695] = "moonbeam",
        [-1943285540] = "nightshade",
        [729783779] = "slamvan",
        [-1210451983] = "tampa3",
        [16646064] = "virgo3",
        [833469436] = "slamvan2",
        [-227741703] = "ruiner",
        [523724515] = "voodoo2",
        [-1800170043] = "gauntlet",
        [80636076] = "dominator",
        [1934384720] = "gauntlet4",
        [-1013450936] = "buccaneer2",
        [-667151410] = "ratloader",
        [37348240] = "hotknife",
        [15219735] = "hermes",
        [1119641113] = "slamvan3",
        [722226637] = "gauntlet3",
        [941494461] = "ruiner2",
        [-498054846] = "virgo",
        [-2039755226] = "faction3",
        [642617954] = "freightgrain",
        [1030400667] = "freight",
        [184361638] = "freightcar",
        [920453016] = "freightcont1",
        [240201337] = "freightcont2",
        [586013744] = "tankercar",
        [1549126457] = "brioso",
        [-431692672] = "panto",
        [-344943009] = "blista",
        [-1450650718] = "prairie",
        [1491375716] = "forklift",
        [-442313018] = "towtruck2",
        [2132890591] = "utillitruck3",
        [734217681] = "sadler2",
        [1560980623] = "airtug",
        [1641462412] = "tractor",
        [-884690486] = "docktug",
        [-537896628] = "caddy2",
        [1147287684] = "caddy",
        [516990260] = "utillitruck",
        [-2076478498] = "tractor2",
        [887537515] = "utillitruck2",
        [3525819835] = "caddy3",
        [-845979911] = "ripley",
        [-599568815] = "sadler",
        [-1323100960] = "towtruck",
        [1783355638] = "mower",
        [1445631933] = "tractor3",
        [-1700801569] = "scrap",
        [1871995513] = "yosemite",
        [-326143852] = "dukes2",
        [-49115651] = "vamos",
        [-915704871] = "dominator2",
        [-1804415708] = "peyote2",
        [-825837129] = "vigero",
        [223258115] = "sabregt2",
        [777714999] = "ruiner3",
        [-899509638] = "virgo2",
        [1456744817] = "tulip",
        [-2119578145] = "faction",
        [-2096690334] = "impaler",
        [-986944621] = "dominator3",
        [-1685021548] = "sabregt",
        [349315417] = "gauntlet2",
        [-401643538] = "stalion2",
        [-2095439403] = "phoenix",
        [1923400478] = "stalion",
        [-1205801634] = "blade",
        [2068293287] = "lurcher",
        [1507916787] = "picador",
        [-893984159] = "Obey 10F"
    }
    print("Loading of Vehicle Hashes Complete")
end

print("Loading Vehicle Hashes Now")
loadVehicleHashes()

print("Loading Custom Plates Now")
loadCustomPlates()

print("Accesory Functions, Variables and Strings Loaded.")

-- Global variable to control infinite scrolling
local scrollTextSavedMessage = nil
local scrollTextSavedSpeed = nil
local infiniteScroll = false
local shouldScroll = false
local XMASPLATE = false
-- Variable to store the last recorded position
local lastPosition = nil
local allowMoreThan8Characters = false
local defaultPlate = "ROCKSTAR"
local debugMode = true            -- true for initial startup (reset to false after full script is loaded)
local recordingKeystrokes = false -- keystroke recording for typing in custom plates
local recordedKeys = {}
local newPlateText = nil
local savedPlateVehicle = nil -- plate to match the vehicle it was from, else revert to default (to be fully implemented)
local savedPlateText = nil
local Config = { OuterRadius = 150, Safety = 20 }
local plateLength = 8    -- maximum allowable characters on a license plate
local sixtyFeet = 18.288 -- 60 feet in meters
local reactionTime = nil
local sixtyFootTime = nil
local sixtyFootSpeed = nil
local tuningMode = { fastDriftMode = false, slowDriftMode = false, spoodBeastMode = false }
local bennysMode = false
local f1Mode = false
local savedHash = 0
local driftPlate = false
local rollTuneSettings = { -- EXPERIMENTAL!!
    front = nil,           -- Front roll
    newFront = nil,
    rear = nil,            -- Rear roll
    newRear = nil
}

local function debugPrint(text)
    if debugMode then
        print(text)
    end
end

local function rip()
    debugPrint("i am dumb")
end

local raceDistanceOptions = {}
local raceDistances = {
    ["1/8 Mile"] = 1609.34 / 8,
    ["1/4 Mile"] = 1609.34 / 4,
    ["1/2 Mile"] = 1609.34 / 2,
    ["Full Mile"] = 1609.34,
    ["1000  FT"] = 304.8
}
local selectedDistance = "1/8 Mile"
local raceFinished = false
local raceDistance = raceDistances["1/8 Mile"]
local startPosition
local raceRunning = false
speeds = {}
for name, _ in pairs(raceDistances) do
    table.insert(raceDistanceOptions, name)
end

local speedoRunning = false -- Speedo controller

local speedmode = {         -- Speed modes
    kph = 3.6,
    mph = 2.23694,
    current = 3.6 -- Default to kph mode conversion value
}

-- Utility Functions
local function getVehicleNameFromHash(hash)
    return vehicleHashes[hash] or "Unsaved Vehicle (Please add to list with the option to print the hash)"
end

-- Data Management
-- Race Data Management
local raceDataFilename = "race_data.json"
local raceData = {}

function loadRaceData()
    local result, loadedData = pcall(function() return json.loadfile(raceDataFilename) end)

    if result and loadedData then
        raceData = loadedData
        debugPrint("Race data loaded.")
    else
        debugPrint("Race data file not found or unreadable. Creating a new one.")
        json.savefile(raceDataFilename, raceData)
    end
end

-- Load existing data or create an empty table if the file doesn't exist
function saveRaceData()
    local existingData = json.loadfile(raceDataFilename) or {}
    local newData = raceData

    -- Combine existing data with new data
    for key, value in pairs(newData) do
        existingData[key] = existingData[key] or {}
        for _, entry in ipairs(value) do
            table.insert(existingData[key], entry)
        end
    end

    -- Save the updated data
    json.savefile(raceDataFilename, existingData)
    debugPrint("Race data Saved.")
end

-- User Settings Management
local userSettingsFilename = "user_settings.json"
local userSettings = {
    selectedSpeedMode = "kph", -- Defaults for if the file isnt present
    DebugMode = true
}


function loadUserSettings()
    local result, loadedSettings = pcall(function() return json.loadfile(userSettingsFilename) end)

    if result and loadedSettings then
        if loadedSettings.DebugMode ~= nil then
            userSettings = loadedSettings
            debugMode = userSettings.DebugMode              -- Set to the setting stored in the file.
            if userSettings.selectedSpeedMode == "kph" then -- convert from one mode to another (with/without values)
                speedmode.current = speedmode.kph
            else
                speedmode.current = speedmode.mph
            end
            debugPrint("User settings loaded.")
        else
            debugPrint("DebugMode not found in loaded settings. Using default settings.")
        end
    else
        debugPrint("User settings file not found or unreadable. Creating a new one with default options.")
        json.savefile(userSettingsFilename, userSettings)
    end
end

function saveUserSettings()
    json.savefile(userSettingsFilename, userSettings)
    debugPrint("User settings Saved.")
end

local function toggleDebugMode()
    if debugMode == true then
        debugMode = false
    else
        debugMode = true
    end
    userSettings.DebugMode = debugMode
    json.savefile(userSettingsFilename, userSettings)
    debugPrint("User Setting: Debug Mode saved to " .. tostring(debugMode))
end

menu.register_callback("OnScriptsLoaded", function()
    -- Load Data
    scriptFree = true
    debugPrint("Attempting to load User Settings")
    loadUserSettings()
    debugPrint("Loading of User Settings Complete")
    debugPrint(" ")
    debugPrint("Attempting to load Race Data")
    loadRaceData()
    debugPrint("Loading of Race Data Complete")
    debugPrint(" ")
    printFlag()
    debugPrint("You can turn off debug mode (the print outs)")
    debugPrint("by going to the settings submenu and toggling off")
    debugPrint("Debug Mode and confirming it was saved by checking")
    debugPrint("User Settings JSON in your Modest Menu folder.")
    debugPrint(" ")
    print("Thank you for trying my latest creation. Please Enjoy.")
    print("                    - Don Reagan")
end
)


-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------- One Click Tuning Function -----------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------

slowDriftStats = { -- Drift tune (Low Speed)
    acceleration = 1.80,
    tractionMax = 2,
    tractionMin = 1,
    tractionLateral = 18,
    tractionLoss = 0.6,
    upShift = 90,
    downShift = 80,
    driveBiasFront = 0,
    turningRadius = 45,
}

fastDriftStats = { -- Drift tune (High Speed)
    acceleration = 4,
    tractionMax = 1.80,
    tractionMin = 1.69,
    tractionLateral = 18,
    tractionLoss = 0.6,
    upShift = 9000,
    downShift = 9000,
    driveBiasFront = 0,
    turningRadius = 45
}

spoodBeastStats = { -- Speed Boost
    acceleration = 6.9,
    tractionMax = 6,
    tractionMin = 5,
    tractionLateral = 16,
    tractionLoss = 0.5,
    upShift = 10000,
    downShift = 10000,
    driveBiasFront = 48.9,
    turningRadius = 22.5, -- quarter of a right angle (for smoother turning at high speeds)
}

oldStats = { -- Old stats for reversal
    acceleration = nil,
    tractionMax = nil,
    tractionMin = nil,
    tractionLateral = nil,
    tractionLoss = nil,
    upShift = nil,
    downShift = nil,
    driveBiasFront = nil,
    turningRadius = nil,
}

-- Save stats for Reversion
function saveStats()
    if localplayer and localplayer:is_in_vehicle() then
        local player = localplayer
        local v = player:get_current_vehicle()

        -- Save old stats for reversal (currently unused)
        oldStats.acceleration = v:get_acceleration()
        oldStats.tractionMax = v:get_traction_curve_max()
        oldStats.tractionMin = v:get_traction_curve_min()
        oldStats.tractionLateral = v:get_traction_curve_lateral()
        oldStats.tractionLoss = v:get_traction_loss_multiplier()
        oldStats.upShift = v:get_up_shift()
        oldStats.downShift = v:get_down_shift()
        oldStats.driveBiasFront = v:get_drive_bias_front()
        oldStats.turningRadius = v:get_steering_lock()
    end
end

-- Stat Reversion
function revertStats()
    if localplayer and localplayer:is_in_vehicle() then
        local player = localplayer
        local v = player:get_current_vehicle()

        tuningMode.slowDriftMode = false
        tuningMode.fastDriftMode = false
        tuningMode.spoodBeastMode = false

        v:set_acceleration(oldStats.acceleration)
        v:set_traction_curve_max(oldStats.tractionMax)
        v:set_traction_curve_min(oldStats.tractionMin)
        v:set_traction_curve_lateral(oldStats.tractionLateral)
        v:set_traction_loss_multiplier(oldStats.tractionLoss)
        v:set_up_shift(oldStats.upShift)
        v:set_down_shift(oldStats.downShift)
        v:set_drive_bias_front(oldStats.driveBiasFront)
        v:set_steering_lock(oldStats.turningRadius)

        oldStats.acceleration = nil
        oldStats.tractionMax = nil
        oldStats.tractionMin = nil
        oldStats.tractionLoss = nil
        oldStats.upShift = nil
        oldStats.downShift = nil
        oldStats.driveBiasFront = nil
        oldStats.turningRadius = nil
    end
end

-- 1-click Tuning
function spoodBeast()
    if tuningMode.slowDriftMode or tuningMode.fastDriftMode then
        revertStats()
    end
    if tuningMode.spoodBeastMode then
        tuningMode.spoodBeastMode = false
        revertStats()
    else
        tuningMode.spoodBeastMode = true
        if localplayer and localplayer:is_in_vehicle() then
            local player = localplayer
            local veh = player:get_current_vehicle()
            saveStats()
            veh:set_acceleration(spoodBeastStats.acceleration)
            veh:set_traction_curve_max(spoodBeastStats.tractionMax)
            veh:set_traction_curve_min(spoodBeastStats.tractionMin)
            veh:set_traction_curve_lateral(spoodBeastStats.tractionLateral)
            veh:set_traction_loss_multiplier(spoodBeastStats.tractionLoss)
            veh:set_up_shift(spoodBeastStats.upShift)
            veh:set_down_shift(spoodBeastStats.downShift)
            veh:set_drive_bias_front(spoodBeastStats.driveBiasFront)
            veh:set_steering_lock(spoodBeastStats.turningRadius)
        end
    end
end

function slowDrift()
    if tuningMode.spoodBeastMode or tuningMode.fastDriftMode then
        revertStats()
    end
    if tuningMode.slowDriftMode then
        tuningMode.slowDriftMode = false
        revertStats()
    else
        if localplayer and localplayer:is_in_vehicle() then
            local player = localplayer
            local veh = player:get_current_vehicle()
            saveStats()
            veh:set_acceleration(slowDriftStats.acceleration)
            veh:set_traction_curve_max(slowDriftStats.tractionMax)
            veh:set_traction_curve_min(slowDriftStats.tractionMin)
            veh:set_traction_curve_lateral(slowDriftStats.tractionLateral)
            veh:set_traction_loss_multiplier(slowDriftStats.tractionLoss)
            veh:set_up_shift(slowDriftStats.upShift)
            veh:set_down_shift(slowDriftStats.downShift)
            veh:set_drive_bias_front(slowDriftStats.driveBiasFront)
            veh:set_steering_lock(slowDriftStats.turningRadius)
        end
    end
end

function fastDrift()
    if tuningMode.spoodBeastMode or tuningMode.slowDriftMode then
        revertStats()
    end
    if tuningMode.fastDriftMode then
        tuningMode.fastDriftMode = false
        revertStats()
    else
        if localplayer and localplayer:is_in_vehicle() then
            local player = localplayer
            local veh = player:get_current_vehicle()
            saveStats()
            veh:set_acceleration(fastDriftStats.acceleration)
            veh:set_traction_curve_max(fastDriftStats.tractionMax)
            veh:set_traction_curve_min(fastDriftStats.tractionMin)
            veh:set_traction_curve_lateral(fastDriftStats.tractionLateral)
            veh:set_traction_loss_multiplier(fastDriftStats.tractionLoss)
            veh:set_up_shift(fastDriftStats.upShift)
            veh:set_down_shift(fastDriftStats.downShift)
            veh:set_drive_bias_front(fastDriftStats.driveBiasFront)
            veh:set_steering_lock(fastDriftStats.turningRadius)
        end
    end
end

menu.register_callback("OnVehicleChanged", function()
    if localplayer and localplayer:is_in_vehicle() then
        local currentveh = localplayer:get_current_vehicle()
        if currentveh ~= savedPlateVehicle then
            if savedPlateText ~= nil then
                savedPlateText = localplayer:get_current_vehicle():get_number_plate_text()
            end
        end
        if tuningMode.fastDriftMode then
            tuningMode.fastDriftMode = false
            fastDrift()
        end
        if tuningMode.slowDriftMode then
            tuningMode.slowDriftMode = false
            slowDrift()
        end
        if tuningMode.spoodBeastMode then
            tuningMode.spoodBeastMode = false
            spoodBeast()
        end
        if infiniteScroll then
            infiniteScroll = false
            ScrollText(scrollTextSavedMessage, scrollTextSavedSpeed)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------- User Input Function -------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- Mapping table for Java keycodes to alphanumeric characters
local javaKeycodeMapping = {
    [65] = 'A',
    [66] = 'B',
    [67] = 'C',
    [68] = 'D',
    [69] = 'E',
    [70] = 'F',
    [71] = 'G',
    [72] = 'H',
    [73] = 'I',
    [74] = 'J',
    [75] = 'K',
    [76] = 'L',
    [77] = 'M',
    [78] = 'N',
    [79] = 'O',
    [80] = 'P',
    [81] = 'Q',
    [82] = 'R',
    [83] = 'S',
    [84] = 'T',
    [85] = 'U',
    [86] = 'V',
    [87] = 'W',
    [88] = 'X',
    [89] = 'Y',
    [90] = 'Z',
    [48] = '0',
    [49] = '1',
    [50] = '2',
    [51] = '3',
    [52] = '4',
    [53] = '5',
    [54] = '6',
    [55] = '7',
    [56] = '8',
    [57] = '9'
}

function registerHotkeys()
    -- Register hotkeys for alphanumeric keys (A-Z and 0-9)
    for keycode = 65, 90 do
        menu.register_hotkey(keycode, function() onKeyPress(keycode) end)
    end

    for keycode = 48, 57 do
        menu.register_hotkey(keycode, function() onKeyPress(keycode) end)
    end

    -- Register hotkeys for special keys
    menu.register_hotkey(27, function() onESC() end)            -- Escape key
    menu.register_hotkey(8, function() onBackspace() end)       -- Backspace
    menu.register_hotkey(32, function() onSpace() end)          -- Space
    menu.register_hotkey(13, function() onFinishTyping() end)   -- Enter/Return
end

-- Function to start recording
function startRecording()
    debugMode = true
    registerHotkeys()
    recordingKeystrokes = true
    recordedKeys = {}
    debugPrint(" ")
    debugPrint("Recording started...")
    debugPrint("Current input: " .. table.concat(recordedKeys, ""))
end

-- Function to stop recording
function stopRecording()
    recordingKeystrokes = false
    debugPrint(" ")
    debugPrint("Recording stopped.")
    debugPrint("Recorded input: " .. table.concat(recordedKeys, ""))
    promptForConfirmation()
end

-- Function to handle key press
function onKeyPress(keycode)
    if recordingKeystrokes then
        if #recordedKeys < 8 or allowMoreThan8Characters then
            table.insert(recordedKeys, javaKeycodeMapping[keycode] or tostring(keycode))
            newPlateText = table.concat(recordedKeys, "")
            debugPrint(" ")
            debugPrint("Key pressed: " .. (javaKeycodeMapping[keycode] or tostring(keycode)))
            debugPrint("Current input: " .. table.concat(recordedKeys, ""))
            if not allowMoreThan8Characters and #recordedKeys == 8 then
                debugPrint("Plate length reached")
                debugPrint(" ")
                debugPrint("Turn on the option for scrolling text")
                debugPrint("if you want to use text over 8 characters")
                debugPrint("(buggy and semi permanent(make sure to turn off the infinite loop when done))")
                stopRecording()
            end
        end
    end
end

-- Function to handle backspace key
function onBackspace()
    if recordingKeystrokes then
        table.remove(recordedKeys)
        newPlateText = table.concat(recordedKeys, "")
        debugPrint(" ")
        debugPrint("Key pressed: Backspace")
        debugPrint("Current input: " .. table.concat(recordedKeys, ""))
    end
end

-- Function to handle space key
function onSpace()
    if recordingKeystrokes then
        if #recordedKeys < 8 or allowMoreThan8Characters then
            table.insert(recordedKeys, ' ')
            newPlateText = table.concat(recordedKeys, "")
            debugPrint(" ")
            debugPrint("Key pressed: Spacebar")
            debugPrint("Current input: " .. table.concat(recordedKeys, ""))
            if not allowMoreThan8Characters and #recordedKeys == 8 then
                stopRecording()
            end
        end
    end
end

-- Function to handle ESC/Escape key
function onESC()
    if recordingKeystrokes then
        debugPrint("Key Pressed: Escape")
        toggleKeystrokeRecording()
    end
end

-- Function to handle Enter/Return key
function onFinishTyping()
    if recordingKeystrokes then
        debugPrint(" ")
        debugPrint("Key pressed: Enter")
        debugPrint("Prompting Confirmation next...")
        stopRecording()
    end
end

function toggleKeystrokeRecording()
    if recordingKeystrokes then
        recordingKeystrokes = false
        stopRecording()
        debugPrint("Keystroke Recording Concluded")
    else
        recordingKeystrokes = true
        debugPrint("Keystroke Recording Started")
    end
end

-- Function to confirm inputted text and check if its over 8 characters
function promptForConfirmation()
    debugPrint(" ")
    debugPrint("Are you sure you want to set your plate to: ")
    print(newPlateText)
    debugPrint(" ")
    debugPrint("Please confirm: Y = Yes, N = No")

    local keypressY = false
    local keypressN = false
    local keypressY2 = false
    local keypressN2 = false
    -- Register hotkeys for 'Y', 'Y2', 'N' and 'N2'
    menu.register_hotkey(89, function() keypressY = true end) -- 'Y'
    menu.register_hotkey(78, function() keypressN = true end) -- 'N'
    local confirmingText = true
    repeat
        if keypressY then
            debugPrint(" ")
            debugPrint("Key pressed: Y")
            debugPrint(" ")
            debugPrint("Confirming number of characters is 8 or less.")
            debugPrint(" ")
            debugPrint("New plate showing up as: " .. newPlateText)
            if #recordedKeys <= 8 then
                debugPrint("New plate confirmed to be 8 characters or less.")
                savedPlateText = newPlateText
                savedPlateVehicle = localplayer:get_current_vehicle()
                confirmingText = false
                debugPrint("Setting Plate to: " .. savedPlateText)
                setPlate(savedPlateText)
                recordedKeys = {}

                if userSettings.DebugMode == false then
                    debugMode = false
                end
            else
                confirmingText = false
                confirmScrollText()
                break
            end
        elseif keypressN then
            debugPrint(" ")
            debugPrint("Key pressed: N")
            debugPrint("Text Confirmation FAILED..")
            newPlateText = nil
            debugPrint("Resetting Process now.")
            debugPrint("Resetting Process now..")
            debugPrint("Resetting Process now...")
            recordedKeys = {}
            debugPrint("Resetting Process now.")
            debugPrint("Resetting Process now..")
            debugPrint("Resetting Process now...")
            confirmingText = false
            debugPrint("Resetting Process now.")
            debugPrint("Resetting Process now..")
            debugPrint("Resetting Process now...")
            debugPrint(" ")
            startRecording()
            break
        else
            sleep(.25)
        end
    until confirmingText == false
end

-- Function to Confirm if the user is sure they want to scroll text.
function confirmScrollText()
    menu.register_hotkey(89, function() keypressY2 = true end) -- 'Y2'
    menu.register_hotkey(78, function() keypressN2 = true end) -- 'N2'
    debugPrint(" ")
    debugPrint("Plate length exceeded! Are you sure you want to scroll text?")
    debugPrint("you will need to make sure to disable scrolling before exiting the vehicle")
    debugPrint("to revert the plate to the last valid plate recorded by the script(8 characters or less)")
    debugPrint(" ")
    debugPrint("Please confirm: Y = Yes, N = No")
    confirmingScrollText = true
    repeat
        if keypressY2 then
            if savedPlateText == nil then
                savedPlateText = localplayer:get_current_vehicle():get_number_plate_text()
                savedPlateVehicle = localplayer:get_current_vehicle()
            end
            confirmingScrollText = false
            debugPrint("New plate text is confirmed to be over 8 characters")
            debugPrint("scrolling the text accross the plate instead")
            debugPrint(" ")
            if userSettings.DebugMode == false then
                debugMode = false
            end
            ScrollText(newPlateText, 1)
            break
        elseif keypressN2 then
            debugPrint(" ")
            debugPrint("Key pressed: N")
            debugPrint("Text Confirmation FAILED..")
            newPlateText = nil
            debugPrint("Resetting Process now.")
            debugPrint("Resetting Process now..")
            debugPrint("Resetting Process now...")
            recordedKeys = {}
            debugPrint("Resetting Process now.")
            debugPrint("Resetting Process now..")
            debugPrint("Resetting Process now...")
            confirmingScrollText = false
            debugPrint("Resetting Process now.")
            debugPrint("Resetting Process now..")
            debugPrint("Resetting Process now...")
            menu.remove_hotkey(89)
            menu.remove_hotkey(78)
            debugPrint(" ")
            startRecording()
            break
        else
            sleep("0.25")
        end
    until confirmingScrollText == false
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------ Speedometer Function -------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- Function to toggle the Speedometer Mode
function toggleSpeedmode()
    if speedmode.current == speedmode.kph then
        speedmode.current = speedmode.mph
        userSettings.selectedSpeedMode = "mph"
        debugPrint("User Settings Saved with MPH being selected")
    else
        speedmode.current = speedmode.kph
        userSettings.selectedSpeedMode = "kph"
        debugPrint("User Settings Saved with KPH being selected")
    end
    json.savefile(userSettingsFilename, userSettings)
end

-- Function to toggle the Speedometer
function speedoToggle()
    if speedoRunning then
        debugPrint("Speedo Stopping!")
        speedoRunning = false
        checkPlate()
    else
        debugPrint("Speedo Starting!")
        runSpeedometer()
    end
end

-- Speedo loop
function runSpeedometer()
    if localplayer and localplayer:is_in_vehicle() then
        local player = localplayer
        local vehicle = player:get_current_vehicle()
        if savedPlateText == nil then
            savedPlateText = vehicle:get_number_plate_text()
            savedPlateVehicle = vehicle
        end
        speedoRunning = true
        debugPrint("speedo starting 2")
        while speedoRunning == true do
            local p = localplayer
            local veh = p:get_current_vehicle()
            if speedoRunning == false then
                setPlate(savedPlateText)
                break
            end
            sleep(0.0167) -- arbitrary number for 60 fps (test)
            local velocity = veh:get_velocity()
            local sped = math.sqrt(velocity.x ^ 2 + velocity.y ^ 2 + velocity.z ^ 2)
            local speed = math.floor(sped * speedmode.current)
            if speedoRunning == false then
                setPlate(savedPlateText)
                break
            end
            if speedmode.current == speedmode.mph then
                setPlate(speed .. " MPH")
            else
                setPlate(speed .. " KPH")
            end
        end
    end
end

-- Benny's Mode and F1 Mode
function bennysModeToggle()
    if bennysMode == false then
        if localplayer and localplayer:is_in_vehicle() and savedHash == 0 then
            local p = localplayer
            local v = p:get_current_vehicle()
            savedHash = v:get_model_hash()
            v:set_model_hash(1896491931) -- silent uses 196747873
        end
    else
        if localplayer and localplayer:is_in_vehicle() and savedHash ~= 0 then
            local p = localplayer
            local v = p:get_current_vehicle()
            v:set_model_hash(savedHash)
            savedHash = 0
        end
    end
end

function f1ModeToggle()
    if f1Mode == false then
        if localplayer and localplayer:is_in_vehicle() then
            local p = localplayer
            local v = p:get_current_vehicle()
            savedHash = v:get_model_hash()
            v:set_model_hash(-1960756985) -- silent uses 1492612435
        end
    else
        if localplayer and localplayer:is_in_vehicle() and savedHash ~= 0 then
            local p = localplayer
            local v = p:get_current_vehicle()
            v:set_model_hash(savedHash)
            savedHash = 0
        end
    end
end

--  Timer Functions

-- Returns the players total time spent in cars (in milliseconds)
function getTimeInCar()
    return stats.get_int("MP" .. stats.get_int("MPPLY_LAST_MP_CHAR") .. "_TIME_IN_CAR")
end

-- Formats milliseconds into regular time (s.ms)
function formatTime(milliseconds)
    if type(milliseconds) == "number" then
        local seconds = math.floor(milliseconds / 1000)
        local remainingMilliseconds = milliseconds % 1000
        return string.format("%d.%03d", seconds, remainingMilliseconds)
    else
        rip()
        return nil
    end
end

-- Returns the players current position
function getCurrentPosition()
    local vehicle = localplayer:get_current_vehicle()
    if vehicle then
        return vehicle:get_position()
    else
        rip()
        return nil
    end
end

-- Calculate distance on 3d map between 2 points
function calculateDistance(pos1, pos2)
    if pos1 and pos2 then
        local dx = pos1.x - pos2.x
        local dy = pos1.y - pos2.y
        local dz = pos1.z - pos2.z
        return math.sqrt(dx * dx + dy * dy + dz * dz)
    else
        rip()
        return nil
    end
end

-- Function to check if the player has reached the finish line distance
function hasReachedFinishLine()
    local currentPosition = getCurrentPosition()

    if currentPosition then
        if lastPosition then
            local distanceTravelled = calculateDistance(lastPosition, currentPosition)
            if distanceTravelled then
                -- Update total distance traveled
                totalDistanceTraveled = (totalDistanceTraveled or 0) + distanceTravelled

                -- Update last position for the next loop
                lastPosition = currentPosition

                -- Check if the total distance traveled is greater than or equal to the race distance
                return totalDistanceTraveled >= raceDistance
            else
                return false
            end
        else
            -- Set the initial position for the first loop
            lastPosition = currentPosition
            return false
        end
    else
        return false
    end
end

-- Returns Player speed in Meters per second
local function getCurrentSpeed(vehicle)
    local velocity = vehicle:get_velocity()
    local speedms = math.sqrt(velocity.x ^ 2 + velocity.y ^ 2 + velocity.z ^ 2)
    return speedms
end

-- Returns the weighted average and total amount of values being used
local function getWeightedAverage(t)
    local weightedSum = 0
    local totalWeights = 0
    for i, v in ipairs(t) do
        weightedSum = weightedSum + v * i
        totalWeights = totalWeights + i
    end
    return weightedSum / totalWeights
end

-- Display the current speed
local function displaySpeed()
    local vehicle = localplayer:get_current_vehicle()
    local currentSpeed = getCurrentSpeed(vehicle)
    table.insert(speeds, currentSpeed)
    if #speeds > 5
    then
        table.remove(speeds, 1)
    end
    local predictedSpeed = getWeightedAverage(speeds)
    local displayedSpeed = math.floor(predictedSpeed * speedmode.current)
    local speedStr = string.format("%3s", displayedSpeed > 0 and tostring(displayedSpeed) or "")
    if speedmode.current == speedmode.mph then
        local plateText = speedStr .. "  MPH"
        setPlate(plateText)
    else
        local plateText = speedStr .. "  KPH"
        setPlate(plateText)
    end
end

-- Print the current vehicle hash
function printHash()
    if localplayer and localplayer:is_in_vehicle() then
        local p = localplayer
        local v = p:get_current_vehicle()
        local hash = v:get_model_hash()
        debugPrint("Vehicle hash is: " .. tostring(hash))
        debugPrint("Please add it if its missing from the json.")
    end
end

-- Vehicle Deleter
-- Checks if a ped is a player
local function IsPlayer(ped)
    if ped == nil or ped:get_pedtype() >= 4 then
        return false
    end
    return true
end

local cumulativeCount = 0
local vehiclesMoved = 0

-- Main Loop (broken)
co1 = coroutine.create(function(radius)
    local playerPos = localplayer:get_position()
    local playerVehicle = localplayer:get_current_vehicle()

    for veh in replayinterface.get_vehicles() do
        if veh ~= playerVehicle then
            local vehiclePosition = veh:get_position()
            local distanceToMainPlayer = calculateDistance(vehiclePosition, playerPos)

            local closeToAnyPlayer = false
            for ped in replayinterface.get_peds() do
                if IsPlayer(ped) and ped ~= localplayer then -- Exclude the local player
                    local otherPlayerPos = ped:get_position()
                    if calculateDistance(vehiclePosition, otherPlayerPos) <= Config.Safety then
                        closeToAnyPlayer = true
                        break
                    end
                end
            end

            cumulativeCount = (cumulativeCount + 1)

            if cumulativeCount >= 1000 then
                collectgarbage("collect")
                debugPrint("garbage collected")
                cumulativeCount = 0
            end

            if distanceToMainPlayer <= Config.OuterRadius and distanceToMainPlayer > Config.Safety and not closeToAnyPlayer then
                veh:set_position(vector3(0, 0, Config.OuterRadius) + vehiclePosition)
                vehiclesMoved = vehiclesMoved + 1
                debugPrint("vehicles moved so far: " .. vehiclesMoved)
            end
            coroutine.yield()
        end
    end
end)


-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------- Main Race Function --------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- Main Drag Race Function
function DoDragRace()
    if scriptFree then
        if localplayer and localplayer:is_in_vehicle() then
            checkPlate()
            --menu.emit_event("raceBeginning")
            local player = localplayer
            local vehicle = player:get_current_vehicle()
            raceRunning = true
            raceFinished = false
            startPosition = getCurrentPosition()
            reactionTime = 0
            sixtyFootTime = 0
            sixtyFootSpeed = 0
            setPlate("GOODLUCK")
            sleep(1)
            setPlate("ENJOY ")
            sleep(0.75)
            setPlate(" YOUR ")
            sleep(0.75)
            setPlate("  Race")
            sleep(1.25)
            setPlate("0------0")
            sleep(0.5)
            setPlate("00----00")
            sleep(0.5)
            setPlate("000--000")
            sleep(0.48)
            if startPosition ~= getCurrentPosition() then
                setPlate("JUMPED!")
                raceFinished = true
                raceRunning = false
                debugPrint("Race Aborted: Jumped The Start")
                sleep(1.25)
                checkPlate()
            else
                raceData = {}               -- Clear raceData for the current race to be saved
                setPlate("---GO---")
                Timer.start()               -- Start the custom timer
                while not raceFinished do
                    coroutine.resume(co1)   -- Remove vehicles around the starting line
                    if reactionTime == 0 and getCurrentPosition() ~= startPosition then
                        reactionTime = formatTime(Timer.elapsedTime())
                    end
                    if sixtyFootTime == 0 and calculateDistance(startPosition, getCurrentPosition()) >= sixtyFeet then
                        sixtyFootTime = formatTime(Timer.elapsedTime()) -- Save the 60 foot time
                        sixtyFootSpeed = getCurrentSpeed(vehicle)
                    end
                    if hasReachedFinishLine() then
                        --menu.emit_event("raceEnded") -- TO BE USED FOR MULTI THREADING
                        raceRunning = false
                        raceFinished = true
                        local finalTime = Timer.elapsedTime()
                        local finalSpeed = getCurrentSpeed(vehicle)

                        -- Get the selected speed mode from the user settings
                        if speedmode.current == speedmode.kph then
                            selectedMode = "KPH"
                        else
                            selectedMode = "MPH"
                        end

                        local raceDetails = {
                            distance = selectedDistance,
                            reactionTime = reactionTime,
                            sixtyFootTime = sixtyFootTime,
                            time = formatTime(finalTime),
                            sixtyFootSpeed = sixtyFootSpeed .. " " .. selectedMode,
                            speed = (finalSpeed * speedmode.current) .. " " .. selectedMode
                        }

                        -- Update raceData table
                        local vehicleHash = vehicle:get_model_hash()
                        local vehicleName = getVehicleNameFromHash(vehicleHash)
                        raceData[vehicleName] = raceData[vehicleName] or {}
                        table.insert(raceData[vehicleName], raceDetails)

                        -- Save the updated race data
                        saveRaceData()

                        -- Print the data
                        debugPrint("Race Data Saved for " .. vehicleName)
                        debugPrint("Race Distance: " .. selectedDistance)
                        debugPrint("Reaction Time: " .. reactionTime)
                        debugPrint("60 Foot Time: " .. sixtyFootTime)
                        debugPrint("Race finished! Time: " .. formatTime(finalTime))
                        debugPrint("60 Foot SpeedTrap: " .. sixtyFootSpeed .. " " .. selectedMode)
                        debugPrint("Final Speed: " .. finalSpeed .. " " .. selectedMode)

                        setPlate(formatTime(finalTime)) -- Display race time on the plate
                        sleep(5)
                        checkPlate()
                        break
                    else
                        if reactionTime then
                            displaySpeed()
                            sleep(0.001)
                        end
                    end
                end
            end
        else
            debugPrint("Not in a vehicle! You cant race barefoot!!")
            error("Not in a vehicle! You can't race barefoot!!", 2)
        end
    else
        sleep(5)
        DoDragRace()
    end
end

-- Function to abort the current race
local function abortrace()
    raceFinished = true
    raceRunning = false
    setPlate("ABORTED!")
    debugPrint("Race Aborted")
    sleep(5)
    checkPlate()
end


-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------- Plate Changing Function ------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- Check for ensured reversal
function checkPlate()
    scriptFree = false
    debugPrint("checking plate now. please wait.")
    stopEverything()
    if localplayer and localplayer:is_in_vehicle() then
        debugPrint("checking plate now. please wait..")
        debugPrint("checking plate now. please wait...")
        debugPrint(" ")
        debugPrint("Checking plate for need of reversion")
        if savedPlateText == nil then
            debugPrint(" ")
            debugPrint("Saved plate text is currently nil (start of plate check)")
            setPlate(defaultPlate)
        else
            local player = localplayer
            local veh = player:get_current_vehicle()
            local currentPlate = veh:get_number_plate_text()
            if savedPlateText ~= currentPlate then
                debugPrint(" ")
                debugPrint("the plate is showing up as: " ..
                    tostring(currentPlate) .. " and the saved plate is showing up as: " .. tostring(savedPlateText))
                if savedPlateText == "cruising" or savedPlateText == "chilling" or savedPlateText == " MPH" or savedPlateText == " KPH" or savedPlateText == "0" then
                    setPlate(defaultPlate)
                else
                    setPlate(savedPlateText)
                end
            else
                debugPrint(" ")
                debugPrint("Plate confirmed to match saved plate text.")
                debugPrint(" ")
            end
        end
    end
    scriptFree = true
end

-- Globals for setting custom plate !!Permanent!!
gi = globals.get_int
g = { pv = { n = 2359980, c = 1586504, s = 2738886, i = 2672804 } }

function setPlate(xx) -- Permanent Plate Changer (affects personal vehicles)
    if xx then
        c = localplayer
        if localplayer:is_in_vehicle() then
            local veh = localplayer:get_current_vehicle()
            if gi(g.pv.s) ~= -1 and gi(g.pv.i) == 0 then
                local x = gi(g.pv.n)
                globals.set_string(g.pv.c + 2 + (x == -1 and 0 or x) * 142, xx, 32)
            end
            veh:set_number_plate_text(xx)
        end
    end
end

-- Christmas loop
function Christmasplate(XMASSPEED)
    local NewSpeed = XMASSPEED

    if localplayer:get_current_vehicle() ~= nil then
        checkPlate()
        local veh = localplayer:get_current_vehicle()
        baseSleep = 0.25 * XMASSPEED -- Adjust the base sleep time based on the speed
        sleep(0.25)
        savedPlateText = veh:get_number_plate_text()
        savedPlateVehicle = veh
        XMASPLATE = true
        while XMASPLATE == true do
            setPlate("HO      ")
            sleep(baseSleep)
            setPlate("   HO   ")
            sleep(baseSleep)
            setPlate("      HO")
            sleep(baseSleep)
            if XMASPLATE == false then break end -- break out of the loop if false
            setPlate("   HO   ")
            sleep(baseSleep)
            setPlate("HO      ")
            sleep(baseSleep)
            setPlate("")
            sleep(baseSleep * 1.25)              -- Slightly shorter sleep for this step
            if XMASPLATE == false then break end -- break out of the loop if false
            setPlate("HO HO HO")
            sleep(baseSleep)
            setPlate("")
            sleep(baseSleep)
            setPlate("HO HO HO")
            sleep(baseSleep)
            if XMASPLATE == false then break end -- break out of the loop if false
            setPlate("")
            sleep(baseSleep)
            setPlate("HO HO HO")
            sleep(baseSleep * 1.32) -- Slightly longer sleep for this step
            setPlate("")
        end
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------- Scrolling Text Function ------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- Function to scroll text on the number plate
function ScrollText(message, speed)
    if localplayer and localplayer:is_in_vehicle() then
        debugPrint("scroll text function called, checking plate before continuation")
        checkPlate()
        if not message or type(message) ~= 'string' then
            debugPrint("Invalid message")
            return
        elseif not speed or type(speed) ~= 'number' or speed < 0 then
            debugPrint("Invalid or negative speed")
            speed = 1
        end
        scrollTextSavedMessage = message
        scrollTextSavedSpeed = speed

        local calculatedSpeed = speed * 0.25 -- Change the speed to a delay
        -- Ensure localplayer and setPlate functions are defined
        if localplayer:is_in_vehicle() == false then
            debugPrint("Error: No vehicle detected")
            return
        else
            local p = localplayer
            local v = p:get_current_vehicle()
            savedPlateText = v:get_number_plate_text()
            savedPlateVehicle = v
            local plateText = message .. "  " .. message .. "  " .. message .. "  " -- Add spaces for a gap
            local plateLength = #plateText
            infiniteScroll = true
            while infiniteScroll do
                for i = 1, plateLength do
                    if not infiniteScroll then
                        break
                    end

                    local displayText = plateText:sub(i, i + plateLength - 1)
                    setPlate(displayText)
                    sleep(calculatedSpeed)
                end
            end

            -- Restore the original plate text after scrolling
            if savedPlateText then
                setPlate(savedPlateText) -- Set it to the original message
            else
                debugPrint("No saved Plate Data, Setting plate to the default")
                setPlate(defaultPlate)
            end
        end
    else
        error("You cant put a plate on your ass! Get in a car!", 2)
    end
end

-- Function to toggle infinite scrolling
function ToggleInfiniteScroll()
    infiniteScroll = not infiniteScroll
end

-- Example usage
-- ScrollText("HELLO WORLD", 0.5) -- FUNCTION("MESSAGE", TIME)

function stopEverything()
    speedoRunning = false
    raceFinished = true
    raceRunning = false
    infiniteScroll = false
    XMASPLATE = false
    driftPlate = false
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------ Drift Plate Function -------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
local driftAngles = {}
local maxDriftAngleHistory = 5          -- The number of angles to keep in history for averaging
local updateDelay = 0.25                -- delay between refresh
local driftPoints = 0
local comboStreak = 0
local angleMultiplier = 2               -- Adjust as needed
local speedBonusThreshold = 30 * 3.5    -- Adjust as needed
local transitionAngleThreshold = 45     -- Adjust as needed, in degrees
local transitionPoints = 50             -- Adjust as needed

function setUpdateDelay(value)
    updateDelay = value / 1000          -- Convert milliseconds to seconds
end

-- Vector operations (drift plate functionality)
local function vectorDot(v1, v2)
    return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z
end

local function vectorMagnitude(v)
    return math.sqrt(v.x ^ 2 + v.y ^ 2 + v.z ^ 2)
end

local function vectorSubtract(v1, v2)
    return { x = v1.x - v2.x, y = v1.y - v2.y, z = v1.z - v2.z }
end

-- Function to calculate the weighted moving average
local function calculateWeightedMovingAverage(values)
    local total = 0
    local weightSum = 0
    for i, value in ipairs(values) do
        local weight = (maxDriftAngleHistory - i + 1) -- Weight decreases for older values
        total = total + value * weight
        weightSum = weightSum + weight
    end
    return total / weightSum
end

-- Updated function to calculate the drift angle with smoothing
local function calculateDriftAngle(veh)
    local headingVector = veh:get_heading()
    local position1 = veh:get_position()
    sleep(updateDelay) -- Sleep to allow for movement
    local position2 = veh:get_position()
    local velocityVector = vectorSubtract(position2, position1)
    local dot = vectorDot(headingVector, velocityVector)
    local magHeading = vectorMagnitude(headingVector)
    local magVelocity = vectorMagnitude(velocityVector)
    local cosAngle = dot / (magHeading * magVelocity)
    cosAngle = math.max(-1, math.min(1, cosAngle))
    local angleRad = math.acos(cosAngle)
    local angleDeg = math.deg(angleRad)

    -- Add the current drift angle to the history, removing the oldest if necessary
    table.insert(driftAngles, angleDeg)
    if #driftAngles > maxDriftAngleHistory then
        table.remove(driftAngles, 1)
    end

    -- Calculate the weighted moving average for the drift angle
    return calculateWeightedMovingAverage(driftAngles)
end

function toggleDriftPlate()
    if raceRunning then
        raceRunning = false
        raceFinished = true
    end
    if speedoRunning then
        speedoToggle()
    end
    if infiniteScroll then
        ToggleInfiniteScroll()
    end
    if XMASPLATE then
        XMASPLATE = false
        checkPlate()
    end
    if driftPlate then
        debugPrint("drift plate active, de-activating it now...")
        driftPlate = false
        checkPlate()
    else
        debugPrint("drift plate is in-active, activating now...")
        driftPlate = true
        startDriftPlate()
    end
end

function startDriftPlate()
    debugPrint("saving current plate for reversal")
    local v = localplayer:get_current_vehicle()
    savedPlateText = v:get_number_plate_text()
    savedPlateVehicle = v
    debugPrint("drift plate starting...")

    local prevDriftAngle = 0 -- To track the previous drift angle for transition detection

    while driftPlate do
        if localplayer and localplayer:is_in_vehicle() then
            local veh = localplayer:get_current_vehicle()
            local driftAngle = calculateDriftAngle(veh)
            local speed = vectorMagnitude(veh:get_velocity())

            -- Calculate points based on angle and speed
            local anglePoints = math.floor(math.abs(driftAngle) * angleMultiplier)
            local speedPoints = (speed > speedBonusThreshold) and math.floor(speed - speedBonusThreshold) or 0

            -- Update combo streak and detect transition
            local isTransition = math.abs(driftAngle - prevDriftAngle) > transitionAngleThreshold
            comboStreak = isTransition and 1 or comboStreak + 1

            -- Calculate points for transition
            local transitionBonus = isTransition and transitionPoints or 0

            -- Apply combo multiplier
            local comboMultiplier = 1 +
                math.floor(comboStreak / 3) -- Increase multiplier every 3 consecutive successful drifts

            -- Calculate total points
            local totalPoints = (anglePoints + speedPoints + transitionBonus) * comboMultiplier

            -- Update drift points
            driftPoints = driftPoints + totalPoints

            -- Print the current drift points and stats
            debugPrint("Move and resize the window so you dont see this text (controller player only)")
            debugPrint(" ") -- simulate a constantly changing display
            debugPrint(" ")
            debugPrint(" ")
            debugPrint("Current Drift Points: " .. driftPoints)
            debugPrint("Angle Points: " .. anglePoints)
            debugPrint("Speed Points: " .. speedPoints)
            debugPrint("Transition Bonus: " .. transitionBonus)
            debugPrint("Combo Streak: " .. comboStreak)
            debugPrint("Transition: " .. (isTransition and "Yes" or "No"))
            debugPrint("Total Points: " .. totalPoints)

            -- Print the angle to the plate
            local angleStr = string.format("%3.0f°", driftAngle)
            setPlate(angleStr)

            -- Update previous drift angle for the next iteration
            prevDriftAngle = driftAngle
        else
            sleep(0.99)
        end
        sleep(0.01)
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------- Menu Building -------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------


-- Main Menu Layout (order)
local daytonsMenu = menu.add_submenu("Dayton's Menu")

-- SubMenus
local daytonsDriftPlate = daytonsMenu:add_submenu("Drift Plate")
local daytonsSpeedoMenu = daytonsMenu:add_submenu("Speedometer")
local daytonsDragMenu = daytonsMenu:add_submenu("Drag Section")
local daytonsTuning = daytonsMenu:add_submenu("1 click Tuning")
local daytonsCustomPlates = daytonsMenu:add_submenu("Custom Plates")
local daytonsRims = daytonsMenu:add_submenu("Tire Mods (Use in CEO Office)")

-- Static Plate SubMenus
local PermanentPlateChangeMenu = daytonsCustomPlates:add_submenu("Permanent/Static Plates")
local KeefsPlateInputMenu = daytonsCustomPlates:add_submenu("User Input Plate Changer(user typed)")
local userPlateMenu = PermanentPlateChangeMenu:add_submenu("User Plates(pre-made)")
local starWarsMenu = PermanentPlateChangeMenu:add_submenu("Star Wars Plates")
local gtaMenu = PermanentPlateChangeMenu:add_submenu("GTA Plates")
local racersGearheadsMenu = PermanentPlateChangeMenu:add_submenu("Racers & Gearheads Plates")
local popCultureMenu = PermanentPlateChangeMenu:add_submenu("Pop Culture Plates")

-- Dynamic Plate SubMenus
local DynamicPlateMenu = daytonsCustomPlates:add_submenu("Dynamic Plates")
local xmasDynamicPlateMenu = DynamicPlateMenu:add_submenu("Christmas Loop")

-- Scrolling Text SubMenus
local DaytonsScrollMenu = DynamicPlateMenu:add_submenu("Dayton's Dynamic Plates")
local scrollingtextmenu = DynamicPlateMenu:add_submenu("Scrolling Message Plates")

-- MERRY CHRISTMAS SCROLL
local MerryChristmasScrollMenu = scrollingtextmenu:add_submenu("EAT SHIT AND DIE Loop")

-- Plate Designs (Colours)
local textcolormenu = PermanentPlateChangeMenu:add_submenu("Plate Text Colors")

-- User Input Menu
local userInputMenu = KeefsPlateInputMenu:add_submenu("Keyboard Input (experimental)", function()
    debugMode = true
    debugPrint("Stopping Everything Before Recording Keystrokes")
    stopEverything()
    debugPrint(" ")
    debugPrint("Welcome to Don Reagan's Experimental User Input Method")
    debugPrint("Please give an honest review and report any bugs you find.")
    debugPrint(" ")
    startRecording()
end)

-- User Settings Menu
local userSettingsMenu = daytonsMenu:add_submenu("Settings")


daytonsDriftPlate:add_int_range("Update Delay (ms)", 20, 20, 1000, function()
    return updateDelay * 1000 -- Convert seconds back to milliseconds for display
end, function(value)
    setUpdateDelay(value)
    debugPrint("update set to " .. value)
end)
daytonsDriftPlate:add_toggle("Drift Plate Toggle", function() return driftPlate end,
    function()
        debugPrint("drift plate pressed")
        toggleDriftPlate()
    end)
daytonsSpeedoMenu:add_toggle("Speedo ON/OFF", function() return speedoRunning end,
    function()
        if speedoRunning then
            speedoToggle()
            checkPlate()
        else
            speedoToggle()
        end
    end)
daytonsSpeedoMenu:add_action("KPH / MPH", function()
    toggleSpeedmode()
end
)
daytonsDragMenu:add_action("---------------------------------------------", rip)
daytonsDragMenu:add_action("------- Dayton's Drag Racing -------", rip)
daytonsDragMenu:add_array_item("Distance", raceDistanceOptions,
    function()
        return selectedDistanceIndex
    end,
    function(index)
        selectedDistanceIndex = index
        selectedDistance = raceDistanceOptions[index]
        raceDistance = raceDistances[selectedDistance]
        if savedPlateText == nil then
            debugPrint("saving the plate")
            local p = localplayer
            local v = p:get_current_vehicle()
            savedPlateText = v:get_number_plate_text()
            savedPlateVehicle = v
        end
        checkPlate()
        setPlate(selectedDistance)
        debugPrint("selected distance: " .. selectedDistance)
    end)
daytonsDragMenu:add_action("Start Drag Race",
    function()
        local distanceName = raceDistanceOptions[selectedDistanceIndex]
        local distance = raceDistances[distanceName]
        local vehicle = localplayer:get_current_vehicle()
        if vehicle then
            raceDistance = distance
            checkPlate()
            debugPrint("starting the DoDragRace function now")
            DoDragRace()
        else rip() end
    end)
daytonsDragMenu:add_action("", function() rip() end)
daytonsDragMenu:add_action("Quit Race (Do NOT Hold)", function() abortrace() end)
daytonsDragMenu:add_action("", function() rip() end)
daytonsDragMenu:add_action("Print Hash (to add to the list)", function() printHash() end)
daytonsDragMenu:add_action("", function() rip() end)
daytonsDragMenu:add_action("---------------------------------------------", rip)
daytonsDragMenu:add_action("Enable LUA Debug in Menu Settings,", rip)
daytonsDragMenu:add_action("to view your recent race times.", rip)
daytonsDragMenu:add_action("Please Read The Instruction Set.", rip)
daytonsDragMenu:add_action("---------------------------------------------", rip)
daytonsTuning:add_action("Fast Drift Tune", function() fastDrift() end)
daytonsTuning:add_action("Slow Drifting Tune", function() slowDrift() end)
daytonsTuning:add_action("Spood Beast", function() spoodBeast() end)
daytonsRims:add_action(" ", function() rip() end) -- Original thanks to Silent
daytonsRims:add_action("Select in ceo office modshop.", function() rip() end)
daytonsRims:add_action("After buying the tire, turn off the toggle,", function() rip() end)
daytonsRims:add_action("then leave the ceo modshop.", function() rip() end)
daytonsRims:add_action("your tires are now permanently set.", function() rip() end)
daytonsRims:add_action(" ", function() rip() end)
daytonsRims:add_toggle("F1 Wheels", function() return f1Mode end,
    function()
        if bennysMode == false then
            f1ModeToggle()
        else
            bennysModeToggle()
            f1ModeToggle()
        end
    end)
daytonsRims:add_toggle("Benny's Wheels", function() return bennysMode end,
    function()
        if f1Mode then
            f1ModeToggle()
            bennysModeToggle()
        else
            bennysModeToggle()
        end
    end
)
DynamicPlateMenu:add_action("STOP EVERYTHING (HOLD)", function() checkPlate() end)

DaytonsScrollMenu:add_action("Stop Scrolling!!", function() stopEverything() end)

scrollingtextmenu:add_toggle("Infinite Loop", function() return infiniteScroll end,
    function() ToggleInfiniteScroll() end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE TOO FAST", function() ScrollText("EAT SHIT AND DIE", 0.75) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE FAST", function() ScrollText("EAT SHIT AND DIE", 1) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE NORMAL", function() ScrollText("EAT SHIT AND DIE", 2) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE SLOW", function() ScrollText("EAT SHIT AND DIE", 3) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE TOO SLOW", function() ScrollText("EAT SHIT AND DIE", 4) end)
--Dayton's Dynamic Plates
DaytonsScrollMenu:add_action("Move bitch, get out the way hoe",
    function() ScrollText("move bitch  get out the way hoe", 1) end)
DaytonsScrollMenu:add_action("Swearing", function() ScrollText("Fuck DICK SHIT BITCH CUNT PUSSY ass COCKSUCKER ", 1) end)
DaytonsScrollMenu:add_action("FASTER THAN YOU", function() ScrollText("IM FASTER THAN YOU", 1) end)
DaytonsScrollMenu:add_action("BOATS N HOES", function() ScrollText("BOATS N HOES", 2) end)
DaytonsScrollMenu:add_action("SKRT", function() ScrollText("SKKRRRRRRRRRT", 2) end)
-- HO HO HO PLATES
xmasDynamicPlateMenu:add_action("Very Fast", function() Christmasplate(0.5) end)
xmasDynamicPlateMenu:add_action("Fast", function() Christmasplate(0.75) end)
xmasDynamicPlateMenu:add_action("Normal", function() Christmasplate(1) end)
xmasDynamicPlateMenu:add_action("Slower", function() Christmasplate(2) end)
xmasDynamicPlateMenu:add_action("Slowest", function() Christmasplate(4) end)
xmasDynamicPlateMenu:add_action("STOP EVERYTHING (HOLD)", function() stopEverything() end)
textcolormenu:add_action("Orange",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(2)
    end)
textcolormenu:add_action("Blue",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(3)
    end)
textcolormenu:add_action("Black",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(5)
    end)
textcolormenu:add_action("White",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(6)
    end)
textcolormenu:add_action("Bright Yellow",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(10)
    end)
textcolormenu:add_action("Dull Yellow",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(1)
    end)
-- User Plate Category
KeefsPlateInputMenu:add_action("Write your own plates by opening", rip)
KeefsPlateInputMenu:add_action("the debug log", rip)
KeefsPlateInputMenu:add_action("while the debug log is open,", rip)
KeefsPlateInputMenu:add_action("select the option", rip)
KeefsPlateInputMenu:add_action("to allow more than 8 characters if you want to", rip)
KeefsPlateInputMenu:add_action("if you want to use scrolling text", rip)
KeefsPlateInputMenu:add_action("on your license plate", rip)
KeefsPlateInputMenu:add_action("", rip)
KeefsPlateInputMenu:add_action("More instructions will be in the", rip)
KeefsPlateInputMenu:add_action("debug log when you open the submenu", rip)
KeefsPlateInputMenu:add_action(" ", rip)
KeefsPlateInputMenu:add_action("STOP SCROLLING TEXT", function()
    sleep(0.001)
    infiniteScroll = false
    sleep(0.001)
    checkPlate()
end)
-- Add toggle for allowing more than 8 characters
userInputMenu:add_toggle("Toggle Keystroke Recording", function() return recordingKeystrokes end, function() toggleKeystrokeRecording() end)
-- Add toggle for allowing more than 8 characters
userInputMenu:add_toggle("Allow More Than 8 Characters", function() return allowMoreThan8Characters end,
    function()
        allowMoreThan8Characters = not allowMoreThan8Characters
        debugPrint("Allowing more than 8 characters: " .. tostring(allowMoreThan8Characters))
    end)
userInputMenu:add_action("Stop Scrolling Text",
    function()
        sleep(0.001)
        infiniteScroll = false
        sleep(0.001)
        checkPlate()
    end)
userPlateMenu:add_array_item("Custom Plates", customPlates["USERPLATES"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["USERPLATES"][value])
            savedPlateText = customPlates["USERPLATES"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
-- STAR WARS Categories
starWarsMenu:add_array_item("Characters", customPlates["starWarsCharacterPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["starWarsCharacterPlates"][value])
            savedPlateText = customPlates["starWarsCharacterPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
starWarsMenu:add_array_item("Ships", customPlates["starWarsShipPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["starWarsShipPlates"][value])
            savedPlateText = customPlates["starWarsShipPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
-- GTA Categories
gtaMenu:add_array_item("Vice City", customPlates["gtaViceCityPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["gtaViceCityPlates"][value])
            savedPlateText = customPlates["gtaViceCityPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
gtaMenu:add_array_item("San Andreas", customPlates["gtaSanAndreasPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["gtaSanAndreasPlates"][value])
            savedPlateText = customPlates["gtaSanAndreasPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
gtaMenu:add_array_item("IV", customPlates["gtaIVPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["gtaIVPlates"][value])
            savedPlateText = customPlates["gtaIVPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
gtaMenu:add_array_item("V", customPlates["gtaVPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["gtaVPlates"][value])
            savedPlateText = customPlates["gtaVPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
gtaMenu:add_array_item("VI", customPlates["gta6CharactersLocationsPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["gta6CharactersLocationsPlates"][value])
            savedPlateText = customPlates["gta6CharactersLocationsPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
-- Racers & Gearheads Categories
racersGearheadsMenu:add_array_item("Off-Roaders", customPlates["offRoadPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["offRoadPlates"][value])
            savedPlateText = customPlates["offRoadPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
racersGearheadsMenu:add_array_item("Supercars", customPlates["supercarPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["supercarPlates"][value])
            savedPlateText = customPlates["supercarPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
racersGearheadsMenu:add_array_item("Street Tuners", customPlates["streetTunerPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["streetTunerPlates"][value])
            savedPlateText = customPlates["streetTunerPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
racersGearheadsMenu:add_array_item("Muscle Cars", customPlates["muscleCarPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["muscleCarPlates"][value])
            savedPlateText = customPlates["muscleCarPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
racersGearheadsMenu:add_array_item("Vintage Classics", customPlates["vintageClassicPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["vintageClassicPlates"][value])
            savedPlateText = customPlates["vintageClassicPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
-- Pop Culture Categories
popCultureMenu:add_array_item("Game Characters", customPlates["gameCharacterPlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["gameCharacterPlates"][value])
            savedPlateText = customPlates["gameCharacterPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end
)
popCultureMenu:add_array_item("Game Vehicles", customPlates["gameVehiclePlates"], function() end,
    function(value)
        if localplayer and localplayer:is_in_vehicle() then
            stopEverything()
            setPlate(customPlates["gameVehiclePlates"][value])
            savedPlateText = customPlates["gameVehiclePlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
daytonsCustomPlates:add_action("Stop Scrolling!!", function() stopEverything() end)
userSettingsMenu:add_toggle("Debug Mode", function() return debugMode end, function() toggleDebugMode() end)
userSettingsMenu:add_toggle("MPH Speedometer",
    function() if speedmode.current == speedmode.kph then return false else return true end end,
    function() toggleSpeedmode() end)
