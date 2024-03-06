--This is a test scrip to show dayton how to code.
-- Daytons Menu V5
function printFlag()
    print("  ")
    print("  ")
    print("  ")
    print(" DACANADACANADACANADACANADACANADACANADACANADACANADACANADACANADACANAD")
    print(" ACANADACANADACAN                                   NADACANADACANADA")
    print(" CANADACANADACANA                 A                 ADACANADACANADAC")
    print(" ANADACANADACANAD                ADA                DACANADACANADACA")
    print(" NADACANADACANADA           AC  ADACA  DA           ACANADACANADACAN")
    print(" ADACANADACANADAC            ANADACANADA            CANADACANADACANA")
    print(" DACANADACANADACA        DA   ADACANADA   AD        ANADACANADACANAD")
    print(" ACANADACANADACAN    ANADACAN  ACANADA  NADACANA    NADACANADACANADA")
    print(" CANADACANADACANA     ADACANADACANADACANADACANA     ADACANADACANADAC")
    print(" ANADACANADACANAD   NADACANADACANADACANADACANADAC   DACANADACANADACA")
    print(" NADACANADACANADA      CANADACANADACANADACANAD      ACANADACANADACAN")
    print(" ADACANADACANADAC         DACANADACANADACAN         CANADACANADACANA")
    print(" DACANADACANADACA           ANADACANADACA           ANADACANADACANAD")
    print(" ACANADACANADACAN         CANADACANADACANAD         NADACANADACANADA")
    print(" CANADACANADACANA                 A                 ADACANADACANADAC")
    print(" ANADACANADACANAD                 D                 DACANADACANADACA")
    print(" NADACANADACANADA                 A                 ACANADACANADACAN")
    print(" ADACANADACANADAC                                   CANADACANADACANA")
    print(" DACANADACANADACANADACANADACANADACANADACANADACANADACANADACANADACANAD")
    print("  ")
    print(" Love From Canada.")
    print("  ")
    print("  ")
end

local daytonsMenu = menu.add_submenu("Dayton's Menu")

--[[ To be implemented
local positiveMessages = {}
local LINEMESSAGES = {}
local rickMortyMessages = {}
local ganjaMessages = {}
function loadCustomScrollingTextStrings()
    positiveMessages = {
        "Life's too short to be anything but happy.",
        "Keep moving forward, one step at a time.",
        "Embrace the journey, not just the destination.",
        "Believe in yourself and all that you are.",
        "Every moment is a fresh beginning.",
        "Dream big and dare to fail.",
        "Happiness is a choice, not a result.",
        "You are capable of amazing things.",
        "Chase your dreams, but always know the road that'll lead you home again.",
        "Success is not final, failure is not fatal: It is the courage to continue that counts.",
        "Be creative  live a fun life  and dont be an asshole"
    }

    LINEMESSAGES = {
        "III11i1ii11ii11i1i1i1ii111ii11i1i1i1ii111ii11ii11ii1i11ii1111ii11ii11i1i1i1",
        "iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"
    }

    rickMortyMessages = {
        "DONT BE A DICK MORTY",
        "WUBBA LUBBA DUB DUB",
        ""
    }

    ganjaMessages = {
        "puff puff pass",
        "roll one for the skipper",
        "roll roll roll your joints",
        "SMOK ONE",
        "OG KUSH",
        "FOUR 20",
        "420",
        "THC",
        "CALI BUD",
        "BC BUD",
        "BONGMEUP",
        "BONG ME UP",
        "BONG RIP",
        "CHILLOUT",
        "SPARK ME UP SCOTTY",
        "GANJA",
        "GAS WEED",
        "WEED DEDLIVERY",
        "GRASSMAN",
        "KEEF IT UP",
        "GRN CRAK",
        "GREEN CRACK,"
    }
end
]]
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

    print(" Loading of Custom Plates Complete")
end

local Timer = {}

-- start the timer
function Timer.start()
    startTimeInCar = getTimeInCar() -- Reset the timer with the current time in the car
end

-- Get the elapsed time in milliseconds since the timer started
function Timer.elapsedTime()
    local currentTimeInCar = getTimeInCar()
    local elapsedMilliseconds = (currentTimeInCar - startTimeInCar)
    return elapsedMilliseconds
end

-- Function to get the current time in car
function getTimeInCar()
    return stats.get_int(" MP" .. stats.get_int(" MPPLY_LAST_MP_CHAR") .. "_TIME_IN_CAR")
end

-- Vehicle Hash Data
local vehicleHashes = {}

function loadVehicleHashes()
    -- Vehicle Hash File Import
    vehicleHashes = {
        [-1132721664] = "Imorgon",
        [1456336509] = "Vstr",
        [1284356689] = "Zhaba",
        [740289177] = "Vargant",
        [872704284] = "Sultan Classic",
        [987469656] = "Sugoi",
        [301304410] = "Stryder",
        [2031587082] = "Retinue2",
        [408825843] = "Outlaw",
        [394110044] = "Jb7002",
        [960812448] = "Furia",
        [-1960756985] = "Formula2",
        [340154634] = "Formula",
        [-1756021720] = "Everon",
        [-2098954619] = "Club",
        [-1728685474] = "Coquette4",
        [2134119907] = "Beater Dukes",
        [-2122646867] = "Gauntlet5",
        [-913589546] = "Glendale Custom",
        [-838099166] = "Landstalker2",
        [1717532765] = "Manana2",
        [1492612435] = "Openwheel1",
        [1181339704] = "Openwheel2",
        [-631322662] = "Penumbra2",
        [1107404867] = "Peyote Custom",
        [-1810806490] = "Seminole Frontier",
        [-1358197432] = "Tigon",
        [1802742206] = "Youga3",
        [-777275802] = "Freighttrailer",
        [-1744505657] = "Impaler4",
        [600450546] = "Hustler",
        [628003514] = "Issi4",
        [-1293924613] = "Dominator6",
        [1239571361] = "Issi6",
        [679453769] = "Cerberus2",
        [1279262537] = "Deviant",
        [-579747861] = "Scarab3",
        [1502869817] = "Trailerlarge",
        [-1259134696] = "Flashgt",
        [-1374500452] = "Deathbike3",
        [1938952078] = "Firetruk",
        [1721676810] = "Monster3",
        [-1146969353] = "Scarab",
        [-42959138] = "Hunter",
        [1637620610] = "Imperator2",
        [840387324] = "Monster4",
        [-376434238] = "Tyrant",
        [1254014755] = "Caracara",
        [-1134706562] = "Taipan",
        [788045382] = "Sanchez",
        [-214906006] = "Jester Classic",
        [1542143200] = "Scarab2",
        [931280609] = "Issi3",
        [1046206681] = "Michelli",
        [-1694081890] = "Bruiser2",
        [1537277726] = "Issi5",
        [-1924800695] = "Impaler3",
        [1742022738] = "Slamvan6",
        [1617472902] = "Fagaloa",
        [-1100548694] = "Trailers4",
        [-2042350822] = "Bruiser3",
        [-1566607184] = "Clique",
        [1118611807] = "Asbo",
        [409049982] = "Kanjo",
        [-1254331310] = "Minitank",
        [1693751655] = "Yosemite2",
        [83136452] = "Rebla",
        [-834353991] = "Komoda",
        [159274291] = "Ardent",
        [1011753235] = "Coquette2",
        [1051415893] = "Jb700",
        [418536135] = "Infernus",
        [-1558399629] = "Tornado6",
        [-1566741232] = "Feltzer3",
        [-982130927] = "Turismo2",
        [1762279763] = "Tornado3",
        [1504306544] = "Torero",
        [500482303] = "Swinger",
        [1483171323] = "Deluxo",
        [1841130506] = "Retinue",
        [886810209] = "Stromberg",
        [-882629065] = "Nebula",
        [668439077] = "Bruiser",
        [2139203625] = "Brutus",
        [444994115] = "Imperator",
        [2038858402] = "Brutus3",
        [1009171724] = "Impaler2",
        [868868440] = "Metrotrain",
        [-1476447243] = "Armytrailer",
        [-2061049099] = "Slamvan4",
        [219613597] = "Speedo4",
        [-1812949672] = "Deathbike2",
        [1126868326] = "Bfinjection",
        [-801550069] = "Cerberus",
        [373261600] = "Slamvan5",
        [1909189272] = "Gb200",
        [-1267543371] = "Ellie",
        [838982985] = "Z190",
        [661493923] = "Comet5",
        [-755532233] = "Imperator3",
        [-1375060657] = "Future Shock Dominator",
        [-688189648] = "Apocalypse Dominator",
        [-27326686] = "Deathbike",
        [408970549] = "Avenger2",
        [-1890996696] = "Brutus2",
        [-2120700196] = "Entity2",
        [-715746948] = "Monster5",
        [-121446169] = "Kamacho",
        [1909700336] = "Cerberus3",
        [-1842748181] = "Faggio",
        [2069146067] = "Oppressor2",
        [-891462355] = "Bati2",
        [-757735410] = "Fcr2",
        [-609625092] = "Vortex",
        [-1352468814] = "Trflat",
        [1019737494] = "Graintrailer",
        [-1770643266] = "Tvtrailer",
        [1854776567] = "Issi7",
        [1922255844] = "Schafter6",
        [-1372848492] = "Kuruma",
        [-1106353882] = "Jester2",
        [736902334] = "Buffalo2",
        [353883353] = "Polmav",
        [-1973172295] = "Unmarked Cruiser",
        [-1779120616] = "Police RoadCruiser",
        [-2007026063] = "Prison Bus",
        [2046537925] = "Police Cruiser ()",
        [-1536924937] = "Police Rancher",
        [1912215274] = "Police Cruiser ()",
        [1127131465] = "Fbi",
        [-1205689942] = "Riot",
        [-1627000575] = "Police Cruiser ()",
        [469291905] = "Lguard",
        [719660200] = "Ruston",
        [108773431] = "Coquette",
        [-1106120762] = "Zr3802",
        [1104234922] = "Sentinel3",
        [-1089039904] = "Furore GT",
        [-1757836725] = "Seven70",
        [310284501] = "Dynasty",
        [-777172681] = "Omnis",
        [-566387422] = "Elegy2",
        [-1041692462] = "Banshee",
        [237764926] = "Buffalo3",
        [-2022483795] = "Comet3",
        [-1848994066] = "Neon",
        [410882957] = "Kuruma2",
        [-208911803] = "Jugular",
        [-331467772] = "Italigto",
        [767087018] = "Alpha",
        [499169875] = "Fusilade",
        [1102544804] = "Verlierer2",
        [-1620126302] = "Neo",
        [867799010] = "Pariah",
        [-1529242755] = "Raiden",
        [1074745671] = "Specter2",
        [1489967196] = "Schafter4",
        [-1485523546] = "Schafter3",
        [196747873] = "Elegy",
        [686471183] = "Drafter",
        [-591651781] = "Blista3",
        [-377465520] = "Penumbra",
        [-447711397] = "Paragon",
        [1886268224] = "Specter",
        [-941272559] = "Locust",
        [1039032026] = "Blista2",
        [540101442] = "Zr380",
        [-304802106] = "Buffalo",
        [-1045541610] = "Comet2",
        [-1995326987] = "Feltzer2",
        [544021352] = "Khamelion",
        [-888242983] = "Schafter5",
        [1032823388] = "Obey 9F",
        [-1461482751] = "Ninef2",
        [-362150785] = "Hellion",
        [-286046740] = "Rcbandito",
        [-54332285] = "Freecrawler",
        [101905590] = "Trophytruck",
        [1233534620] = "Marshall",
        [-1435919434] = "Bodhi2",
        [-1590337689] = "Blazer5",
        [-1237253773] = "Dubsta3",
        [-1479664699] = "Brawler",
        [1645267888] = "Rancherxl",
        [-2045594037] = "Rebel2",
        [-845961253] = "Monster",
        [-663299102] = "Trophytruck2",
        [92612664] = "Kalahari",
        [-312295511] = "Ramp Buggy 2",
        [-827162039] = "Ramp Buggy",
        [-2103821244] = "Rallytruck",
        [-1912017790] = "Wastelander",
        [1917016601] = "Trash",
        [-305727417] = "Brickade",
        [1283517198] = "Airbus",
        [1941029835] = "Tourbus",
        [-2072933068] = "Coach",
        [-713569950] = "Bus",
        [-956048545] = "Taxi",
        [345756458] = "Pbus2",
        [-1098802077] = "Rentalbus",
        [-1255698084] = "Trash2",
        [-311022263] = "Seashark3",
        [1448677353] = "Tropic2",
        [1033245328] = "Dinghy",
        [-1066334226] = "Submersible2",
        [861409633] = "Jetmax",
        [1070967343] = "Toro",
        [-616331036] = "Seashark2",
        [290013743] = "Tropic",
        [-2100640717] = "Tug",
        [400514754] = "Squalo",
        [771711535] = "Submersible",
        [1739845664] = "Bison3",
        [-1743316013] = "Burrito3",
        [-1126264336] = "Minivan2",
        [-16948145] = "Bison",
        [728614474] = "Speedo2",
        [1026149675] = "Youga2",
        [-810318068] = "Speedo",
        [-1987130134] = "Boxville",
        [943752001] = "Pony2",
        [-310465116] = "Minivan",
        [1132262048] = "Burrito5",
        [296357396] = "Gburrito2",
        [1951180813] = "Taco",
        [-1311240698] = "Surfer2",
        [-907477130] = "Burrito2",
        [534258863] = "sPACE dOCKER",
        [-1269889662] = "Blazer3",
        [-1207771834] = "Rebel",
        [1770332643] = "Dloader",
        [2071877360] = "Insurgent2",
        [-1532697517] = "Riata",
        [1180875963] = "Technical2",
        [1897744184] = "Dune FAV",
        [989381445] = "Sandking2",
        [1356124575] = "Technical3",
        [433954513] = "Nightshark",
        [-1924433270] = "Insurgent3",
        [-1349095620] = "Caracara2",
        [-1860900134] = "Insurgent",
        [-2096818938] = "Technical",
        [-2064372143] = "Mesa3",
        [2044532910] = "Menacer",
        [1933662059] = "Rancherxl2",
        [-48031959] = "Blazer2",
        [-440768424] = "Blazer4",
        [-349601129] = "Bifta",
        [-2128233223] = "Blazer",
        [-1189015600] = "Sandking",
        [-1661854193] = "Dune",
        [1824333165] = "Besra",
        [1058115860] = "Jet",
        [621481054] = "Luxor",
        [-1214293858] = "Luxor2",
        [1341619767] = "Vestra",
        [-975345305] = "Rogue",
        [-2122757008] = "Stunt",
        [-1746576111] = "Mammatus",
        [1349725314] = "Sentinel",
        [330661258] = "Cogcabrio",
        [-1193103848] = "Zion2",
        [1581459400] = "Windsor",
        [-89291282] = "Felon2",
        [-624529134] = "Jackal",
        [-511601230] = "Oracle2",
        [-1930048799] = "Windsor2",
        [-5153954] = "Exemplar",
        [-391594584] = "Felon",
        [-1122289213] = "Zion",
        [-591610296] = "F620",
        [873639469] = "Sentinel2",
        [1348744438] = "Oracle",
        [-1776615689] = "Rumpo2",
        [893081117] = "Burrito4",
        [1069929536] = "Bobcatxl",
        [-119658072] = "Pony",
        [121658888] = "Boxville3",
        [1488164764] = "Paradise",
        [1876516712] = "Camper",
        [-1346687836] = "Burrito",
        [-1745203402] = "Gburrito",
        [699456151] = "Surfer",
        [1475773103] = "Rumpo3 or boxvile3",
        [1162065741] = "Rumpo",
        [-233098306] = "Boxville2",
        [444171386] = "Boxville4",
        [-120287622] = "Journey",
        [65402552] = "Youga",
        [2072156101] = "Bison2",
        [782665360] = "Rhino",
        [-1435527158] = "Khanjali",
        [-212993243] = "Barrage",
        [1074326203] = "Barracks2",
        [630371791] = "Barracks3",
        [-1881846085] = "Trailersmall2",
        [-692292317] = "Chernobog",
        [562680400] = "Apc",
        [321739290] = "Crusader",
        [-823509173] = "Barracks",
        [-32236122] = "Halftrack",
        [-1214505995] = "Shamal",
        [-1295027632] = "Nimbus",
        [-1006919392] = "Cutter",
        [444583674] = "Handler",
        [1886712733] = "Bulldozer",
        [-2130482718] = "Dump",
        [-1705304628] = "Rubble",
        [-784816453] = "Mixer",
        [475220373] = "Mixer2",
        [-2107990196] = "Guardian",
        [1353720154] = "Flatbed",
        [1269098716] = "Landstalker",
        [-808457413] = "Patriot",
        [1337041428] = "Serrano",
        [1221512915] = "Seminole",
        [-1543762099] = "Gresley",
        [142944341] = "Baller2",
        [1203490606] = "Xls",
        [-1829436850] = "Novak",
        [914654722] = "Mesa",
        [-808831384] = "Baller",
        [-789894171] = "Cavalcade2",
        [-394074634] = "Dubsta2",
        [666166960] = "Baller6",
        [-420911112] = "Patriot2",
        [850565707] = "Bjxl",
        [3862958888] = "Xls2",
        [634118882] = "Baller4",
        [1878062887] = "Baller3",
        [486987393] = "Huntley",
        [-1137532101] = "Fq2",
        [470404958] = "Baller5",
        [-1775728740] = "Granger",
        [683047626] = "Contender",
        [-748008636] = "Mesa2",
        [2006918058] = "Cavalcade",
        [884422927] = "Habanero",
        [-1168952148] = "Toros",
        [1177543287] = "Dubsta",
        [2136773105] = "Rocoto",
        [-1651067813] = "Radi",
        [1489874736] = "Thruster",
        [-295689028] = "Sultanrs",
        [-1403128555] = "Zentorno",
        [2123327359] = "Prototipo",
        [-1242608589] = "Vigilante",
        [1031562256] = "Tezeract",
        [819197656] = "Sheava",
        [989294410] = "Voltic2",
        [-682108547] = "Zorrusso",
        [917809321] = "Xa21",
        [338562499] = "Vacca",
        [1392481335] = "Cyclone",
        [-324618589] = "S80",
        [1093792632] = "Nero2",
        [-638562243] = "Scramjet",
        [1352136073] = "Sc1",
        [1987142870] = "Osiris",
        [-1696146015] = "Bullet",
        [-313185164] = "Autarch",
        [-998177792] = "Visione",
        [1034187331] = "Nero",
        [-1622444098] = "Voltic",
        [1426219628] = "Fmj",
        [1663218586] = "T20",
        [1234311532] = "Gp1",
        [-664141241] = "Krieger",
        [1323778901] = "Emerus",
        [633712403] = "Banshee2",
        [1939284556] = "Vagner",
        [-1291952903] = "Entityxf",
        [2067820283] = "Tyrus",
        [272929391] = "Tempesta",
        [234062309] = "Reaper",
        [-482719877] = "Italigtb2",
        [-1216765807] = "Adder",
        [-1232836011] = "Le7b",
        [408192225] = "Turismor",
        [1044193113] = "Thrax",
        [-947761570] = "Tiptruck2",
        [48339065] = "Tiptruck",
        [841808271] = "Rhapsody",
        [-1177863319] = "Issi2",
        [1682114128] = "Dilettante2",
        [-1130810103] = "Dilettante",
        [1723137093] = "Stratum",
        [906642318] = "Cog55",
        [-14495224] = "Regina",
        [-1008861746] = "Tailgater",
        [886934177] = "Intruder",
        [-2040426790] = "Primo2",
        [-1883869285] = "Premier",
        [-1807623979] = "Asea2",
        [1777363799] = "Washington",
        [-1477580979] = "Stanier",
        [321186144] = "Stafford",
        [-1894894188] = "Surge",
        [-1903012613] = "Asterope",
        [1909141499] = "Fugitive",
        [-1883002148] = "Emperor2",
        [-1809822327] = "Asea",
        [1123216662] = "Superd",
        [-114627507] = "Limo2",
        [704435172] = "Cog552",
        [-685276541] = "Emperor",
        [-1255452397] = "Schafter2",
        [-604842630] = "Cognoscenti2",
        [-1289722222] = "Ingot",
        [-2030171296] = "Cognoscenti",
        [1373123368] = "Warrener",
        [-1150599089] = "Primo",
        [75131841] = "Glendale",
        [-1961627517] = "Stretch",
        [627094268] = "Romero",
        [-1241712818] = "Emperor3",
        [-1829802492] = "Pfister811",
        [-2048333973] = "Italigtb",
        [-1758137366] = "Penetrator",
        [-1311154784] = "Cheetah",
        [-1361687965] = "Chino2",
        [1896491931] = "Moonbeam2",
        [-1790546981] = "Faction2",
        [972671128] = "Tampa",
        [2006667053] = "Voodoo",
        [784565758] = "Coquette3",
        [-589178377] = "Ratloader2",
        [723973206] = "Dukes",
        [-682211828] = "Buccaneer",
        [349605904] = "Chino",
        [525509695] = "Moonbeam",
        [-1943285540] = "Nightshade",
        [729783779] = "Slamvan",
        [-1210451983] = "Tampa3",
        [16646064] = "Virgo3",
        [833469436] = "Slamvan2",
        [-227741703] = "Ruiner",
        [523724515] = "Voodoo2",
        [-1800170043] = "Gauntlet",
        [80636076] = "Dominator",
        [1934384720] = "Gauntlet4",
        [-1013450936] = "Buccaneer2",
        [-667151410] = "Ratloader",
        [37348240] = "Hotknife",
        [15219735] = "Hermes",
        [1119641113] = "Slamvan3",
        [722226637] = "Gauntlet3",
        [941494461] = "Ruiner2",
        [-498054846] = "Virgo",
        [-2039755226] = "Faction3",
        [642617954] = "Freightgrain",
        [1030400667] = "Freight",
        [184361638] = "Freightcar",
        [920453016] = "Freightcont1",
        [240201337] = "Freightcont2",
        [586013744] = "Tankercar",
        [1549126457] = "Brioso",
        [-431692672] = "Panto",
        [-344943009] = "Blista",
        [-1450650718] = "Prairie",
        [1491375716] = "Forklift",
        [-442313018] = "Towtruck2",
        [2132890591] = "Utillitruck3",
        [734217681] = "Sadler2",
        [1560980623] = "Airtug",
        [1641462412] = "Tractor",
        [-884690486] = "Docktug",
        [-537896628] = "Caddy2",
        [1147287684] = "Caddy",
        [516990260] = "Utillitruck",
        [-2076478498] = "Tractor2",
        [887537515] = "Utillitruck2",
        [3525819835] = "Caddy3",
        [-845979911] = "Ripley",
        [-599568815] = "Sadler",
        [-1323100960] = "Towtruck",
        [1783355638] = "Mower",
        [1445631933] = "Tractor3",
        [-1700801569] = "Scrap",
        [1871995513] = "Yosemite",
        [-326143852] = "Dukes2",
        [-49115651] = "Vamos",
        [-915704871] = "Dominator2",
        [-1804415708] = "Peyote2",
        [-825837129] = "Vigero",
        [223258115] = "Sabregt2",
        [777714999] = "Ruiner3",
        [-899509638] = "Virgo2",
        [1456744817] = "Tulip",
        [-2119578145] = "Faction",
        [-2096690334] = "Impaler",
        [-986944621] = "Dominator3",
        [-1685021548] = "Sabregt",
        [349315417] = "Gauntlet2",
        [-401643538] = "Stalion2",
        [-2095439403] = "Phoenix",
        [1923400478] = "Stalion",
        [-1205801634] = "Blade",
        [2068293287] = "Lurcher",
        [1507916787] = "Picador",
        [-893984159] = "Obey 10F",
        [-1029730482] = "Cavlacade XL",
        [-1372798934] = "Karin Vivanite",
        [-1233767450] = "Gauntlet Interceptor",
        [-1674384553] = "Stanier LE Cruiser",
        [-129283887] = "Phantom",
        [167522317] = "Terminus",
        [-671564942] = "Tow Truck",
        [-122993285] = "Turismo Omaggio",
        [372621319] = "Vigero ZX Convertible",
        [-38879449] = "Aleutian",
        [-741120335] = "Asterope GZ",
        [-863358884] = "Baller ST-D",
        [-441209695] = "Dominator GT",
        [-768044142] = "Dorado",
        [821121576] = "Drift Euros",
        [-1479935577] = "Drift FR36",
        [-181562642] = "Drift Futo",
        [-1763273939] = "Drift Jester RR",
        [-1624083468] = "Drift Remus",
        [-1696319096] = "Drift Tampa",
        [-1681653521] = "Drift Yosemite",
        [1923534526] = "Drift ZR350",
        [-465825307] = "FR36",
        [-478639183] = "Impaler SZ",
        [-178442374] = "Impaler LX",
        [-902029319] = "Tow Truck"
    }
    print(" Loading of Vehicle Hashes Complete")
end

print(" Current Usage: " .. collectgarbage("count") .. " KB")
print(" Loading Vehicle Hashes Now")
loadVehicleHashes()
print(" Current Usage: " .. collectgarbage("count") .. " KB")
print(" Loading Custom Plates Now")
loadCustomPlates()
print(" Current Usage: " .. collectgarbage("count") .. " KB")
print(" Accesory Functions, Variables and Strings Loaded.")


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
local debugMode = true -- true for initial startup (reset to false after full script is loaded)
local debugMenuLoaded = false
local speedCounter = 0
local xmasPlateCounter = 0
local RGBCounter = 0
local scrollcouter = 0
local driftPlateCounter = 0
local recordingKeystrokes = false -- keystroke recording for typing in custom plates
local recordedKeys = {}
local cursorPosition = 1
local confirmingScrollText = false
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

-- RGB Paint
local RGBSpeeds = {
    extraExtraFast = 0.01,
    extraFast = 0.05,
    fast = 0.10,
    default = 0.15,
    slow = 0.20,
    extraSlow = 0.25
}
local colourChangeSpeed = RGBSpeeds.default
local colourChanging = false
local hue = 0
local originalPaint = {
    primary = { R = nil, G = nil, B = nil },
    secondary = { R = nil, G = nil, B = nil }
}

-- Debug Mode Print Function
local function debugPrint(text)
    if debugMode then
        print(text)
    end
end

-- Menu Text Only Function
local function rip()
    debugPrint(" i am dumb")
    debugPrint(" Memory Usage: " .. collectgarbage("count") .. " KB")
end

-- Drag Race Variables
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
for name, _ in pairs(raceDistances) do
    table.insert(raceDistanceOptions, name)
end

-- Speedometer Variables
speeds = {}
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

local function carCheck()
    if localplayer and localplayer:is_in_vehicle() then
        return true
    else
        return false
    end
end

-- Race Data Management
local raceDataFilename = "race_data.json"
local raceData = {}

function loadRaceData()
    local result, loadedData = pcall(function() return json.loadfile(raceDataFilename) end)

    if result and loadedData then
        raceData = loadedData
        debugPrint(" Race data loaded.")
    else
        debugPrint(" Race data file not found or unreadable. Creating a new one.")
        json.savefile(raceDataFilename, raceData)
    end
end

-- Load existing file or create a new one
function saveRaceData()
    local existingData = json.loadfile(raceDataFilename) or {}
    local newData = raceData

    for key, value in pairs(newData) do
        existingData[key] = existingData[key] or {}
        for _, entry in ipairs(value) do
            table.insert(existingData[key], entry)
        end
    end

    json.savefile(raceDataFilename, existingData)
    debugPrint(" Race data Saved.")
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
            debugPrint(" User settings loaded.")
        else
            debugPrint(" DebugMode not found in loaded settings. Using default settings.")
        end
    else
        debugPrint(" User settings file not found or unreadable. Creating a new one with default options.")
        json.savefile(userSettingsFilename, userSettings)
    end
end

function saveUserSettings()
    json.savefile(userSettingsFilename, userSettings)
    debugPrint(" User settings Saved.")
end

-- Debug Mode Toggle
local function toggleDebugMode()
    if debugMode == true then
        debugMode = false
    else
        debugMode = true
        if not debugMenuLoaded then
            loadDebugMenu()
        end
    end
    userSettings.DebugMode = debugMode
    json.savefile(userSettingsFilename, userSettings)
    debugPrint(" User Setting: Debug Mode saved to " .. tostring(debugMode))
end

function checkBuild()
    -- Build Version Check
    M, m, build, patch = menu.get_game_version()
    thirtySpaces = "                              "
    tenSpaces = "          "
    fiveSpaces = "     "
    outdated = false
    outdatedMessage = tostring("\n" ..
        thirtySpaces .. "       " .. "WARNING  \n \n " ..
        tenSpaces .. "        You are using an outdated menu. \n" ..
        tenSpaces .. "       Permanent Plate Changing Disabled \n" ..
        tenSpaces .. " Please Contact Don Reagan On Discord At ronnie.r.1989")
    if build == 3096 then
        gi = globals.get_int
        g = { pv = { n = 2359980, c = 1586504, s = 2738886, i = 2672804 } }
    else
        outdated = true
    end
end

menu.register_callback("OnScriptsLoaded", function()
    -- Load Data
    scriptFree = true
    checkBuild()
    addPodiumChanger()
    print("  ")
    print(" Build Number is: " .. tostring(build))
    print("  ")
    debugPrint(" Attempting to load User Settings")
    loadUserSettings()
    debugPrint(" Loading of User Settings Complete")
    debugPrint("  ")
    debugPrint(" Attempting to load Race Data")
    loadRaceData()
    debugPrint(" Loading of Race Data Complete")
    debugPrint(" ")
    printFlag()
    debugPrint(" You can turn off debug mode (the print outs)")
    debugPrint(" by going to the settings submenu and toggling off")
    debugPrint(" Debug Mode and confirming it was saved by checking")
    debugPrint(" User Settings JSON in your Modest Menu folder.")
    debugPrint("  ")
    print(" Thank you for trying my latest creation. Please Enjoy.")
    print("                    - Don Reagan")
    if debugMode then
        if not debugMenuLoaded then
            loadDebugMenu()
        end
    end
    if outdated then
        print("  ")
        print("      -WARNING - WARNING - WARNING - WARNING - WARNING - WARNING - WARNING - WARNING - WARNING - WARNING-")
        print("  ")
        print("  Daytons Menu Is OutDated. Please Contact Don Reagan On Discord At ronnie.r.1989 For Details")
        print("  ")
        print("      -WARNING - WARNING - WARNING - WARNING - WARNING - WARNING - WARNING - WARNING - WARNING - WARNING-")
        daytonsMenu:add_action("", function() rip() end)
        daytonsMenu:add_action("- WARNING - WARNING - WARNING -", function() rip() end)
        daytonsMenu:add_action("Do Not Use Unless Told To Do So", function() rip() end)
        daytonsMenu:add_action("Enable Globals (Build - 3095)", function() outdated = false addPodiumChanger() gi = globals.get_int g = { pv = { n = 2359980, c = 1586504, s = 2738886, i = 2672804 } } end)
        error(outdatedMessage, 0)
    end
end
)


-- Podium Vehicle Changer

local vehicleOptions = {}

-- Populate the array with the vehicle names from the vehicleHashes table
for _, name in pairs(vehicleHashes) do
    table.insert(vehicleOptions, name)
end

local selectedVehicleIndex = 1 -- Default to the first vehicle in the list

-- Function to get the vehicle hash based on its name
local function getVehicleHash(vehicleName)
    for hash, name in pairs(vehicleHashes) do
        if name == vehicleName then
            return hash
        end
    end
end

-- Add the menu item for selecting a vehicle
function addPodiumChanger()
    if not outdated then
        podium = menu.add_submenu("Podium Car Changer")
        podium:add_action("------------ Podium Vehicle ----------", function() rip() end)
        podium:add_action("-----------------------------------------", function() rip() end)
        podium:add_action("------------- Select Vehicle -----------", function() rip() end)
        podium:add_array_item("------------- Vehicle -->", vehicleOptions,
            function()
                return selectedVehicleIndex
            end,
            function(index)
                selectedVehicleIndex = index
                local selectedVehicle = vehicleOptions[index]
                local selectedVehicleHash = getVehicleHash(selectedVehicle)
                globals.set_int(289178, selectedVehicleHash)
            end
        )
        podium:add_action(" ", function() rip() end)
        podium:add_action("-WARNING - WARNING -", function() rip() end)
        podium:add_action(" ", function() rip() end)
        podium:add_action("  Black Listed Vehicles!", function() rip() end)
        podium:add_action("            WILL", function() rip() end)
        podium:add_action("  Fuck Your Game Up ", function() rip() end)
    end
end

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
    turningRadius = 45, -- half of a right angle (for good angle control)
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
    turningRadius = 45 -- half of a right angle (for good angle control)
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
    if carCheck() then
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
    if carCheck() then
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
        if carCheck() then
            local player = localplayer
            local veh = player:get_current_vehicle()
            if oldStats.acceleration == nil then
                saveStats()
            else
                debugPrint(" Unable to save veh stats, stats are already present in table")
            end
            veh:set_acceleration(spoodBeastStats.acceleration)
            veh:set_traction_curve_max(spoodBeastStats.tractionMax)
            veh:set_traction_curve_min(spoodBeastStats.tractionMin)
            veh:set_traction_curve_lateral(spoodBeastStats.tractionLateral)
            veh:set_traction_loss_multiplier(spoodBeastStats.tractionLoss)
            veh:set_up_shift(spoodBeastStats.upShift)
            veh:set_down_shift(spoodBeastStats.downShift)
            veh:set_drive_bias_front(spoodBeastStats.driveBiasFront)
            veh:set_steering_lock(spoodBeastStats.turningRadius)
            tuningMode.spoodBeastMode = true
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
        if carCheck() then
            local player = localplayer
            local veh = player:get_current_vehicle()
            if oldStats.acceleration == nil then
                saveStats()
            else
                debugPrint(" Unable to save veh stats, stats are already present in table")
            end
            veh:set_acceleration(slowDriftStats.acceleration)
            veh:set_traction_curve_max(slowDriftStats.tractionMax)
            veh:set_traction_curve_min(slowDriftStats.tractionMin)
            veh:set_traction_curve_lateral(slowDriftStats.tractionLateral)
            veh:set_traction_loss_multiplier(slowDriftStats.tractionLoss)
            veh:set_up_shift(slowDriftStats.upShift)
            veh:set_down_shift(slowDriftStats.downShift)
            veh:set_drive_bias_front(slowDriftStats.driveBiasFront)
            veh:set_steering_lock(slowDriftStats.turningRadius)
            tuningMode.slowDriftMode = true
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
        if carCheck() then
            local player = localplayer
            local veh = player:get_current_vehicle()
            if oldStats.acceleration == nil then
                saveStats()
            else
                debugPrint(" Unable to save veh stats, stats are already present in table")
            end
            veh:set_acceleration(fastDriftStats.acceleration)
            veh:set_traction_curve_max(fastDriftStats.tractionMax)
            veh:set_traction_curve_min(fastDriftStats.tractionMin)
            veh:set_traction_curve_lateral(fastDriftStats.tractionLateral)
            veh:set_traction_loss_multiplier(fastDriftStats.tractionLoss)
            veh:set_up_shift(fastDriftStats.upShift)
            veh:set_down_shift(fastDriftStats.downShift)
            veh:set_drive_bias_front(fastDriftStats.driveBiasFront)
            veh:set_steering_lock(fastDriftStats.turningRadius)
            tuningMode.fastDriftMode = true
        end
    end
end

menu.register_callback("OnVehicleChanged", function()
    if carCheck() then
        local currentveh = localplayer:get_current_vehicle()
        if currentveh ~= savedPlateVehicle or savedPlateVehicle == nil then
            savedPlateVehicle = currentveh
            savedPlateText = currentveh:get_number_plate_text()
            debugPrint(" New Vehicle Detected, Attempting to resume script functions...")
        else
            debugPrint(" vehicle change messed up, re-routing script")
            return
        end
        if tuningMode.fastDriftMode then
            tuningMode.fastDriftMode = false
            debugPrint(" Fast Drift resuming")
            fastDrift()
        end
        if tuningMode.slowDriftMode then
            tuningMode.slowDriftMode = false
            debugPrint(" Slow Drift resuming")
            slowDrift()
        end
        if tuningMode.spoodBeastMode then
            tuningMode.spoodBeastMode = false
            debugPrint(" Spood Beast resuming")
            spoodBeast()
        end
        if infiniteScroll then
            infiniteScroll = false
            debugPrint(" Scrolling Text resuming")
            ScrollText(scrollTextSavedMessage, scrollTextSavedSpeed)
        end
        if colourChanging then
            colourChanging = false
            debugPrint(" RGB Loop resuming")
            toggleRGBLoop()
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------- User Input Function -------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- Mapping table for Java keycodes
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
    -- Register alphanumeric keys (A-Z and 0-9)
    for keycode = 65, 90 do
        menu.register_hotkey(keycode, function() onKeyPress(keycode) end)
    end

    for keycode = 48, 57 do
        menu.register_hotkey(keycode, function() onKeyPress(keycode) end)
    end

    -- Register special keys
    menu.register_hotkey(27, function() onESC() end)           -- Escape key
    menu.register_hotkey(8, function() onBackspace() end)      -- Backspace
    menu.register_hotkey(32, function() onSpace() end)         -- Space
    menu.register_hotkey(13, function() onFinishTyping() end)  -- Enter/Return
    menu.register_hotkey(37, function() moveCursorLeft() end)  -- Left arrow key
    menu.register_hotkey(39, function() moveCursorRight() end) -- Right arrow key
    menu.register_hotkey(46, function() onDel() end)           -- Delete key (right of cursor)
end

-- Function to start recording
function startRecording()
    infiniteScroll = false
    debugMode = true
    registerHotkeys()
    recordingKeystrokes = true
    recordedKeys = {}  -- Reset recorded keys
    cursorPosition = 1 -- Reset cursor position
    debugPrint("  ")
    debugPrint(" Recording started...")
    debugPrint(" Current input: " .. table.concat(recordedKeys, ""))
end

-- Function to stop recording
function stopRecording()
    recordingKeystrokes = false
    debugPrint("  ")
    debugPrint(" Recording stopped.")
    debugPrint(" Recorded input: " .. table.concat(recordedKeys, ""))
    promptForConfirmation()
end

-- Function to handle key press
function onKeyPress(keycode)
    if recordingKeystrokes then
        -- Insert the character at the cursor position
        table.insert(recordedKeys, cursorPosition, javaKeycodeMapping[keycode] or tostring(keycode))
        newPlateText = table.concat(recordedKeys, "")
        -- Update cursor position
        cursorPosition = cursorPosition + 1

        -- Debug messages
        debugPrint("  ")
        debugPrint(" Key pressed: " .. (javaKeycodeMapping[keycode] or tostring(keycode)))
        debugPrint(" Current input: " .. table.concat(recordedKeys, ""))
        debugPrint(" Cursor position: " .. cursorPosition)

        -- Check for plate length limit
        if not allowMoreThan8Characters and #recordedKeys == 8 then
            debugPrint(" Plate length reached")
            debugPrint("  ")
            debugPrint(" Turn on the option for scrolling text")
            debugPrint(" if you want to use text over 8 characters")
            debugPrint(" (buggy and semi permanent(make sure to turn off the infinite loop when done))")
            stopRecording()
        end
    end
end

-- Function to handle left arrow key -- have to fix this
function moveCursorLeft()
    if recordingKeystrokes and cursorPosition > 0 then
        cursorPosition = cursorPosition - 1
        debugPrint("  ")
        debugPrint(" Cursor moved left. Current cursor position: " .. cursorPosition)
        debugPrint(" Current input: " .. table.concat(recordedKeys, ""))
        debugPrint(" Cursor position: " .. cursorPosition) -- Print the cursor position
    end
end

-- Function to handle right arrow key
function moveCursorRight()
    if recordingKeystrokes and cursorPosition < #recordedKeys + 1 then
        cursorPosition = cursorPosition + 1
        debugPrint("  ")
        debugPrint(" Cursor moved right. Current cursor position: " .. cursorPosition)
        debugPrint(" Current input: " .. table.concat(recordedKeys, ""))
        debugPrint(" Cursor position: " .. cursorPosition) -- Print the cursor position
    end
end

-- Function to handle backspace key
function onBackspace()
    if recordingKeystrokes then
        if cursorPosition > 1 then
            cursorPosition = cursorPosition - 1
            table.remove(recordedKeys, cursorPosition)
            newPlateText = table.concat(recordedKeys, "")
        end
        debugPrint("  ")
        debugPrint(" Key pressed: Backspace")
        debugPrint(" Current input: " .. table.concat(recordedKeys, ""))
        debugPrint(" Cursor position: " .. cursorPosition) -- Print the cursor position
    end
end

-- Function to handle delete key
function onDel()
    if recordingKeystrokes then
        if cursorPosition < #recordedKeys then
            table.remove(recordedKeys, cursorPosition + 1)
            newPlateText = table.concat(recordedKeys, "")
            debugPrint("  ")
            debugPrint(" Key pressed: Delete")
            debugPrint(" Current input: " .. table.concat(recordedKeys, ""))
            debugPrint(" Cursor position: " .. cursorPosition) -- Print the cursor position
        end
    end
end

-- Function to handle space key
function onSpace()
    if recordingKeystrokes then
        if #recordedKeys < 8 or allowMoreThan8Characters then
            table.insert(recordedKeys, cursorPosition, ' ')
            newPlateText = table.concat(recordedKeys, "")
            cursorPosition = cursorPosition + 1
            debugPrint("  ")
            debugPrint(" Key pressed: Spacebar")
            debugPrint(" Current input: " .. table.concat(recordedKeys, ""))
            debugPrint(" Cursor position: " .. cursorPosition) -- Print the cursor position
            if not allowMoreThan8Characters and #recordedKeys == 8 then
                stopRecording()
            end
        end
    end
end

-- Function to handle ESC/Escape key
function onESC()
    if recordingKeystrokes then
        debugPrint("  ")
        debugPrint(" Key Pressed: Escape")
        cancelRecording()
    end
end

function cancelRecording()
    if recordingKeystrokes then
        recordingKeystrokes = false
        recordedKeys = {}
        cursorPosition = 1
        debugPrint("  ")
        debugPrint(" Recording of keystrokes has been cancelled abruptly. please toggle recording to begin again")
        debugPrint("  ")
        if userSettings.DebugMode == false then
            debugMode = false
        end
    end
end

-- Function to handle Enter/Return key
function onFinishTyping()
    if recordingKeystrokes then
        debugPrint("  ")
        debugPrint(" Key pressed: Enter")
        debugPrint(" Prompting Confirmation next...")
        stopRecording()
    end
end

function toggleKeystrokeRecording()
    if recordingKeystrokes then
        recordingKeystrokes = false
        stopRecording()
        debugPrint(" Keystroke Recording Concluded")
    else
        recordingKeystrokes = true
        debugPrint(" Keystroke Recording Started")
    end
end

-- Function to confirm inputted text and check if its over 8 characters
function promptForConfirmation()
    debugPrint("  ")
    debugPrint(" Are you sure you want to set your plate to: ")
    debugPrint(newPlateText)
    debugPrint("  ")
    debugPrint(" Please Confirm (HOLD): Y = Yes, N = No")

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
            debugPrint("  ")
            debugPrint(" Key pressed: Y")
            debugPrint("  ")
            debugPrint(" Confirming number of characters is 8 or less.")
            debugPrint("  ")
            debugPrint(" New plate showing up as: " .. newPlateText)
            if #recordedKeys <= 8 then
                debugPrint(" New plate confirmed to be 8 characters or less.")
                savedPlateText = newPlateText
                savedPlateVehicle = localplayer:get_current_vehicle()
                confirmingText = false
                debugPrint(" Setting Plate to: " .. savedPlateText)
                setPlate(savedPlateText)
                recordedKeys = {}
                cursorPosition = 1

                if userSettings.DebugMode == false then
                    debugMode = false
                end
            else
                confirmingText = false
                confirmScrollText()
                break
            end
        elseif keypressN then
            debugPrint("  ")
            debugPrint(" Key pressed: N")
            debugPrint(" Text Confirmation Cancelled..")
            newPlateText = nil
            recordedKeys = {}
            confirmingText = false
            debugPrint(" Resetting Process now.")
            debugPrint("  ")
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
    debugPrint("  ")
    debugPrint(" Plate length exceeded! Are you sure you want to scroll text?")
    debugPrint(" you will need to make sure to disable scrolling before exiting the vehicle")
    debugPrint(" to revert the plate to the last valid plate recorded by the script(8 characters or less)")
    debugPrint("  ")
    debugPrint(" Please Confirm (HOLD): Y = Yes, N = No")
    confirmingScrollText = true
    repeat
        if keypressY2 then
            if savedPlateText == nil then
                savedPlateText = localplayer:get_current_vehicle():get_number_plate_text()
                savedPlateVehicle = localplayer:get_current_vehicle()
            end
            confirmingScrollText = false
            debugPrint(" New plate text is confirmed to be over 8 characters")
            debugPrint(" scrolling the text accross the plate instead")
            debugPrint("  ")
            if userSettings.DebugMode == false then
                debugMode = false
            end
            ScrollText(newPlateText, 1)
            recordedKeys = {}
            cursorPosition = 1
            break
        elseif keypressN2 then
            debugPrint("  ")
            debugPrint(" Key pressed: N")
            debugPrint(" Text Confirmation FAILED..")
            newPlateText = nil
            debugPrint(" Resetting Process now.")
            debugPrint(" Resetting Process now..")
            debugPrint(" Resetting Process now...")
            recordedKeys = {}
            debugPrint(" Resetting Process now.")
            debugPrint(" Resetting Process now..")
            debugPrint(" Resetting Process now...")
            confirmingScrollText = false
            debugPrint(" Resetting Process now.")
            debugPrint(" Resetting Process now..")
            debugPrint(" Resetting Process now...")
            menu.remove_hotkey(89)
            menu.remove_hotkey(78)
            debugPrint("  ")
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
    local speedStr = string.format(" %3s", displayedSpeed > 0 and tostring(displayedSpeed) or "")
    if speedmode.current == speedmode.mph then
        local plateText = speedStr .. "  MPH"
        setPlate(plateText)
    else
        local plateText = speedStr .. "  KPH"
        setPlate(plateText)
    end
end

-- Function to toggle the Speedometer Mode
function toggleSpeedmode()
    if speedmode.current == speedmode.kph then
        speedmode.current = speedmode.mph
        userSettings.selectedSpeedMode = "mph"
        debugPrint(" User Settings Saved with MPH being selected")
    else
        speedmode.current = speedmode.kph
        userSettings.selectedSpeedMode = "kph"
        debugPrint(" User Settings Saved with KPH being selected")
    end
    json.savefile(userSettingsFilename, userSettings)
end

-- Function to toggle the Speedometer
function speedoToggle()
    if speedoRunning then
        debugPrint(" Speedo Stopping!")
        speedoRunning = false
        checkPlate()
    else
        debugPrint(" Speedo Starting!")
        runSpeedometer()
    end
end

-- Speedo loop
function runSpeedometer()
    if carCheck() then
        local player = localplayer
        local vehicle = player:get_current_vehicle()
        if savedPlateText == nil then
            savedPlateText = vehicle:get_number_plate_text()
            savedPlateVehicle = vehicle
        end
        speedoRunning = true
        speedCounter = 0
        while speedoRunning == true do
            if carCheck() then
                if speedoRunning == false then
                    setPlate(savedPlateText)
                    break
                end
                displaySpeed()
                speedCounter = speedCounter + 1
                if speedCounter > 1000 then
                    debugPrint(" ")
                    debugPrint(" Garbage Cleanup Started")
                    debugPrint(" ")
                    debugPrint(" Memory Usage: " .. collectgarbage("count") .. " KB")
                    debugPrint(" Garbage Cleaning in Progress.")
                    collectgarbage("collect")
                    speedCounter = 0
                    debugPrint(" Garbage Cleanup finished")
                    debugPrint(" Memory Usage: " .. collectgarbage("count") .. " KB")
                end
                sleep(0.0167) -- arbitrary number for 60 fps (test)
            end
        end
    end
end

------------------------------------------------Bennys and F1----------------------------------------------------------

-- Benny's Mode and F1 Mode
function bennysModeToggle()
    if bennysMode == false then
        if carCheck() and savedHash == 0 then
            local p = localplayer
            local v = p:get_current_vehicle()
            savedHash = v:get_model_hash()
            v:set_model_hash(1896491931) -- silent uses 196747873
        end
    else
        if carCheck() and savedHash ~= 0 then
            local p = localplayer
            local v = p:get_current_vehicle()
            v:set_model_hash(savedHash)
            savedHash = 0
        end
    end
end

function f1ModeToggle()
    if f1Mode == false then
        if carCheck() then
            local p = localplayer
            local v = p:get_current_vehicle()
            savedHash = v:get_model_hash()
            v:set_model_hash(-1960756985) -- silent uses 1492612435
        end
    else
        if carCheck() and savedHash ~= 0 then
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
    return stats.get_int(" MP" .. stats.get_int(" MPPLY_LAST_MP_CHAR") .. "_TIME_IN_CAR")
end

-- Formats milliseconds into regular time (s.ms)
function formatTime(milliseconds)
    if type(milliseconds) == "number" then
        local seconds = math.floor(milliseconds / 1000)
        local remainingMilliseconds = milliseconds % 1000
        return string.format(" %d.%03d", seconds, remainingMilliseconds)
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

-- Print the current vehicle hash
function printHash()
    if carCheck() then
        local p = localplayer
        local v = p:get_current_vehicle()
        local hash = v:get_model_hash()
        debugPrint(" Vehicle hash is: " .. tostring(hash))
        debugPrint(" Please add it if its missing from the json.")
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
function removeVehicles()
    while raceRunning do
        local playerPos = localplayer:get_position()
        local playerVehicle = localplayer:get_current_vehicle()

        for veh in replayinterface.get_vehicles() do
            if veh ~= playerVehicle then
                local vehiclePosition = veh:get_position()
                local distanceToMainPlayer = calculateDistance(vehiclePosition, playerPos)
                if raceFinished then
                    break
                end
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
                if raceFinished then
                    break
                end
                cumulativeCount = cumulativeCount + 1
                if cumulativeCount >= 1000 then
                    debugPrint(" Garbage Collection Started")
                    debugPrint(" ")
                    debugPrint(" Current Usage: " .. collectgarbage() .. " KB")
                    collectgarbage("collect")
                    debugPrint(" Garbage Collection Finished")
                    cumulativeCount = 0
                end
                if distanceToMainPlayer <= Config.OuterRadius and distanceToMainPlayer > Config.Safety and not closeToAnyPlayer then
                    veh:set_position(vector3(0, 0, Config.OuterRadius) + vehiclePosition)
                    vehiclesMoved = vehiclesMoved + 1
                    debugPrint(" vehicles moved so far: " .. vehiclesMoved)
                end
            end
        end
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------- Main Race Function --------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- Main Drag Race Function
function DoDragRace()
    if scriptFree then
        if carCheck() then
            checkPlate()
            --menu.emit_event(" raceBeginning")
            local player = localplayer
            local vehicle = player:get_current_vehicle()
            removeVehicles() -- Remove vehicles around the starting line (continues until raceRunning = false)
            raceRunning = true
            raceFinished = false
            startPosition = getCurrentPosition()
            reactionTime = 0
            lastPosition = nil
            sixtyFootTime = 0
            sixtyFootSpeed = 0
            totalDistanceTraveled = 0
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
                debugPrint(" Race Aborted: Jumped The Start")
                sleep(1.25)
                checkPlate()
            else
                raceData = {} -- Clear raceData for the current race to be saved
                setPlate("---GO---")
                Timer.start() -- Start the custom timer
                while not raceFinished do
                    if reactionTime == 0 and getCurrentPosition() ~= startPosition then
                        reactionTime = formatTime(Timer.elapsedTime())
                    end
                    if sixtyFootTime == 0 and calculateDistance(startPosition, getCurrentPosition()) >= sixtyFeet then
                        sixtyFootTime = formatTime(Timer.elapsedTime()) -- Save the 60 foot time
                        sixtyFootSpeed = getCurrentSpeed(vehicle)
                    end
                    if hasReachedFinishLine() then
                        --menu.emit_event(" raceEnded") -- TO BE USED FOR MULTI THREADING
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
                        debugPrint(" Race Data Saved for " .. vehicleName)
                        debugPrint(" Race Distance: " .. selectedDistance)
                        debugPrint(" Reaction Time: " .. reactionTime)
                        debugPrint(" 60 Foot Time: " .. sixtyFootTime)
                        debugPrint(" Race finished! Time: " .. formatTime(finalTime))
                        debugPrint(" 60 Foot SpeedTrap: " .. sixtyFootSpeed .. " " .. selectedMode)
                        debugPrint(" Final Speed: " .. finalSpeed * speedmode.current .. " " .. selectedMode)

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
            debugPrint(" Not in a vehicle! You cant race barefoot!!")
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
    debugPrint(" Race Aborted")
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
    debugPrint(" checking plate now. please wait.")
    stopEverything()
    if carCheck() then
        debugPrint(" checking plate now. please wait..")
        debugPrint(" checking plate now. please wait...")
        debugPrint("  ")
        debugPrint(" Checking plate for need of reversion")
        if savedPlateText == nil then
            debugPrint("  ")
            debugPrint(" Saved plate text is currently nil (start of plate check)")
            setPlate(defaultPlate)
        else
            local player = localplayer
            local veh = player:get_current_vehicle()
            local currentPlate = veh:get_number_plate_text()
            if savedPlateText ~= currentPlate then
                debugPrint("  ")
                debugPrint(" the plate is showing up as: " ..
                    tostring(currentPlate) .. " and the saved plate is showing up as: " .. tostring(savedPlateText))
                if savedPlateText == "cruising" or savedPlateText == "chilling" or savedPlateText == " MPH" or savedPlateText == " KPH" or savedPlateText == "0" then
                    setPlate(defaultPlate)
                else
                    setPlate(savedPlateText)
                end
            else
                debugPrint("  ")
                debugPrint(" Plate confirmed to match saved plate text.")
                debugPrint("  ")
            end
        end
    end
    scriptFree = true
end

function setPlate(xx) -- Permanent Plate Changer (affects personal vehicles)
    if xx then
        c = localplayer
        if localplayer:is_in_vehicle() then
            local veh = localplayer:get_current_vehicle()
            if outdated == false then
                if gi(g.pv.s) ~= -1 and gi(g.pv.i) == 0 then
                    local x = gi(g.pv.n)
                    globals.set_string(g.pv.c + 2 + (x == -1 and 0 or x) * 142, xx, 32)
                end
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
        xmasPlateCounter = 0
        while XMASPLATE == true do
            xmasPlateCounter = xmasPlateCounter + 1
            if xmasPlateCounter > 1000 then
                debugPrint(" ")
                debugPrint(" Garbage Collection Started")
                debugPrint(" ")
                debugPrint(" Memory Usage: " .. collectgarbage("count") .. " KB")
                collectgarbage("collect")
                xmasPlateCounter = 0
                debugPrint(" Memory cleanup finished")
                debugPrint(" Memory Usage: " .. collectgarbage("count") .. " KB")
            end
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
    if carCheck() then
        debugPrint(" scroll text function called, checking plate before continuation")
        checkPlate()
        if not message or type(message) ~= 'string' then
            debugPrint(" Invalid message")
            return
        elseif not speed or type(speed) ~= 'number' or speed < 0 then
            debugPrint(" Invalid or negative speed")
            speed = 1
        end
        scrollTextSavedMessage = message
        scrollTextSavedSpeed = speed

        local calculatedSpeed = speed * 0.25 -- Change the speed to a delay
        -- Ensure localplayer and setPlate functions are defined
        if localplayer:is_in_vehicle() == false then
            debugPrint(" Error: No vehicle detected")
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
                    scrollCounter = scrollcouter + 1
                    if scrollCounter > 1000 then
                        debugPrint(" ")
                        debugPrint(" Garbage Collection Starting")
                        debugPrint(" Current Usage :" .. collectgarbage("count") .. " KB")
                        debugPrint(" ")
                        collectgarbage("collect")
                        debugPrint(" Garbage Collection Finished")
                        debugPrint(" Memory Usage: " .. collectgarbage("count") .. " KB")
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
                debugPrint(" No saved Plate Data, Setting plate to the default")
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
-- ScrollText(" HELLO WORLD", 0.5) -- FUNCTION("MESSAGE", TIME)

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
---------------------------------------------------------------- Colour Changing Functions ----------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------

function RGBSpeedChange()
    if colourChangeSpeed == RGBSpeeds.extraSlow then
        colourChangeSpeed = RGBSpeeds.slow
    elseif colourChangeSpeed == RGBSpeeds.slow then
        colourChangeSpeed = RGBSpeeds.default
    elseif colourChangeSpeed == RGBSpeeds.default then
        colourChangeSpeed = RGBSpeeds.fast
    elseif colourChangeSpeed == RGBSpeeds.fast then
        colourChangeSpeed = RGBSpeeds.extraFast
    elseif colourChangeSpeed == RGBSpeeds.extraFast then
        colourChangeSpeed = RGBSpeeds.extraExtraFast
    elseif colourChangeSpeed == RGBSpeeds.extraExtraFast then
        colourChangeSpeed = RGBSpeeds.extraSlow
    end
end

local function isValidColor(color)
    for _, component in pairs(color) do
        if component == nil then
            return false
        end
    end
    return true
end

function toggleRGBLoop()
    if carCheck() then
        local vehicle = localplayer:get_current_vehicle()
        if colourChanging then
            colourChanging = false
            restorePaint(vehicle)
        else
            -- Retrieve current primary and secondary colors
            originalPaint.primary.R, originalPaint.primary.G, originalPaint.primary.B = vehicle
                :get_custom_primary_colour()
            originalPaint.secondary.R, originalPaint.secondary.G, originalPaint.secondary.B = vehicle
                :get_custom_secondary_colour()
            debugPrint(" Original Primary: " ..
                "Red: " ..
                originalPaint.primary.R ..
                ". Green: " .. originalPaint.primary.G .. ". Blue: " .. originalPaint.primary.B)
            debugPrint(" Original Secondary: " ..
                "Red: " ..
                originalPaint.secondary.R ..
                ". Green: " .. originalPaint.secondary.G .. ". Blue: " .. originalPaint.secondary.B)
            colourChangeLoop(vehicle)
        end
    end
end

function restorePaint(vehicle)
    if carCheck() then
        if isValidColor(originalPaint.primary) and isValidColor(originalPaint.secondary) then
            vehicle:set_custom_primary_colour(originalPaint.primary.R, originalPaint.primary.G, originalPaint.primary.B)
            vehicle:set_custom_secondary_colour(originalPaint.secondary.R, originalPaint.secondary.G,
                originalPaint.secondary.B)
            debugPrint(" Colour has been reverted")
        else
            debugPrint(" Error: Original colors are nil")
        end
    end
end

function colourChangeLoop(vehicle)
    colourChanging = true
    while colourChanging do
        -- Calculate RGB values based on current hue
        local r, g, b = hsv_to_rgb(hue, 1, 1)

        -- Convert RGB values to integers
        r, g, b = math.floor(r + 0.5), math.floor(g + 0.5), math.floor(b + 0.5)

        -- Apply calculated RGB values to vehicle
        vehicle:set_custom_primary_colour(r, g, b)
        vehicle:set_custom_secondary_colour(r, g, b)

        -- Increment hue for next iteration
        hue = (hue + 1) % 360

        RGBCounter = RGBCounter + 1
        if RGBCounter > 1000 then
            debugPrint(" ")
            debugPrint(" Garbage Collection Starting")
            debugPrint(" Current Usage: " .. collectgarbage("count") .. " KB")
            debugPrint(" ")
            collectgarbage("collect")
            debugPrint(" Garbage Collection Finished")
            debugPrint(" Memory Usage: " .. collectgarbage("count") .. " KB")
        end
        sleep(colourChangeSpeed)

        -- Check if the color change should be stopped
        if not colourChanging then
            return -- Exit the function if colourChanging is false
        end
    end
end

-- Helper function to convert HSV to RGB
function hsv_to_rgb(h, s, v)
    local c = v * s
    local x = c * (1 - math.abs((h / 60) % 2 - 1))
    local m = v - c
    local r, g, b = 0, 0, 0

    if h < 60 then
        r, g, b = c, x, 0
    elseif h < 120 then
        r, g, b = x, c, 0
    elseif h < 180 then
        r, g, b = 0, c, x
    elseif h < 240 then
        r, g, b = 0, x, c
    elseif h < 300 then
        r, g, b = x, 0, c
    else
        r, g, b = c, 0, x
    end

    return r * 255, g * 255, b * 255
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------ Drift Plate Function -------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
local driftAngles = {}
local maxDriftAngleHistory = 5 -- The number of angles to keep in history for averaging
local updateDelay = 0.25       -- delay between refresh
local driftPoints = 0
local comboStreak = 0
local angleMultiplier = 1.5          -- Adjust as needed
local speedBonusThreshold = 30 * 3.5 -- Adjust as needed
local transitionAngleThreshold = 45  -- Adjust as needed, in degrees
local transitionPoints = 50          -- Adjust as needed

function setUpdateDelay(value)
    updateDelay = value / 1000 -- Convert milliseconds to seconds
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
        debugPrint(" drift plate active, de-activating it now...")
        driftPlate = false
        checkPlate()
    else
        debugPrint(" drift plate is in-active, activating now...")
        driftPlate = true
        startDriftPlate()
    end
end

function startDriftPlate()
    debugPrint(" saving current plate for reversal")
    local v = localplayer:get_current_vehicle()
    savedPlateText = v:get_number_plate_text()
    savedPlateVehicle = v
    debugPrint(" drift plate starting...")

    local prevDriftAngle = 0 -- To track the previous drift angle for transition detection

    while driftPlate do
        if carCheck() then
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
            debugPrint(" Move and resize the window so you dont see this text (controller player only)")
            debugPrint("  ") -- simulate a constantly changing display
            debugPrint("  ")
            debugPrint("  ")
            debugPrint(" Current Drift Points: " .. driftPoints)
            debugPrint(" Angle Points: " .. anglePoints)
            debugPrint(" Speed Points: " .. speedPoints)
            debugPrint(" Transition Bonus: " .. transitionBonus)
            debugPrint(" Combo Streak: " .. comboStreak)
            debugPrint(" Transition: " .. (isTransition and "Yes" or "No"))
            debugPrint(" Total Points: " .. totalPoints)

            -- Print the angle to the plate
            local angleStr = string.format(" %3.0f°", driftAngle)
            setPlate(angleStr)

            driftPlateCounter = driftPlateCounter + 1
            if driftPlateCounter > 1000 then
                debugPrint(" Garbage Collection Started")
                debugPrint(" ")
                debugPrint(" Current Usage: " .. collectgarbage("count") .. " KB")
                debugPrint(" Garbage Collection in Progress")
                collectgarbage("collect")
                debugPrint(" Current Usage: " .. collectgarbage("count") .. " KB")
                debugPrint(" Garbage Collection Finished")
            end

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


if outdated then
    daytonsMenu:add_action(tenSpaces .. "WARNING", function() print(outdatedMessage) end)
    daytonsMenu:add_action(fiveSpaces .. "SCRIPT OUTDATED", function() print(outdatedMessage) end)
    daytonsMenu:add_action("PERMANENT CHANGING DISABLED", function() print(outdatedMessage) end)
end

-- SubMenus
local daytonsDriftPlate = daytonsMenu:add_submenu("Drift Plate")
local daytonsSpeedoMenu = daytonsMenu:add_submenu("Speedometer")
local daytonsDragMenu = daytonsMenu:add_submenu("Drag Section")
local daytonsTuning = daytonsMenu:add_submenu("1 click Tuning")
local daytonsCustomPlates = daytonsMenu:add_submenu("Custom Plates")
local daytonsRims = daytonsMenu:add_submenu("Tire Mods (Use in CEO Office)")
local textcolormenu = daytonsMenu:add_submenu("Plate Text Colors")
local paintMenu = daytonsMenu:add_submenu("RGB Paint")

-- Static Plate SubMenus
local PermanentPlateChangeMenu = daytonsCustomPlates:add_submenu("Pre-Made Custom Plates")
local KeefsPlateInputMenu = daytonsCustomPlates:add_submenu("User Input Plate Changer(user typed)")
local userPlateMenu = PermanentPlateChangeMenu:add_submenu("Random User Plates")
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


-- User Input Menu
local userInputMenu = KeefsPlateInputMenu:add_submenu("Keyboard Input (experimental)", function()
    debugMode = true
    debugPrint(" Stopping Everything Before Recording Keystrokes")
    stopEverything()
    debugPrint("  ")
    debugPrint(" Welcome to Don Reagan's Experimental User Input Method")
    debugPrint(" Please give an honest review and report any bugs you find.")
    debugPrint("  ")
    startRecording()
end)

-- User Settings Menu
local userSettingsMenu = daytonsMenu:add_submenu("Settings")


daytonsDriftPlate:add_int_range("Update Delay (ms)", 20, 20, 1000, function()
    return updateDelay * 1000 -- Convert seconds back to milliseconds for display
end, function(value)
    setUpdateDelay(value)
    debugPrint(" update set to " .. value)
end)
daytonsDriftPlate:add_toggle("Drift Plate Toggle", function() return driftPlate end,
    function()
        debugPrint(" drift plate pressed")
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
            debugPrint(" saving the plate")
            local p = localplayer
            local v = p:get_current_vehicle()
            savedPlateText = v:get_number_plate_text()
            savedPlateVehicle = v
        end
        checkPlate()
        setPlate(selectedDistance)
        debugPrint(" selected distance: " .. selectedDistance)
    end)
daytonsDragMenu:add_action("Start Drag Race",
    function()
        local distanceName = raceDistanceOptions[selectedDistanceIndex]
        local distance = raceDistances[distanceName]
        local vehicle = localplayer:get_current_vehicle()
        if vehicle then
            raceDistance = distance
            checkPlate()
            debugPrint(" starting the DoDragRace function now")
            DoDragRace()
        else
            rip()
        end
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
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE TOO FAST", function() ScrollText(" EAT SHIT AND DIE", 0.75) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE FAST", function() ScrollText(" EAT SHIT AND DIE", 1) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE NORMAL", function() ScrollText(" EAT SHIT AND DIE", 2) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE SLOW", function() ScrollText(" EAT SHIT AND DIE", 3) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE TOO SLOW", function() ScrollText(" EAT SHIT AND DIE", 4) end)
--Dayton's Dynamic Plates
DaytonsScrollMenu:add_action("Move bitch, get out the way hoe",
    function() ScrollText(" move bitch  get out the way hoe", 1) end)
DaytonsScrollMenu:add_action("Swearing", function() ScrollText(" Fuck DICK SHIT BITCH CUNT PUSSY ass COCKSUCKER ", 1) end)
DaytonsScrollMenu:add_action("FASTER THAN YOU", function() ScrollText(" IM FASTER THAN YOU", 1) end)
DaytonsScrollMenu:add_action("BOATS N HOES", function() ScrollText(" BOATS N HOES", 2) end)
DaytonsScrollMenu:add_action("SKRT", function() ScrollText(" SKKRRRRRRRRRT", 2) end)
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
KeefsPlateInputMenu:add_action("to allow more than 8 characters", rip)
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
userInputMenu:add_toggle("Toggle Keystroke Recording", function() return recordingKeystrokes end,
    function() toggleKeystrokeRecording() end)
-- Add toggle for allowing more than 8 characters
userInputMenu:add_toggle("Allow More Than 8 Characters", function() return allowMoreThan8Characters end,
    function()
        allowMoreThan8Characters = not allowMoreThan8Characters
        debugPrint(" Allowing more than 8 characters: " .. tostring(allowMoreThan8Characters))
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
        if carCheck() then
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
        if carCheck() then
            stopEverything()
            setPlate(customPlates["starWarsCharacterPlates"][value])
            savedPlateText = customPlates["starWarsCharacterPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
starWarsMenu:add_array_item("Ships", customPlates["starWarsShipPlates"], function() end,
    function(value)
        if carCheck() then
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
        if carCheck() then
            stopEverything()
            setPlate(customPlates["gtaViceCityPlates"][value])
            savedPlateText = customPlates["gtaViceCityPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
gtaMenu:add_array_item("San Andreas", customPlates["gtaSanAndreasPlates"], function() end,
    function(value)
        if carCheck() then
            stopEverything()
            setPlate(customPlates["gtaSanAndreasPlates"][value])
            savedPlateText = customPlates["gtaSanAndreasPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
gtaMenu:add_array_item("IV", customPlates["gtaIVPlates"], function() end,
    function(value)
        if carCheck() then
            stopEverything()
            setPlate(customPlates["gtaIVPlates"][value])
            savedPlateText = customPlates["gtaIVPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
gtaMenu:add_array_item("V", customPlates["gtaVPlates"], function() end,
    function(value)
        if carCheck() then
            stopEverything()
            setPlate(customPlates["gtaVPlates"][value])
            savedPlateText = customPlates["gtaVPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
gtaMenu:add_array_item("VI", customPlates["gta6CharactersLocationsPlates"], function() end,
    function(value)
        if carCheck() then
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
        if carCheck() then
            stopEverything()
            setPlate(customPlates["offRoadPlates"][value])
            savedPlateText = customPlates["offRoadPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
racersGearheadsMenu:add_array_item("Supercars", customPlates["supercarPlates"], function() end,
    function(value)
        if carCheck() then
            stopEverything()
            setPlate(customPlates["supercarPlates"][value])
            savedPlateText = customPlates["supercarPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
racersGearheadsMenu:add_array_item("Street Tuners", customPlates["streetTunerPlates"], function() end,
    function(value)
        if carCheck() then
            stopEverything()
            setPlate(customPlates["streetTunerPlates"][value])
            savedPlateText = customPlates["streetTunerPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
racersGearheadsMenu:add_array_item("Muscle Cars", customPlates["muscleCarPlates"], function() end,
    function(value)
        if carCheck() then
            stopEverything()
            setPlate(customPlates["muscleCarPlates"][value])
            savedPlateText = customPlates["muscleCarPlates"][value]
            savedPlateVehicle = localplayer:get_current_vehicle()
            checkPlate()
        end
    end)
racersGearheadsMenu:add_array_item("Vintage Classics", customPlates["vintageClassicPlates"], function() end,
    function(value)
        if carCheck() then
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
        if carCheck() then
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
        if carCheck() then
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
    function() toggleSpeedmode() end
)

-------------------------------------------------------------------------------
--------------------------------   RGB PAINT   --------------------------------
-------------------------------------------------------------------------------


paintMenu:add_action("Work In Progress!!", function() rip() end)
paintMenu:add_action(" ", function() rip() end)
paintMenu:add_toggle("RGB Paint", function() return colourChanging end, function() toggleRGBLoop() end)

paintMenu:add_action("Change RGB Speed", function() RGBSpeedChange() end)

-------------------------------------------------------------------------------
--------------------------------  DEBUG ITEMS  --------------------------------
-------------------------------------------------------------------------------

local raceLocations = {
    mainFreewaySouthX = 2778.724,
    mainFreewaySouthY = 4485.23,
    mainFreewaySouthZ = 46.33649,
    mainFreewayNorth = nil,
    nil,
    nil
}
local debugrotation = nil
local debugpos = nil
local debugveh = nil

function printPOS()
    if carCheck() then
        local veh = localplayer:get_current_vehicle()
        local pos = veh:get_position()
        local rotation = veh:get_rotation()
        debugPrint(" Current Position: " .. tostring(pos))
        debugPrint(" Current rotation: " .. tostring(rotation))
    end
end

function savePOS()
    if carCheck() then
        debugveh = localplayer:get_current_vehicle()
        debugpos = debugveh:get_position()
        debugrotation = debugveh:get_rotation()
        debugPrint(" saving POS: " .. tostring(debugpos))
    end
end

function returnToPOS()
    if carCheck() then
        if debugveh then
            debugPrint(" moving to: " .. tostring(debugpos))
            debugveh:set_position(debugpos)
            debugveh:set_rotation(debugrotation)
        end
    end
end

function loadDebugMenu()
    local DEBUGMENU = daytonsMenu:add_submenu("DEBUG MENU")

    DEBUGMENU:add_action("Teleport to freeway",
        function()
            if carCheck() then
                local veh = localplayer:get_current_vehicle()
                veh:set_position(raceLocations.mainFreewaySouthX, raceLocations.mainFreewaySouthY,
                    raceLocations.mainFreewaySouthZ)
                debugPrint(" teleported")
            else
                localplayer:set_position(raceLocations.mainFreewaySouthX, raceLocations.mainFreewaySouthY,
                    raceLocations.mainFreewaySouthZ)
            end
        end)

    DEBUGMENU:add_action("Print Location and Rotation", function() printPOS() end)

    DEBUGMENU:add_action("Save POS for Teleport", function() savePOS() end)

    DEBUGMENU:add_action("Teleport to Saved POS", function() returnToPOS() end)

    DEBUGMENU:add_action("rgb manual off", function() colourChanging = false end)
    DEBUGMENU:add_action("enter pv", function() menu.enter_personal_vehicle() end)
    DEBUGMENU:add_action("Print Memory Usage",
        function() print(" Current Usage: " .. collectgarbage("count") .. " KB") end)
    DEBUGMENU:add_action("Clean Memory", function() collectgarbage("collect") end)
    debugMenuLoaded = true
end
