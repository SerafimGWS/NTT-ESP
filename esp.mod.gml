#define init

enum areas {
    night_desert = 0,
    // Usual areas
    desert = 1,
    sewers = 2,
    scrapyard = 3,
    crystals_caves = 4,
    winter = 5,
    labs = 6,
    palace = 7,
    // Sub areas
    vault = 100,
    oasis = 101,
    pizza = 102,
    mansion = 103,
    cursed_crystals_caves = 104,
    jungle = 105,
    IDPD = 106,
    vacation = 107,
}

// Desert
global.desert_pool =   [[FireBaller, Salamander], [FireBaller, Salamander, Guardian, ExploGuardian, Wind], [Salamander, Guardian, ExploGuardian, SuperFireBaller, DogGuardian, FireBaller], [Salamander, Guardian, ExploGuardian, SuperFireBaller, DogGuardian, FireBaller]];
global.desert_pool_w = [[0.03,       0.03],       [0.8,        0.2,        0.2,      0.2,           1],    [1,          1,        1,             0.6,             0.4,         1],          [1,          1,        1,             1,               1,           1]];
// Sewers
global.sewers_pool =   [[Turtle, FireBaller], [Turtle, FireBaller, JungleBandit, Spider], [Turtle, FireBaller, Spider, JungleFly, JungleBandit, JungleAssassinHide, RatkingRage], [Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, JungleAssassinHide, JungleBandit, RatkingRage, RhinoFreak], [Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, Guardian, ExploGuardian, JungleBandit, RatkingRage, RhinoFreak, JungleAssassinHide], [Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, Guardian, ExploGuardian, DogGuardian, BanditBoss, RatkingRage, RhinoFreak, JungleAssassinHide, JungleBandit], [Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, Guardian, ExploGuardian, DogGuardian, BanditBoss, RatkingRage, RhinoFreak, JungleAssassinHide, JungleBandit]];
global.sewers_pool_w = [[0.25,    0.25],      [1,      1,          1,            1],      [1,      1,          1,      1,         1,            1,                  1],           [1,           1,      1,           1,     1,         1,                1,                  1,            1,           1],          [1,           1,      1,          1,      1,         1,                1,        1,             1,            1,           1,          1],                  [1,           1,      1,          1,      1,         1,                1,        1,             0.6,         0.25,       1,           1,          1,                  1],            [1,           1,      1,          1,      1,         1,                1,        1,             0.9,         0.35,       1,           1,          1,                  1]];
// Scrapyard
global.scrapyard_pool =   [[Wolf, Tires, Wind], [Crab, Wolf, Jock], [ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret], [ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret, Guardian, BecomeTurret, Ratking, RatkingRage], [ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret, Guardian, ExploGuardian, DogGuardian, TechnoMancer, BecomeTurret, BanditBoss, Ratking, RatkingRage], [ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret, Guardian, ExploGuardian, DogGuardian, TechnoMancer, BecomeTurret, BanditBoss, Ratking, RatkingRage]];
global.scrapyard_pool_w = [[0.1,  0.03,  1],    [0.125,0.125,0.125],[0.2,         1,    1,    0.2,  1,        1],      [0.2,         1,    0.2,  1,    1,        1,      1,        1,            1,       1],           [0.2,         1,    1,    0.2,  1,        1,      1,        1,             0.75,        0.25,         1,            0.2,        1,       1],           [0.2,         1,    1,    0.2,  1,        1,      1,        1,             1,           0.35,         1,            0.35,       1,       1]];
// Crystal caves 
global.crystals_caves_pool =   [[Molesarge], [Molesarge, GoldScorpion, SuperFireBaller], [Necromancer, Guardian, SuperFireBaller, ExploGuardian, GoldScorpion, Molesarge], [Necromancer, Guardian, SuperFireBaller, ExploGuardian, DogGuardian, BanditBoss, Molesarge,	GoldScorpion], [Necromancer, Guardian, SuperFireBaller, ExploGuardian, DogGuardian, BanditBoss, Molesarge, GoldScorpion]];
global.crystals_caves_pool_w = [[0.05],      [0.65,      0.1,            0.1],             [1,           1,        0.6,             1,             0.3,            1],         [1,           1,        1,               1,             0.5,         0.25,       1,          1],              [1,           1,        1,               1,             0.9,         0.35,       1,         1]];
// Winter
global.winter_pool =   [[PopoFreak, StreetLight, Wind], [Jock, Sniper, PopoFreak], [Jock, Sniper, PopoFreak, Turret, BecomeTurret, Guardian], [Jock, Sniper, PopoFreak, Turret, BecomeTurret, Guardian, TechnoMancer], [Jock, Sniper, PopoFreak, Turret, BecomeTurret, Guardian, TechnoMancer]];
global.winter_pool_w = [[0.005,     0.25,        1],    [0.25, 0.25,   0.1],       [0.25, 1,      0.4,       1,      1,            1],        [1,    1,      1,         1,      1,            1,        0.1],          [1,    1,      1,         1,      1,            1,        0.35]];
// Labs
global.labs_pool =   [[PopoFreak, BigMaggot, FrogEgg, Rat], [PopoFreak, JungleFly, FrogEgg, Exploder, BuffGator, BigMaggot], [PopoFreak, JungleFly, FrogEgg, SuperFrog, BuffGator, Guardian, SuperFrog, LightningCrystal, RatkingRage, Exploder, BigMaggot], [PopoFreak, JungleFly, FrogEgg, SuperFrog, BuffGator, Guardian, ExploGuardian, LightningCrystal, RatkingRage, DogGuardian, BigMaggot, Exploder]];
global.labs_pool_w = [[0.25,      0.4,       1,       1],   [0.35,      0.35,      1,       0.25,      0.2,       0.3],      [1,         1,         1,       1,         1,         1,        0.8,       0.4,              1,           1,        1],         [1,         1,         1,       1,         1,         1,        1,             0.4,              1,           0.8,         1,         1]];
// Palace
global.palace_pool =   [[Gator, GatorSmoke, Pillar, Generator, BuffGator], [Gator, JungleAssassin, BuffGator, GatorSmoke], [Gator, JungleAssassin, PopoFreak, Turret, BuffGator], [Gator, JungleAssassin, PopoFreak, Turret, BecomeTurret, BuffGator]];
global.palace_pool_w = [[0.3,   0.3,        0.3,    0.3,       0.05],      [1,     0.5,            0.3,       1],          [1,     1,              1,         1,      0.25],      [1,     1,              1,         1,      1,            1]];
// Vault
global.vault_pool = [[Torch]];
global.vault_pool_w = [[1]];
// Oasis
global.oasis_pool =   [[Turtle, Exploder, Gator, Freak], [Turtle, Exploder, Gator, Freak, BuffGator, SuperFrog], [Turtle, Exploder, Gator, Freak, BuffGator, SuperFrog, Guardian, ExploGuardian], [Turtle, Exploder, Gator, Freak, BuffGator, SuperFrog, OasisBoss, Guardian, ExploGuardian, DogGuardian, BanditBoss]];
global.oasis_pool_w = [[0.5,    1,        1,     1],     [1,      1,        1,     1,     0.3,       0.3],       [1,      1,        1,     1,     1,         1,         1,        1],             [1,      1,        1,     1,     1,         1,         1,         1,        1,             1,           0.4]];
// PIZZA!
global.pizza_pool = [[Spider]];
global.pizza_pool_w = [[0.1]];
// Mansion
global.mansion_pool =   [[GoldScorpion], [GoldScorpion, GoldSnowTank, Wind, MoneyPile], [GoldScorpion, GoldSnowTank, Guardian, ExploGuardian], [GoldScorpion, GoldSnowTank, Guardian, ExploGuardian, DogGuardian], [GoldScorpion, GoldSnowTank, Guardian, ExploGuardian, DogGuardian, BanditBoss]];
global.mansion_pool_w = [[0],            [0.05,         0.025,        1,    1],         [0.25,         0.15,         1,        1],             [0.75,         0.6,          1,        1,             0.5],         [1,            1,            1,        1,             0.75,        0.4]];
// Cursed crystal caves
global.cursed_crystals_caves_pool =   [[MeleeFake, FireBaller, Scorpion], [MeleeFake, FireBaller, Guardian, ExploGuardian, Scorpion], [MeleeFake, FireBaller, Guardian, ExploGuardian, DogGuardian, BanditBoss, Scorpion]];
global.cursed_crystals_caves_pool_w = [[0.33,      0.33,       0.33],     [1,         1,          1,        1,             1],        [1,         1,          1,        1,             1,           0.35,       1]];
// Jungle
global.jungle_pool =   [[Raven, Gator, Exploder, Car], [Raven, Gator, Exploder, SuperFrog, ExploFreak, Car, BuffGator], [Raven, Gator, Exploder, SuperFrog, ExploFreak, Guardian, Sniper, ExploGuardian, Car, BuffGator], [Raven, Gator, Exploder, SuperFrog, ExploFreak, Guardian, Sniper, ExploGuardian, DogGuardian, BanditBoss, Car, BuffGator]];
global.jungle_pool_w = [[1,     1,     1,        1],   [1,     1,     1,        0.4,       0.6,        1,   0.5],       [1,     1,     1,        1,         1,          1,        1,      1,             1,   1],         [1,     1,     1,        1,         1,          1,        1,      1,             0.5,         0.3,        1,   1]];
// IDPD palace
global.IDPD_pool =   [[Turret],[Turret, BecomeTurret],[Turret, BecomeTurret, PopoFreak]];
global.IDPD_pool_w = [[0],     [0.25,   0.25],        [0.5,    0.5,          0.25]];
// Vacation
global.vacation_pool = [[GoldChest]];
global.vacation_pool_w = [[1]];
// Coast
global.nttecoast_pool =   [[Bandit, Maggot, BigMaggot, MaggotSpawn], [Bandit, Maggot, BigMaggot, MaggotSpawn, Salamander, JungleFly], [Bandit, Maggot, BigMaggot, MaggotSpawn, Salamander, JungleFly, Guardian, ExploGuardian], [Bandit, Maggot, BigMaggot, MaggotSpawn, Salamander, JungleFly, Guardian, ExploGuardian, DogGuardian, BanditBoss]];
global.nttecoast_pool_w = [[1,      1,      0.25,      0.5],         [1,      1,      1,         1,           0.3,        0.5],       [1,      1,      1,         1,           1,          1,         0.5,      0.5],           [1,      1,      1,         1,           1,          1,         1,        1,             0.4,         0.25]];
// Abbyss
global.nttetrench_pool =   [[Freak, Freak, BoneFish, MeleeFake], [Freak, Freak, BoneFish, MeleeFake, Guardian, OasisBoss], [Freak, Freak, BoneFish, MeleeFake, Guardian, OasisBoss, ExploGuardian, DogGuardian]];
global.nttetrench_pool_w = [[1,     1,     1,        1],         [1,     1,     1,        1,         0.3,      0.1],       [1,     1,     1,        1,         1,        0.25,      1,             0.4]];
// Red
global.nttered_pool =   [[Molefish], [Molefish, ExploFreak, SuperFireBaller], [Molefish, ExploFreak, SuperFireBaller, Guardian, ExploGuardian], [Molefish, ExploFreak, SuperFireBaller, Guardian, ExploGuardian, DogGuardian, BanditBoss]];
global.nttered_pool_w = [[1],        [1,        0.25,       0.2],             [1,        0.5,        0.4,             0.5,      0.4],           [1,        0.8,        1,               1,        1,             0.4,         0.25]];
// Ice Caves
global.hmicecaves_pool =   [[Jock, Necromancer], [Jock, Necromancer, Guardian], [Jock, Necromancer, Guardian, ExploGuardian, DogGuardian]];
global.hmicecaves_pool_w = [[0.2,  0.1],         [0.5,  0.5,         0.5],      [1,    1,           1,        1,             1]];
// Hive
global.hive_pool =   [[Spider, LaserCrystal], [Spider, LaserCrystal, JungleFly, Molesarge], [Spider, LaserCrystal, JungleFly, RhinoFreak, Molesarge, GoldSnowTank, Guardian], [Spider, LaserCrystal, JungleFly, RhinoFreak, Molesarge, GoldSnowTank, Guardian, ExploGuardian, DogGuardian, ExploFreak]];
global.hive_pool_w = [[0.125,  0.025],        [1,      0.75,         0.5,       1],         [1,      1,            1,         1,          0.5,       1,            1],        [1,      1,            1,         1,          1,         1,            1,        0.6,           0.5,         1]];
// Undergrowth
global.undergrowth_pool =   [[Salamander, FireBaller], [Salamander, FireBaller, SuperFireBaller, JungleBandit, JungleAssassin], [Salamander, FireBaller, SuperFireBaller, JungleBandit, JungleAssassin, ExploFreak, Guardian], [Salamander, FireBaller, SuperFireBaller, JungleBandit, JungleAssassin, ExploFreak, Guardian, ExploGuardian, DogGuardian]];
global.undergrowth_pool_w = [[0.07,       0.2],        [0.6,        1,          0.3,             0.5,          0.3],            [1,          1,          0.8,             1,            1,              0.5,        1],        [1,          1,          1,               1,            1,              0.8,        1,        1,             0.4]];
// Moon
global.moon_pool =   [[SnowTank], [SnowTank], [SnowTank, PopoFreak, Guardian], [SnowTank, PopoFreak, Guardian, ExploGuardian, DogGuardian], [SnowTank, PopoFreak, Guardian, ExploGuardian, DogGuardian]];
global.moon_pool_w = [[0.125],    [0.25],     [0.5,      0.5,       0.5],      [1,        1,         1,        1,             0.4],         [1,        1,         1,        1,             0.8]];
// Empty
global.empty_pool = [[Wind]];
global.empty_pool_w = [[0]];

// Enemies that spawns near cars
global.CarVenus_Guards = [Molefish, Molefish, Molefish, Molefish, Molefish, Molefish, Molesarge, Molesarge, Molesarge];
// Areas/Sub areas where you can find CrownGuardian
global.crown_guardian_locations = [areas.winter,areas.palace,"coast","trench","hive"];
global.crown_guardian_sublocation = 2;

global.enemy_factor = 1;

global.attmpts_to_add_enemies = 15;

// -----Commands zone------- //
trace("Thanks for installing the Extended Spawn Pools 2.0 Beta Build 100625 mod!");
trace("Also look in the options and make your game as comfortable as possible!");

// -----Important----- //
// THIS IS NOT GAMERULES DONT TOUCH IT! GAME RULES IS "opt"
// true если LilHunter умрет и заспавнит VanSpawn 
global.lilhunter_revenged = false;
// true когда факела превратились в Guardian
global.vault_torch_transformed = false;
// после 3 vault там начинает появлятся CrownGuardian
global.crown_guardian_spawned = false;
// Стартовое количество врагов на локации
global.enemies_on_start = 0;
// Нужна для того чтобы задетектить конец генерации уровня
global.GenCont_exists = false;

global.playing_b_theme = false;

global.palace_boss_dead = false;

global.throne2_spawned = false;

global.cap_spawned = false;

global.no_idpd_for_cap = false;

global.idpd_noticed_your_weapon = false;

global.music_for_bosses = false;
//Is Area Tried to Became Darker
global.iattbd = false;
//Area Became Dark
global.abd = false;

global.horror_taunted = false;

global.IDPDTankDeath = false;

global.sprites_swapped = false;

global.tip_shown = false;

global.inner_chance_proc = false;

global.jungle_enabler_spawned = false;

global.snowspawn_controller_created = false;

global.cap_dead = false;

global.last_vault = false;

global.rest_room = false;

global.wind_left = false;

global.amount_of_crown_guardians = 0;
//Cursed Crystal Caves
global.ccc = false;
//Common Enemies Multiplyer
global.cem = 1;
//ESP Enemies Multiplier
global.eem = 1;
//ESP Level Of Hardness Count
global.factor = 1;
//Sprites Restored In Menu
global.srim = false;

global.TempHard = 0;

global.challange_accepted = false;

global.ultrachest_x = 0;

global.ultrachest_y = 0;

global.ultrachest_id = 0;

global.ultraweapon_id = 0;

global.ultrachest_frame = 0;

global.weapon_deleted = false;

global.ultra_weapons_random = [wep_ultra_crossbow, wep_ultra_grenade_launcher, wep_ultra_laser_pistol, wep_ultra_revolver, wep_ultra_shotgun, wep_ultra_shovel];

global.used_skills = [0, 0, 0, 0, 0, 0];

global.ultrachest_spawned = false;

global.temp_skippedchests = 0;

global.aowb = 0;

global.target = 0;

global.no_addinational_yell = false;
global.idpdyell_playing = false;

global.early_hammerhead_compensation = false;

global.loop_check = GameCont.loops;

global.popup_shown = {
	"_salamander": false,
	"_rat": false,
	"_molefish": false,
	"_buffgator": false,
	"_junglefly": false,
	"_jock": false,
	"_last": false,
	"_bandit": false,
	"_molesarge": false,
	"_van": false,
	"_grunt": false,
	"_inspector": false,
	"_technomancer": false,
	"_crownguardian": false,
	"_wolf": false,
	"_oasisboss": false,
	"_exploguardian": false,
	"_dogguardian": false,
	"_lightningcrystal": false,
	"_junglebandit": false,
	"_jungleassasin": false,
	"_junglebanditboss": false,
	"_elitegrunt": false,
	"_necromancer": false,
	"_sniper": false,
	"_snowtank": false,
	"_goldsnowtank": false,
	"_ccc": false,
	"_oasis": false,
	"_jungle": false,
};

global.onetimetip_shown = {
	"chicken": false,
	"sans": false,
	"dof": false,
}

//Sprites
global.SnowSniperIdle = sprite_add("resources/Enemies/SnowSnipers/sprSnowSniperIdle.png", 4, 12, 12);
global.SnowSniperWalk = sprite_add("resources/Enemies/SnowSnipers/sprSnowSniperWalk.png", 6, 12, 12);
global.SnowSniperHurt = sprite_add("resources/Enemies/SnowSnipers/sprSnowSniperHurt.png", 3, 12, 12);
global.SnowSniperDead = sprite_add("resources/Enemies/SnowSnipers/sprSnowSniperDead.png", 6, 12, 12);

global.sprCobWeb = sprite_add("resources/OtherObjects/Cobweb/sprCobWeb.png", 1,0,0);

global.sprRadFalke = sprite_add("resources/Etc/Parcticles/sprRadFlake_strip3.png",3,0,0);
global.sprSandFX = sprite_add("resources/Etc/Parcticles/sprSandFX.png",1,0,0);
global.sprSandFXnight = sprite_add("resources/Etc/Parcticles/sprSandFXnight.png",1,0,0);

global.sprJungleCarIdle = sprite_add("resources/OtherObjects/JungleCar/sprJungleCarIdle.png",1,0,0);
global.sprJungleCarHurt = sprite_add("resources/OtherObjects/JungleCar/sprJungleCarHurt.png",3,0,0);

global.sprOasisEnterIdle = sprite_add("resources/OtherObjects/OasisEnter/sprOasisScrapyardEnterIdle.png",1,16,16);
global.sprOasisEnterHurt = sprite_add("resources/OtherObjects/OasisEnter/sprOasisScrapyardEnterHurt.png",3,16,16);
global.sprOasisEnterDead = sprite_add("resources/OtherObjects/OasisEnter/sprOasisScrapyardEnterDeadpng.png",1,8,8);
global.sndOasisEnterAppears = sound_add("resources/OtherObjects/OasisEnter/sndWaterMineLand.ogg");

global.sndGatorTeleport = sound_add("resources/teleport.ogg");

global.sprBPickup = sprite_add("resources/Etc/sprBPickup.png",2,6,12);

global.sprJungleSniperIdle = sprite_add("resources/Enemies/JungleSnipers/sprJungleSniperIdle.png",6,12,12);
global.sprJungleSniperWalk = sprite_add("resources/Enemies/JungleSnipers/sprJungleSniperWalk.png",6,12,12);
global.sprJungleSniperHurt = sprite_add("resources/Enemies/JungleSnipers/sprJungleSniperHurt.png",3,12,12);
global.sprJungleSniperDead = sprite_add("resources/Enemies/JungleSnipers/sprJungleSniperDead.png",6,12,12);

global.sprUltraChest = sprite_add("resources/OtherObjects/UltraChest/ultrachest.png",5,30,45);

global.sprWallBonus = sprite_add("resources/OtherObjects/WallBonus/sprWallBonus.png",2,12,12);

global.sprVan = sprite_add_base64("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",18,38.5,19.5)
global.sprSiren = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAPkAAAAyCAYAAACeYH3nAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4QYREwgufEY9MwAAAelJREFUeNrt3UFOwzAURdG6Ys6iWDeLYgVmBEiFAUnsxH3/XKmTSkiN7Ztnfyem3Qrz+t7743cfb63dgBn03+Pt1uaPt0buvyE7psp9ouyN4ETHxYJPFr0RnOhYQPCJojeCEx2LCD5J9LveALIpkVBHUlya49QUn5DmkhwIh+QAyQE8My+awJpxOk09g+SL81RFt7MFHvWbkm4ErbWV+iFa8hFVdWJfcA2S/6c9BrRFI/iTp3gPvZEliD6qbw62RSN4wDQ9TfSkJF9A9EbwgHV4gvDJU/SLRVd4S5F7y0BQXb+mTy66AUdJXqbQRrqa9N739J2HYYBwSA6QHADJAZD8DI5Wxr0zjqlcVPCU5MAzsWMbjuRSHOFpHiX53n1ygiM5ze/VBQfSMV0HSJ6f4mYBIDkAkgM4iY0Veq+aVsSrpjXaneQG0lK/Kf1GcOHBERHT9fL73L33749rIPjjn6W0Y9ljnxzkSPAqkhOd4JF940hmoscIn7gmX+S/mzqSueJaX3W9lOSR1fUvOT3JRjp4GOaUGQFAcgAkB8otiwYtq0gOSHIAp6fxwOJofJX1SPHMsVAYxpbttMG7H5IcWCnRJ2xvlkiqPWkuxXFqqk98dqHMQN4iOsERNYmodLH/EZ3gIHmo7ORGKp/+TvJjblGySAAAAABJRU5ErkJggg==",3,38.5,23.5)
global.sprOutline = sprite_add_base64("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",18,38.5,19.5)
global.sprVanStop = sprite_add_base64("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",18,38.5,19.5)

global.OPTIONS_FILE = "options.json";

global.PRESET_FILE = "presets.json";

mod_current_type = script_ref_create(0)[0];

// values for your options should go in a global lightweight object
// you specify the global's name when adding, doesn't have to be `options`
global.options = {
	"lilhunter_revenge": true, 
	"fix_venus_car": true, 
	"more_ravens_in_jungle": 1, 
	"crown_guardian_on_max": true, 
	"cursing_enabled": true, 
	"nes": true, 
	"piov": true, 
	"diropf": false, 
	"add_dark": true, 
	"idpd_mashup": true, 
	"no_jocks": false, 
	"l5cap": false,
	"fire_explosions": true,	
	"no_throne_yell": false, 
	"hammerhead_time": 1,
	"death_effects": true, 
	"no_new_tips": false, 
	"no_new_parcticles": false, 
	"no_guards": false,
	"chest_replacments": true,
	"cursed_caves_rework": true,
	"enemies_mutations": true,
	"crown_guardian_help": true,
	"popups": true,
	"idpd_seek": 1,
	"common_difficulty_multiplier": 0.5,
	"esp_difficulty_multiplier": 0.5,
	"no_floor_changes": false,
	"bonus_loop_max_health": true,
	"special_code": "insert your code here",
	"seed": "",
	"reset": false,
	"rmb": false,
	"deflect_colour": true,
	"wild_idpd": false,
	"hardmodemod_3dvans": false,
};

//trace(global.options);

global.loaded = false;

if fork() {
	// wait for Custom Options to load
	while !mod_script_exists("mod", "custom_options", "scr_import") {
		wait 0;
	}
	
	// Custom Options is loaded, we can import now
	if mod_script_exists("mod", "custom_options", "scr_import") {
		// import Custom Options' scripts to our `global.scr` variable (change name if desired)
		mod_script_call_nc("mod", "custom_options", "scr_import", script_ref_create(0), "scr");
	}
	
	global.loaded = true;
	
	// add options with `option_add` and `option_add_page`
	// see `api.txt` for the API and `fields.txt` for the fields of each option type
	
	call(scr.option_add_page, mod_current_type, mod_current, "options", "global_page", {
		"options": [
			{
				"option": "lilhunter_revenge",
				"kind": "bool",
				"name": {
					"text": "@(sprLilHunterWalk:0)@s Lil Hunter Revenge"
				},
				"desc": {
					"text": "When @rON@s#if @blil hunter@s @rdies@s - spawns a @bvan spawn@s"
				}
			},
			{
				"option": "fix_venus_car",
				"kind": "bool",
				"name": {
					"text": "@(sprVenusCarFixed:0)  Fixed Venus Car"
				},
				"desc": {
					"text": "When @rON@s# @yvenuz car@s will be @wfixed@s from start#+ it will have @winf hp@s #but @wexplodes@s when @pportal@s appears"
				}
			},
			{
				"option": "deflect_colour",
				"kind": "bool",
				"name": {
					"text": "Paint defelected projectile"
				},
				"desc": {
					"text": "When @rON@s#will paint @wdeflected projectiles@s"
				}
			},
			{
				"option": "more_ravens_in_jungle",
				"kind": "slider",
				"name": {
					"text": "@(sprRavenIdle:0) jungle ravens"
				},
				"desc": {
					"text": "Controls @yspawnrate@s#of @rravens@s in a @gjungle@s"
				},
				"format": {
					"display_multiplier": 5
				}
			},
			{
				"option": "bonus_loop_max_health",
				"kind": "bool",
				"name": {
					"text": "@(sprHealthChest:0) Potential Bonus Max Health"
				},
				"desc": {
					"text": "When @rON@s#with each @yloop@s you gain#@w1 potential bonus max health@s#1 picked up @rhealth chest@s =#@w-1 pbmh@s, @g+1 max health@s"
				}
			},
			{
				"option": "crown_guardian_on_max",
				"kind": "bool",
				"name": {
					"text": "@(sprCrownGuardianIdle:0) Crown Guardians on max"
				},
				"desc": {
					"text": "When @rON@s#and after you visited @w3rd@s @gVault@s#on each @wn-2@s stage#will spawn @g2 crown guardians@s#and if @wloop@s is higher than 2#it will spawn @r4 big bandits@s#(except for @ydesert@s)#if you skipped n-2 area#on n-2 will spawn 2 more guardians"
				}
			},
			{
				"option": "crown_guardian_help",
				"kind": "bool",
				"name": {
					"text": "@(sprTorch:0) Crown Guardians Help"
				},
				"desc": {
					"text": "When @rON@s# when you activate @gcrown ped@s#or break @gcrown guardian statue@s#in 1st vault#@gguardians@s will replace @wall torches@s#in 2nd vault#@wturrets@s will come out# and in 3rd one#each @gtorch@s will summon @bIDPD@s"
				}
			},
			{
				"option": "cursing_enabled",
				"kind": "bool",
				"name": {
					"text": "@(sprInvSpiderIdle:0) Spreading curse"
				},
				"desc": {
					"text": "When @rON@s#@ycrystals@s and @yspiders@s will be @pcursed@s#with @wchance 1/7@s,#if you have @pcursed crown@s#@wchance will be 2/3@s,#if @wno crowns@s#no @pcursed crystals@s and @pspiders@s"
				}
			},
			{
				"option": "cursed_caves_rework",
				"kind": "bool",
				"name": {
					"text": "@(sprCurse:3) Cursed caves rework"
				},
				"desc": {
					"text": "When @rON@s#@wall weapons@s that touch floor in#@p4-?@s will be @pcursed@s#after leaving @yl1+@s @pcursed crystal caves@s#all curses will be @ylifted@s"
				}
			},
			{
				"option": "no_throne_yell",
				"kind": "bool",
				"name": {
					"text": "@(sprLilHunterWalk:0) No Throne Yell"
				},
				"desc": {
					"text": "When @wON@s#@wmutants will not@s say#anything upon enetering @g7-3@s"
				}
			},
			{
				"option": "chest_replacments",
				"kind": "bool",
				"name": {
					"text": "@(sprAmmoChest:0) Chest Replacments"
				},
				"desc": {
					"text": "When @rON@s#it will @wreplace some chests@s#@ypizza@s#@wammo chest@s-@ypizza chest@s#@bwinter city@s#@wammo chest@s - @bIDPD Chests@s# in @plabs@s#@wammo chest@s - @wmimic@s#@rhealth chest@s - @rsuper mimic@s#in @bHQ@s#@wammo chests@s - @bIDPD chests@s#@grad chests@s - @rhealth chests@s"
				}
			},			
		]
	});
	
	call(scr.option_add_page, mod_current_type, mod_current, "options", "global_page2", {
		"options": [
			{
				"option": "no_floor_changes",
				"kind": "bool",
				"name": {
					"text": "@(sprFloor1:0) No Floor Changes"
				},
				"desc": {
					"text": "When @rON@s#it will @wdisable all floor@s changes#from any other options"
				}
			},
			{
				"option": "diropf",
				"kind": "bool",
				"name": {
					"text": "@(sprPopoReviveArea:0) Early Popo Freaks Revives"
				},
				"desc": {
					"text": "When @rON@s#it will @wenable all@s @bPopo Freaks revives@s#before @g3rd loop@s"
				}
			},
			{
				"option": "add_dark",
				"kind": "bool",
				"name": {
					"text": "@(sprNightCactus) More Darkness"
				},
				"desc": {
					"text": "When @rON@s#apllies @pdarkness@s on #@wPalace, Jungles and Night Desert@s#+ @y25% Chance for night version of area@s"
				}
			}
			{
				"option": "fire_explosions",
				"kind": "bool",
				"name": {
					"text": "@(sprDragonFire:0) fire explosions"
				},
				"desc": {
					"text": "When @rON@s#@rfire@s when @wcontacts@s with#@wany@s @rexplosive projectile@s#destroys the projectile"
				}
			},
			{
				"option": "no_new_tips",
				"kind": "bool",
				"name": {
					"text": "@(sprPortal:0) No New Tips"
				},
				"desc": {
					"text": "When @rON@s#it will @wdisable all new tips@s"
				}
			},
			{
				"option": "popups",
				"kind": "bool",
				"name": {
					"text": "@(sprLevelUp:4) popups"
				},
				"desc": {
					"text": "When @rON@s#it will @wshow some new popups@s"
				}
			},
			{
				"option": "no_jocks",
				"kind": "bool",
				"name": {
					"text": "@(sprJockIdle:0) No Jocks!"
				},
				"desc": {
					"text": "When @rON@s#it will @rdelete@s @wall Jocks@s"
				}
			},
			{
				"option": "enemies_mutations",
				"kind": "bool",
				"name": {
					"text": "@(sprLHBouncer:1) Enemies Mutations"
				},
				"desc": {
					"text": "When @rON@s#starting from @gL1@s#it will #give on @rhit@s @pteleports@s to all @ggators@s#from @bL3@s#@wreplace@s @wsniper and snow tank bullets@s# with @wbouncers@s#@ygolden tank rockets@s replaced#with @ygolden discs@s"
				}
			},
			{
				"option": "rmb",
				"kind": "bool",
				"name": {
					"text": "Tinted Walls"
				},
				"desc": {
					"text": "When @rON@s#will @wgenerate@s randomly#a @btinted@s wall close to you#tinted walls have @wrandom@s prizes inside#random prizes are#@g13 rads@s, @yammo pickup@s, @rhp pickup@s#or @wweapon chest@s#enemies @graddrop@s @rdecreased by 1@s"
				}
			},
			{
				"option": "idpd_mashup",
				"kind": "bool",
				"name": {
					"text": "@(sprPopoFreakIdle:0) IDPD Mashup"
				},
				"desc": {
					"text": "When @rON@s#@yL2@s: @w1/3@s @bportals@s and @bvans@s#will contain @bpopo freaks@s#@gL3@s: @w1/2@s @bportals@s and @bvans@s#will contain @yelites@s#P.S. Vans on L3 can also contain#non elite IDPD#because i can't control#if van will contain elites"
				}
			},			
			{
				"option": "idpd_seek",
				"kind": "choice",
				"name": {
					"text": "@(sprPopoPortal:0) IDPD Seek"
				},
				"desc": {
					"text": "Switch between IDPD Seek modes.#@gNo@s# No Addinational @bIDPD@s. #@yYes@s# Adds more @bIDPD@s to #@wSnow Town@s, @wLabs@s and @wPalace@s. #@rMore@s# Adds even more @bIDPD@s to #@wSnow Town@s and @wPalace@s#+ visiting @bHQ@s #or having a @pcrown@s #or killing @bcap@s #will add addinational @bIDPD@s"
				},
				"values": [0, 1, 2],
				"display": ["No", "Yes", "More"]
			},
			{
				"option": "wild_idpd",
				"kind": "bool",
				"name": {
					"text": "@(sprGruntIdle:0) Wild IDPD"
				},
				"desc": {
					"text": "When @rON@s#@rwild@s @bIDPD@s will spawn#@wevery area@s except some#each idpd will have @yrandom@s @graddrop@s#if @graddrop@s is @whigher than 24@s#@bidpd@s will became a @rpopo freak@s#rules for spawn are the#same as for#idpd from portals"
				}
			},
		]
	});
			
	call(scr.option_add_page, mod_current_type, mod_current, "options", "global_page3", {
		//"reference": script_ref_create(draw_back_button),
		"options": [
			{
				"option": "no_new_parcticles",
				"kind": "bool",
				"name": {
					"text": "@(global.sprRadFalke:0) No New Parctiles"
				},
				"desc": {
					"text": "When @rON@s#@rdisables@s spawn of @gnew parctiles@s"
				}
			},
			{
				"option": "no_guards",
				"kind": "bool",
				"name": {
					"text": "@(sprGuardianIdle:0) No Guardians"
				},
				"desc": {
					"text": "When @rON@s#it will delete @wall@s @gGuards@s#which have been added by @wesp@s"
				}
			},
			{
				"option": "l5cap",
				"kind": "bool",
				"name": {
					"text": "@(sprLastSit:0) L5 Captain"
				},
				"desc": {
					"text": "When @rON@s#you will @rfight@s the @bCaptain@s#before @gThrone 2@s on @w0-1 L5@s"
				}
			},
			{
				"option": "nes",
				"kind": "bool",
				"name": {
					"text": "@(sprShielderIdle:0) No Early Shielders"
				},
				"desc": {
					"text": "When @rON@s#it will @wreplace all@s @bshielders@s#with @binspectors@s until you pass#@w10 stages@s"
				}
			},
			{
				"option": "hammerhead_time",
				"kind": "choice",
				"name": {
					"text": "@(sprSkillIconHUD:26) hammerhead time"
				},
				"desc": {
					"text": "When @wYes@s#@wremoves hammerhead@s from#@wavailable@s @gmutations pool@s#gives @whammerhead@s after#@wreaching L1@s#when @wmore@s#@wgives more hammerheads#with each loop@s"
				},
				"values": [0, 1, 2],
				"display": ["No", "Yes", "More"]
			},
			{
				"option": "piov",
				"kind": "bool",
				"name": {
					"text": "@(sprVanDrive:3) careful IDPD in labs"
				},
				"desc": {
					"text": "When @rON@s#it will @wreplace all@s @bvans@s with#@b4 idpd portals@s in @wLabs@s"
				}
			},
			{
				"option": "death_effects",
				"kind": "bool",
				"name": {
					"text": "@(sprSalamanderDead) Death Effects"
				},
				"desc": {
					"text": "When @rON@s#it will enable @weffects@s#which will happen after#@rdeath@s of @wcertain enemies@s#after @wcertain loop@s"
				}
			},
			{
				"option": "hardmodemod_3dvans",
				"kind": "bool",
				"name": {
					"text": "@(sprSalamanderDead) 3D Vans from Hardmode mod"
				},
				"desc": {
					"text": "When @rON@s#will make @bvans@s @y3d@s#code by @wblaac@s#sprites by jsburg"
				}
			},
			{
				"option": "seed",
				"kind": "text",
				"name": {
					"text": "@(sprTangleSeed:0) seed",
				},
				"desc": {
					"text": "enter seed to play the same run endless amount of times"
				}
			},			
			{
				"option": "common_difficulty_multiplier",
				"kind": "slider",
				"name": {
					"text": "@(sprBanditIdle:0) rdm"
				},
				"desc": {
					"text": "rdm - @wregular@s @rdifficulty@s @ymultiplier@s#set multiplier from 0 to 2"
				},
				"format": {
					"display_multiplier": 2
				}
			},
			{
				"option": "esp_difficulty_multiplier",
				"kind": "slider",
				"name": {
					"text": "@(sprFireBallerIdle:0) edm"
				},
				"desc": {
					"text": "edm - @besp@s @rdifficulty@s @ymultiplier@s#set multiplier from 0 to 2"
				},
				"format": {
					"display_multiplier": 2
				}
			}
		]
	});

	call(scr.option_add_page, mod_current_type, mod_current, "options", "options_reset", {
		"options": [
			{
				"option": "reset",
				"kind": "bool",
				"name": {
					"text": "Options Reset"
				},
				"desc": {
					"text": "When @rON@s#loads presets"
				}
			},		
		]
	});
	
	call(scr.option_set_mod_display_name, mod_current_type, mod_current, "   ESP#SETTINGS");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page", "CONFIG PAGE I");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page2", "CONFIG PAGE II");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page3", "CONFIG PAGE III");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "options_reset", "OPTIONS RESET");
	
	exit;
}

//death messages for checking
global.SnowSniperHitid = [global.SnowSniperIdle, "Snow Sniper"];

global.JungleSniperHitid = [global.sprJungleSniperIdle, "Jungle Sniper"];
// -----Tick------ //
#define game_start

/*if (is_int64(opt.seed)) {
	game_set_seed(opt.seed);
	trace(`Seed ${opt.seed}, RNG ${irandom($ffFFffFF)}`);
}*/

if(GameCont.loops > 0){
	global.aowb = (GameCont.loops + 1) * 10 + 10;
}
else{
	global.aowb = (GameCont.loops + 1) * 20;
}

global.onetimetip_shown = {
	"chicken": false,
	"sans": false,
	"dof": false,
}

global.cap_spawned = false;
global.tip_shown = false;
global.inner_chance_proc = false;
global.cap_dead = false;
global.amount_of_crown_guardians = 0;
global.factor = GameCont.hard;

global.challange_accepted = false;

global.ultrachest_x = 0;

global.ultrachest_y = 0;

global.ultrachest_id = 0;

global.ultraweapon_id = 0;

global.ultrachest_frame = 0;

global.weapon_deleted = false;

global.used_skills = [0, 0, 0, 0, 0, 0];

global.ultrachest_spawned = false;

global.temp_skippedchests = 0;

global.no_addinational_yell = false;
global.idpdyell_playing = false;

global.early_hammerhead_compensation = false;

global.loop_check = GameCont.loops;

global.popup_shown = {
	"_salamander": false,
	"_rat": false,
	"_molefish": false,
	"_buffgator": false,
	"_gator": false,
	"_junglefly": false,
	"_jock": false,
	"_last": false,
	"_bandit": false,
	"_molesarge": false,
	"_van": false,
	"_grunt": false,
	"_inspector": false,
	"_technomancer": false,
	"_crownguardian": false,
	"_wolf": false,
	"_oasisboss": false,
	"_exploguardian": false,
	"_dogguardian": false,
	"_lightningcrystal": false,
	"_junglebandit": false,
	"_jungleassasin": false,
	"_junglebanditboss": false,
	"_elitegrunt": false,
	"_necromancer": false,
	"_sniper": false,
	"_snowtank": false,
	"_goldsnowtank": false,
	"_ccc": false,
	"_oasis": false,
	"_jungle": false,
};

#define step

//trace("step");

//trace(global.options);

global.attmpts_to_add_enemies = 15 * (GameCont.loops + 1);
global.cem = global.options.common_difficulty_multiplier * 2;
global.eem = global.options.esp_difficulty_multiplier * 2;
//opt.special_code = global.options.special_code;
//opt.seed = string_digits(global.options.seed);S

if(global.options.reset){
	if (fork()) {
	wait(file_load(global.PRESET_FILE) + 1);

	if (file_exists(global.PRESET_FILE)) {
		var _options = json_decode(string_load(global.PRESET_FILE));
        var option_count = lq_size(global.options);
    
        for (var i = 0; option_count > i; i++) {
            if (!lq_exists(_options, lq_get_key(global.options, i))) {
                lq_set(_options, lq_get_key(global.options, i), lq_get_value(global.options, i));
            }
        }

        global.options = _options;
		global.options.reset = false;
		call(scr.options_refresh)
		}
	}
}

if(global.options.hardmodemod_3dvans == true){
	with Van{
		with instance_create(x,y,CustomObject){
			name = "3dvan"
			image_alpha = 0;
			if instance_exists(Player)
			target = instance_nearest(x,y,Player)
			else target = instance_nearest(x,y,Floor)
			if(target.x > x)
				right = 1
			else 
				right = -1
			direction = 90 - (90 * right)
			image_angle = direction
			drivespeed = 15
			depth = other.depth
			start = 20
			zscale = 1
			land = 10
			sprite_index = global.sprVan
			maxspeed = other.drivespeed
			on_draw = script_ref_create(vandraw)
			on_step = script_ref_create(vanguide)
			on_destroy = script_ref_create(vanexplo)
			
			baby = 0
			image_speed = 0.4
			with instance_create(x,y,CustomEnemy){
				mama = other
				other.baby = id
				hitid = [sprVanDrive,"VAN"]
				team = 3
				maxhealth = 250
				my_health = 250
				image_alpha = 0;
				friction = 10
				canfly = 1
				sprite_index = global.sprVan
				image_speed = 0
				meleedamage = 10
				}
			//alarm0 += choose(0,1,1) //round(1.5 * alarm0)
			spr_shadow = mskNone
		}
		instance_delete(id)
	}
}

with(Torch){
	if(place_meeting(x,y,GuardianStatue)){
		instance_delete(self);
	}
}

if(GameCont.crown == crwn_blood){
	global.enemy_factor = 1.5;
}

//Potential fix of idpd spawning in first ending
if(instance_exists(LastCutscene)){
	instance_delete(IDPDSpawn);
}


with(Player){
	var bx1 = x - 213,
		by1 = y - 120,
		bx2 = x + 213,
		by2 = y + 120
	on_screen_with_player(bx1,by1,bx2,by2);
	//NTT 9940 Missing captain speech fix
	if(GameCont.area == 106 && GameCont.subarea == 3){
		if(snd_cptn != null){
			if(snd_spch != snd_cptn){
				snd_spch = snd_cptn;
			}
		}
	}

	if(snd_idpd != null){
		if(audio_is_playing(snd_idpd) && global.idpdyell_playing == false){
			global.idpdyell_playing = true;
		}
		if(!audio_is_playing(snd_idpd) && global.idpdyell_playing == true){
			snd_idpd = null;
		}
	}
}

if(global.options.deflect_colour == true){
	with(projectile){
    	if("deflected" in self && "typ" in self && "team" in self && "hitid" in self){
        	if(hitid == 58){
            	image_blend = make_color_hsv(255,150,255);            
        	}
        	else{
         		if(deflected == 1 && typ == 1){
                	image_blend = make_color_hsv(100,150,255);                  
            	}
        	}
    	}
	}
}

if(global.options.rmb == true){
	if(instance_exists(enemy)){
		with(enemy){
			if("lessrads" not in self && "raddrop" in self){
				lessrads = 1;
				raddrop -= 1;
			}
		}
	}

	with(Player){
		global.target = instance_nearest(x,y,Wall);
	}

	with(global.target){
		if("goodiescheck" not in self && global.aowb > 0){
			if(random(30) < 1){
				goodiescheck = true;
				global.aowb -= 1;
				with(instance_create(x,y,CustomObject)){
					//trace("Bonus!");
					sprite_index = global.sprWallBonus;
					image_index = irandom(1);
					if(irandom(2) < 1){
						image_xscale = -1;
					}
					else{
						image_xscale = 1;
					}
					if(random(2) < 1){
						image_yscale = -1;
					}
					else{
						image_yscale = 1;
					}
					depth = -7;
					image_speed = 0;
					bonus_type = irandom(3);
				}
			}
			else{
				goodiescheck = true;
				//image_blend = c_purple;
			}
		}
	}
}

with(CustomObject){
	if(!place_meeting(x,y,Wall)){
		if("bonus_type" in self){
			switch (bonus_type){
				case 0:
					instance_create(x,y,AmmoPickup);
					break;
				case 1:
					repeat(13) with instance_create(x,y,Rad){
                		speed = random_range(-5,5);
                		direction = random(360);
            		}
					break;
				case 2:
					instance_create(x,y,HPPickup);
					break;
				default:
					instance_create(x,y,WeaponChest);
					break;
			}
			instance_delete(id);
		}
	}
}

if(global.options.idpd_seek == 2 && GameCont.hard > 9){
	with(Grunt){
    	if("RadHolder" not in self){
        	if(random(3) < 1){
            	RadHolder = 1;
            	maxhealth += 4;
            	my_health += 4;
            	healthcheck = my_health - 4;
        	}
        	else{
            	RadHolder = 0;
        	}
    	}
	}

	with(Inspector){
    	if("RadHolder" not in self){
        	if(random(2) < 1){
            	RadHolder = 1;
            	maxhealth += 4;
            	my_health += 4;
            	healthcheck = my_health - 4;
        	}
        	else{
            	RadHolder = 0;
        	}
    	}
	}

	with(Shielder){
    	if("RadHolder" not in self){
        	if(random(2) < 1){
            	RadHolder = 1;
            	maxhealth += 4;
            	my_health += 4;
            	healthcheck = my_health - 4;
        	}
        	else{
            	RadHolder = 0;
        	}
    	}
	}
}

with(Grunt){
    if("RadHolder" in self){
        if(RadHolder == 1){
			if(snd_hurt != sndHitMetal) {
				snd_hurt = sndHitMetal;
			}
			roll = 0;
			angle = 0;
			if("already_drawing" not in self){
            	script_bind_draw(radchestback, -1);
				already_drawing = 1;
			}
            if(healthcheck > my_health){
                repeat(25) with instance_create(x,y,Rad){
                    speed = random_range(-5,5);
                    direction = random(360);
                }
                with instance_create(x,y,Corpse) sprite_index = sprRadChestCorpse;
                sound_play(sndEXPChest);
                RadHolder = 2;
            }
        }
        if(RadHolder == 2){
            if(male == 0 && snd_hurt != sndGruntHurtF){
                snd_hurt = sndGruntHurtF;
            }
            if(male == 1 && snd_hurt != sndGruntHurtM){
                snd_hurt = sndGruntHurtM;
            }
        }
	}	
}

with(Inspector){
	if("RadHolder" in self){
        if(RadHolder == 1){
			if(snd_hurt != sndHitMetal) {
				snd_hurt = sndHitMetal;
			}
            control = 0;
			if("already_drawing" not in self){
				script_bind_draw(telekenesis, -1);
            	script_bind_draw(radchestback, -1);
				already_drawing = 1;
			}
            rad_inspector();
            if(healthcheck > my_health){
                repeat(25) with instance_create(x,y,Rad){
                    speed = random_range(-5,5);
                    direction = random(360);
                }
                with instance_create(x,y,Corpse) sprite_index = sprRadChestCorpse;
                sound_play(sndEXPChest);
                RadHolder = 2;
            }
        }
        if(RadHolder == 2){
            if(male == 0 && snd_hurt != sndInspectorHurtF){
                snd_hurt = sndInspectorHurtF;
            }
            if(male == 1 && snd_hurt != sndInspectorHurtM){
                snd_hurt = sndInspectorHurtM;
            }
        }
	}	
}

with(Shielder){
    if("RadHolder" in self){
        if(RadHolder == 1){
			if(snd_hurt != sndHitMetal) {
				snd_hurt = sndHitMetal;
			}
			if("already_drawing" not in self){
            	script_bind_draw(radchestback, -1);
				already_drawing = 1;
			}
            if(healthcheck > my_health){
                repeat(25) with instance_create(x,y,Rad){
                    speed = random_range(-5,5);
                    direction = random(360);
                }
                with instance_create(x,y,Corpse) sprite_index = sprRadChestCorpse;
                sound_play(sndEXPChest);
                RadHolder = 2;
            }
        }
        if(RadHolder == 2){
            if(male == 0 && snd_hurt != sndShielderHurtF){
                snd_hurt = sndShielderHurtF;
            }
            if(male == 1 && snd_hurt != sndShielderHurtM){
                snd_hurt = sndShielderHurtM;
            }
        }
	}
}

//We are in a game so sprites after we come back in menu will restore
if(!instance_exists(MenuGen)){
	global.srim = false;
}

//We are in a menu and we need to restore sprites which was replaced
if(instance_exists(MenuGen) && global.srim == false){
	sprite_restore(sprBigSkull);
	sprite_restore(sprBigSkullOpen);
	sprite_restore(sprBigSkullHurt);
	sprite_restore(sprBigSkullOpenHurt);
	sprite_restore(sprBigSkullDead);
	sprite_restore(sprBonePileIdle);
	sprite_restore(sprBonePileHurt);
	sprite_restore(sprBonePileDead);
	sprite_restore(sprBones);
	sprite_restore(sprCactus);
	sprite_restore(sprCactusHurt);
	sprite_restore(sprCactusDead);
	sprite_restore(sprCactus2);
	sprite_restore(sprCactus2Hurt);
	sprite_restore(sprCactus2Dead);
	sprite_restore(sprCactus3);
	sprite_restore(sprCactus3Hurt);
	sprite_restore(sprCactus3Dead);
	sprite_restore(sprCactusB);
	sprite_restore(sprCactusBHurt);
	sprite_restore(sprCactusBDead);
	sprite_restore(sprCactusB2);
	sprite_restore(sprCactusB2Hurt);
	sprite_restore(sprCactusB2Dead);
	sprite_restore(sprCactusB3);
	sprite_restore(sprCactusB3Hurt);
	sprite_restore(sprCactusB3Dead);
	sprite_restore(sprDebris1);
	sprite_restore(sprDesertTopDecal);
	sprite_restore(sprDetail1);
	sprite_restore(sprFloor1);
	sprite_restore(sprFloor1Explo);
	sprite_restore(sprFloor1B);
	sprite_restore(sprMSpawnIdle);
	sprite_restore(sprMSpawnDead);
	sprite_restore(sprMSpawnHurt);
	sprite_restore(sprMSpawnChrg);
	sprite_restore(sprWall1Bot);
	sprite_restore(sprWall1Out);
	sprite_restore(sprWall1Top);
	sprite_restore(sprWall1Trans);
	sprite_restore(sprWind);
	sprite_restore(sprTires);
	sprite_restore(sprTiresDead);
	sprite_restore(sprTiresHurt);
	sprite_restore(sprTopDecalScrapyard);
	sprite_restore(sprFloor3);
	sprite_restore(sprFloor3B);
	sprite_restore(sprWall3Out);
	sprite_restore(sprDetail3);
	sprite_restore(sprWall3Bot);
	sprite_restore(sprWall3Trans);
	sprite_restore(sprWall3Top);
	sprite_restore(sprFloor3Explo);
	sprite_restore(sprDebris3);
	sprite_restore(bak3);
	sprite_restore(sprCarIdle);
	sprite_restore(sprCarHurt);
	sprite_restore(sprCarThrown);
	sprite_restore(sprSnowBotRedCarIdle);
	sprite_restore(sprSnowBotRedCarLift);
	sprite_restore(sprSnowBotRedCarWalk);
	sprite_restore(sprSnowBotRedCarHurt);
	sprite_restore(sprSnowBotRedCarThrow);
	sprite_restore(sprTrap);
	sprite_restore(sprTrapGameover);
	sprite_restore(sprTrapScorchMark);
	sprite_restore(sprRainDrop);
	sprite_restore(sprRainDropSlowmo);
	sprite_restore(sprRainSplash);
	sprite_restore(sprScrapDecal);
	sprite_restore(sprSodaMachine);
	sprite_restore(sprStreetLight);
	sprite_restore(sprIcicle);
	sprite_restore(sprWall5Trans);
	sprite_restore(sprTopDecalCity);
	sprite_restore(sprIceDecal);
	sprite_restore(sprIcicleDead);
	sprite_restore(sprIcicleHurt);
	sprite_restore(sprSodaMachineDead);
	sprite_restore(sprSodaCan);
	sprite_restore(sprStreetLightDead);
	sprite_restore(sprFloor5B);
	sprite_restore(sprFloor5Explo);
	sprite_restore(sprFloor5);
	sprite_restore(sprWall5Out);
	sprite_restore(sprWall5Top);
	sprite_restore(sprDebris5);
	sprite_restore(sprDetail5);
	sprite_restore(sprWall5Bot);
	sprite_restore(sprSodaMachineHurt);
	sprite_restore(sprStreetLightHurt);
	sprite_restore(sprSnowBotCarLift);
	sprite_restore(sprFrozenCar);
	sprite_restore(sprSnowBotCarIdle);
	sprite_restore(sprSnowBotCarWalk);
	sprite_restore(sprSnowBotCarHurt);
	sprite_restore(sprSnowBotCarThrow);
	sprite_restore(sprFrozenCarThrown);
	sprite_restore(sprFrozenCarHurt);
	sprite_restore(sprSnowFlake);
	sprite_restore(sprHydrant);
	sprite_restore(sprHydrantHurt);
	sprite_restore(sprHydrantDead);
	sprite_restore(sprSnowMan);
	sprite_restore(sprSnowManHurt);
	sprite_restore(sprPStat1Idle);
	sprite_restore(sprPStat2Idle);
	sprite_restore(sprSnowManDead);
	sprite_restore(sprPStat1Hurt);
	sprite_restore(sprPStat2Hurt);
	sprite_restore(sprPStatDead);
	sprite_restore(sprSnowManDead);
	sprite_restore(sprSnowBotRedCarLift);
	sprite_restore(sprRainDrop);
	sprite_restore(sprRainDropSlowmo);
	sprite_restore(sprRainSplash);
	sprite_restore(sprBanditBossIdle);
	sprite_restore(sprBanditBossWalk);
	sprite_restore(sprBanditBossFire);
	sprite_restore(sprBanditBossTell);
	sprite_restore(sprBanditBossDash);
	sprite_restore(sprBanditBossStop);
	sprite_restore(sprBanditBossHurt);
	sprite_restore(sprBanditBossDead);
	sprite_restore(sprBossIntro);	
	global.srim = true;
}

with (CustomObject){
	if("UltraChest" in self){
		global.ultrachest_id = id;
		global.ultrachest_x = x;
		global.ultrachest_y = y;
		sprite_index = global.sprUltraChest;
		image_speed = 0;
		depth = 4;
		if("VaultChallange" not in self){
			VaultChallange = true;
			with instance_create(x,y,WepPickup){
				wep = ultra_weapon();
				curse = 1;
				name = "accept @gchallange?@s";
				rotation = 90;
				global.ultraweapon_id = id;
			}
		}
		if("VaultChallange" in self && !place_meeting(x,y,global.ultraweapon_id) && !place_meeting(x,y,Player) && global.ultrachest_frame < 4 && global.challange_accepted == false){
			image_index += 1;
			global.ultrachest_frame = image_index;
			wait(30);
		}
		if(global.ultrachest_frame == 4 && global.challange_accepted == false){
			global.challange_accepted = true;
			with (instance_create(x-10,y-23,InvisiWall)){
				image_xscale = 1.25;
				image_yscale = 1.5;
				}
			for(i = 0; i < 2; i++){
				var next_x      = x + random_range(-500, 500),
					next_y      = y + random_range(-500, 500),
					next_floor  = instance_nearest(next_x, next_y, Floor);
				instance_create(next_floor.x,next_floor.y,CrownGuardian);
				instance_create(next_floor.x,next_floor.y,PortalClear);
				global.amount_of_crown_guardians -= 1;
			}
			global.weapon_deleted = true;
		}
	}
}

/*with(WepPickup){
	if(place_meeting(x,y,global.ultrachest_id) && id != global.ultraweapon_id && global.ultrachest_frame > 2 && global.weapon_deleted == false){
		instance_delete(id);
		global.weapon_deleted = true;
	}
}*/

with(Lightning){
	if(team == 1){
		damage = 5;
	}
}

with (Flame){
	if(team == 1){
		damage = 1;
	}
}

if(global.options.fire_explosions == true){
	
	with instances_matching(Grenade,"sprite_index",sprFlare){
		fireproof = true;
	}
	
	if(instance_exists(Grenade)){
		with (Grenade){
			if("fireproof" not in self){
				if(place_meeting(x,y,Flame) || place_meeting(x,y,FireBall) || place_meeting(x,y,TrapFire)){
					instance_destroy();
				}
			}		
		}
	}
	if(instance_exists(Rocket)){
		with(Rocket){
			if(place_meeting(x,y,Flame) || place_meeting(x,y,FireBall) || place_meeting(x,y,TrapFire)){
				instance_destroy();
			}	
		}
	}
	if(instance_exists(JockRocket)){
		with(JockRocket){
			if(place_meeting(x,y,Flame) || place_meeting(x,y,FireBall) || place_meeting(x,y,TrapFire)){
				instance_destroy();
			}	
		}
	}
	if(instance_exists(PopoRocket)){
		with(PopoRocket){
			if(place_meeting(x,y,Flame) || place_meeting(x,y,FireBall) || place_meeting(x,y,TrapFire)){
				instance_destroy();
			}	
		}
	}
	if(instance_exists(Nuke)){
		with(Nuke){
			if(place_meeting(x,y,Flame) || place_meeting(x,y,FireBall) || place_meeting(x,y,TrapFire)){
				instance_destroy();
			}	
		}
	}
	if(instance_exists(FireBall)){
		with(FireBall){
			if(place_meeting(x,y,Explosion) || place_meeting(x,y,GreenExplosion) || place_meeting(x,y,SmallExplosion) || place_meeting(x,y,PopoExplosion)){
				instance_destroy();
			}
		}
	}
}

if(global.options.hammerhead_time > 0){
	if(GameCont.loops > 0 && global.early_hammerhead_compensation == false){
		if(skill_get(26)){
			GameCont.skillpoints += 1;
		}
		else{
			skill_set(26, 1);
		}
		global.early_hammerhead_compensation = true;
	}
}

if(GameCont.area == 107){
	global.rest_room = true;
	}
	
if(GameCont.area == 100){
	global.last_vault = true;
	}

	/*if(instance_exists(Salamander)){
		with(Salamander){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._salamander == false && global.options.death_effects == true && GameCont.loops > 0){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._salamander = true;
			}
		}
	}*/

if(GameCont.area == 5){
	with(BanditBoss){
		hitid = [sprBanditBossIdle,"Snow Big Bandit"];
		}
	}

if(GameCont.area == 105){
	with(BanditBoss){
		hitid = [sprBanditBossIdle,"Jungle Big Bandit"];
		}
	}

if(skill_get(12)){
	with instances_matching(projectile,"newprojectile",true){
		if("slowed" not in self){
			slowed = true;
			speed -= speed * 0.25;
		}
	}
}

if(skill_get(11)){
	with instances_matching(Inspector,"IDPDTurret",1){
		if("scared" not in self){
			scared = true;
			my_health -= my_health * 0.2;
			maxhealth -= maxhealth * 0.2;
		}
	}
}

//Just in case, i don't know any mods which gives you the possibility to escape the captain office legally (like it's supposed to be escapable) before L3 and which gaves you possibility to eneter HQ on later loops
if(global.cap_spawned == true && GameCont.area == 106 && GameCont.subarea == 3 && instance_exists(Player) && GameCont.loops == 3 && global.cap_dead == false){
	wait 5;
	with(LastIntro){
		instance_destroy();
	}
	instance_delete(Last);
	sound_play_music(musBossDead);
	with(instance_create(Player.x,Player.y,LastExecute)){
		sprite_index = mskNone;
		spr_shadow = mskNone;
		spr_dead = mskNone;
		spr_hurt = mskNone;
		spr_idle = mskNone;
		spr_walk = mskNone;
		snd_dead = none;
		snd_hurt = none;
	}
	with(LastExecute){
		instance_destroy();
	}
	global.cap_dead = true;
	}

with instances_matching(CustomHitme,"oasis_enter_scrapyard",1){
	speed = 0;
	}

if(global.jungle_enabler_spawned == false && instance_exists(Portal) && GameCont.area == 3 && GameCont.subarea == 1 && global.rest_room == false){
	global.jungle_enabler_spawned = true;
	wait 20;
	with(instance_create(10016,10016,CustomHitme)){
		oasis_enter_scrapyard = 1;
		sprite_index = spr_idle;
		spr_idle = global.sprOasisEnterIdle;
		spr_hurt = global.sprOasisEnterHurt;
		spr_dead = global.sprOasisEnterDead;
		spr_shadow = mskNone;
		my_health = 250;
		maxhealth = 250;
		on_step = script_ref_create(enter_to_oasis_step);
		on_hurt = script_ref_create(enter_to_oasis_hurt);
		on_destroy = script_ref_create(enter_to_oasis_destroy);
		friction = 0;
		}
	sound_play(global.sndOasisEnterAppears);
	repeat(9) with(instance_create(10016,10016,Smoke)){
		direction = random(360);
		speed = 3;
	}
	
	repeat(9) instance_create(10016,10016,Debris);
	}

if(GameCont.area == 105 && instance_exists(Car)){
	with(Car){
		if(spr_idle != global.sprJungleCarIdle){
			spr_idle = global.sprJungleCarIdle;
			spr_hurt = global.sprJungleCarHurt;
			}
		}
	}

if(GameCont.area == 1 && global.options.no_new_parcticles == false && global.last_vault == false){
	if(global.snowspawn_controller_created == false){
		with(instance_create(10016,10016,CustomObject)){
			SC = 1;
			}
		global.snowspawn_controller_created = true;
		}
		
	with instances_matching(CustomObject,"SC",1){
	//Time untile spawn snow flake
	if("tussf" not in self){
				tussf = irandom(50);
				}
					tussf -= current_time_scale;
					if(tussf <= 0){
						if(instance_exists(Player)){
							if(global.wind_left = true){
								with(instance_create(Player.x + 350,Player.y + random_range(50, 750),SnowFlake)){
									wave = random_range(-25,25);
									if("rad" not in self){
										sand = true;
										}
									}
								}
							else{
								with(instance_create(Player.x - 350,Player.y + random_range(50, 750),SnowFlake)){
									wave = random_range(-25,25);
									if("rad" not in self){
										sand = true;
										}
									}
								}
							}
						tussf = irandom(50);
					}
	}
}
	
if(GameCont.area == 7 && global.options.no_new_parcticles == false && global.last_vault == false){
	if(global.snowspawn_controller_created == false){
		with(instance_create(10016,10016,CustomObject)){
			RSC = 1;
			}
		global.snowspawn_controller_created = true;
		}
		
	with instances_matching(CustomObject,"RSC",1){
	//Time untile spawn snow flake
	if("tussf" not in self){
				tussf = irandom(100);
				}
					tussf -= current_time_scale;
					if(tussf <= 0){
						if(instance_exists(Player)){
							with(instance_create(Player.x + random_range(-125,125),Player.y+500,SnowFlake)){
								wave = random_range(-25,25);
								if("sand" not in self){
									rad = true;
									}
								}
							}
						tussf = irandom(100);
					}
	}
}

with(SnowFlake){
	if("sand" in self){
		y -= 1;
		
		if(global.abd == true){
			sprite_index = global.sprSandFXnight;
		}
		else{
			sprite_index = global.sprSandFX;
		}
		
		if(global.wind_left = true){
			x -= 3;
		}
		else{
			x += 3;
		}
	}
	if("rad" in self){
		sprite_index = global.sprRadFalke;
		y -= 3;
	}
}
	
if(global.jungle_enabler_spawned == false && instance_exists(Portal) && GameCont.area == 5 && GameCont.subarea == 1 && global.rest_room == false){
	global.jungle_enabler_spawned = true;
	wait 20;
	with(instance_create(10016,10016,CustomObject)){
		name = "ENTER";
		sprite_index = sprBigFlowerIdle;
		on_step = script_ref_create(enter_to_the_jungles_step);
		on_destroy = script_ref_create(enter_to_the_jungles_destroy);
		entered_the_jungles = 0;
		}
	sound_play(sndWallBreakJungle);
	}
	
//Salamander sound fix
if(!instance_exists(Salamander) && audio_is_playing(sndSalamanderFireLoop)){
	sound_stop(sndSalamanderFireLoop);
	}
	
//Tips
if(global.inner_chance_proc == false){
	var r5 = irandom(2);
	global.inner_chance_proc = true;
	}
	
if(instance_exists(Portal)){
	portal_exists();
	}

var r4 = irandom(100);

if(instance_exists(GenCont) && global.options.no_new_tips == false && global.tip_shown == false){

	if(r4 == 1){
		GenCont.tip = "who put plant food in carburator?";
	}
	
	if(r4 == 2){
		GenCont.tip = "gotta get a grip!";
	}
	
	if(r4 == 3){
		GenCont.tip = "life is always getting @rharder...@s";
	}
	
	if(r4 == 4){
		GenCont.tip = "make sure the @rrisk@s is worth it";
	}
	
	if(r4 == 5 && GameCont.crown != crwn_none && global.options.cursing_enabled == true){
		GenCont.tip = "@qthe @p@qc @qu @qr @qs @qe@s is spreading...";
	}
	
	if(r4 == 6 && (GameCont.area == 2 || (GameCont.area == 7 && global.eem <= 0) || (GameCont.loops > 0 && (GameCont.area == 3 || GameCont.area == 4 || (GameCont.area == 6 || GameCont.area == 101 || GameCont.area == 105) && global.eem <= 0)))){
		GenCont.tip = "eat flakes, not flaks";
	}

	if(r4 == 7 && GameCont.seenhq == 1){
		if(global.options.idpd_mashup == true){
			if(GameCont.loops < 4){
				GenCont.tip = "@bIDPD@s @wmay forgive you...@s in some way...";
			}
		}
		else{
			if(GameCont.loops < 3){
				GenCont.tip = "@bIDPD@s @wmay forgive you...@s in some way...";
			}
		}
	}
	
	/*if(r4 == 7){
		GenCont.tip = "zuigerphobia";
	}*/
	
	if(r4 == 8 && Player.race == "venuz" && global.options.fix_venus_car == true){
		GenCont.tip = "they fixed the best @ycar!@s";
	}
	
	if(r4 == 9 && global.options.l5cap != false && global.cap_spawned == false && GameCont.loops == 4){
		GenCont.tip = "@bcaptain@s is waiting for you...";
	}
	
	if(r4 == 10){
		GenCont.tip = "don't get close!";
	}
	
	if(r4 == 11){
		GenCont.tip = "high @bvoltage@s will kill you";
	}
	
	if(r4 == 12 && GameCont.loops > 3 && global.options.death_effects == true){
		GenCont.tip = "@wnecromancers@s are studying from the nature";
	}
	
	if(r4 == 13 && GameCont.loops > 2 && global.options.death_effects == true){
		GenCont.tip = "these @rflowers@s cause @gibs@s";
	}

	if(r4 == 14 && (GameCont.area == 4 || GameCont.area == 104)){
		GenCont.tip = "Generating Cobweb";
	}
	
	/*if(r4 == 14 && Player.wep == wep_ultra_shovel && GameCont.loops > 2){
		GenCont.tip = "swing like belmont";
	}*/
	
	if(global.last_vault == true && GameCont.vaults > 2 && global.options.crown_guardian_on_max == true){
		GenCont.tip = "@gproto guardians@s are now homeless";
	}

	if(r4 == 15 && GameCont.area == 104){
		GenCont.tip = "removing @p@qc@qu@qr@qs@qe@s";
	}
	
	/*if(r4 == 15 && GameCont.loops > 2 && global.options.idpd_mashup == true){
		GenCont.tip = "with progress, tech is mass produced";
	}*/
	
	if(r4 == 16 && GameCont.loops > 0){
		GenCont.tip = "is it not excessive?";
	}
	
	if(r4 == 17 && GameCont.loops > 0){
		GenCont.tip = "your only move is struggle";
	}
	
	if(r4 == 18){
		GenCont.tip = "why's there no nuclear throne 2";
	}

	if(r4 == 19 && global.options.no_jocks == true){
		GenCont.tip = "deleting @bjocks@s";
	}
	
	if(Player.wep == wep_ultra_crossbow && Player.race == "chicken" && global.onetimetip_shown.chicken == false){
		GenCont.tip = "why did the chicken @gultracross@s the road";
		global.onetimetip_shown.chicken = true;
	}
	
	if(r4 == 20 && GameCont.loops > 2){
		GenCont.tip = "not the freaks!";
	}
	
	if(r4 == 21 && (Player.wep == wep_golden_revolver || Player.wep == wep_golden_wrench || Player.wep == wep_golden_machinegun || Player.wep == wep_golden_shotgun || Player.wep == wep_golden_crossbow || Player.wep == wep_golden_grenade_launcher || Player.wep == wep_golden_laser_pistol || Player.wep == wep_golden_plasma_gun || Player.wep == wep_golden_slugger || Player.wep == wep_golden_splinter_gun || Player.wep == wep_golden_screwdriver || Player.wep == wep_golden_bazooka || Player.wep == wep_golden_assault_rifle || Player.wep == wep_golden_nuke_launcher || Player.wep == wep_golden_disc_gun || Player.wep == wep_golden_frog_pistol)){
		GenCont.tip = "you are filled with a sense of @yjuandice@s";
	}
	
	if(r4 == 22 && Player.race == "eyes" && skill_get(mut_throne_butt) == 1){
		GenCont.tip = "2attractive4em";
	}
	
	if(r4 == 23 && Player.wep == wep_laser_cannon && skill_get(mut_laser_brain) == 1){
		GenCont.tip = "ama firin' mah @glasor@s. @qblaaarg!@s";
	}
	
	if(r4 == 24 && Player.race == "skeleton"){
		GenCont.tip = "call an @rambulance@s... but not for me!";
	}
	
	if(r4 == 25 && GameCont.loops > 0 && global.options.death_effects == true){
		GenCont.tip = "amphibian @yheartburn@s";
	}
	
	if(r4 == 26 && GameCont.loops > 0 && global.options.death_effects == true){
		GenCont.tip = "a @wbig surprise@s awaits in the @wsnow@s";
	}
	
	if(r4 == 27 && GameCont.loops > 0 && global.options.death_effects == true){
		GenCont.tip = "the @wrats@s are @gmolting@s";
	}
	
	if(r4 == 28 && GameCont.loops > 1 && global.options.death_effects == true){
		GenCont.tip = "emerjency @wcluster@s ejection";
	}
	
	if(r4 == 29 && GameCont.loops > 1 && global.options.death_effects == true){
		GenCont.tip = "spawning season";
	}

	if(r4 == 30 && GameCont.hard < 10 && global.options.nes == true){
		GenCont.tip = "@bshielder@s jumpscare";
	}

	if(r4 == 31 && (GameCont.area == 5 || GameCont.area == 6 || ((GameCont.area == 7 || GameCont.area == 106) && GameCont.loops == 2)) && global.options.diropf == true && global.eem <= 0){
		GenCont.tip = "@bthey@s will @wsleep...@s @rforever...@s";
	}

	if(r4 == 32 && global.options.idpd_seek == 2 && GameCont.crown != none && global.idpd_noticed_your_weapon == true && GameCont.seenhq == 1 && global.cap_spawned == true){
		GenCont.tip = "@wyou@s are @rpopular@s";
	}

	if(r4 == 33 && global.options.no_new_parcticles == true && global.onetimetip_shown.dof == false){
		GenCont.tip = "@wno@s devouver of @rfps@s?";
		global.onetimetip_shown.dof = true;
	}

	if(r4 == 34 && global.options.no_guards == true){
		GenCont.tip = "@wwhere@s is my @gtarragon@s?";
	}

	if(r4 == 35 && global.options.add_dark == true && GameCont.area == 7){
		GenCont.tip = "you can't see a thing!";
	}

	if(GameCont.area == 7 && GameCont.subarea == 3){
		GenCont.tip = "your voice echoes in here...";
	}

	if(r4 == 36){
		if(global.options.diropf == true){
			if(GameCont.loops > 2){
				GenCont.tip = "@bthe dead@s are @rrestless!@s";
			}
		}
		else{
			if(((GameCont.area == 5 || GameCont.area == 6 || ((GameCont.area == 7 || GameCont.area == 106) && GameCont.loops > 1)) && global.eem <= 0) || (global.options.idpd_mashup == true && GameCont.loops > 1) || GameCont.loops > 2){
				GenCont.tip = "@bthe dead@s are @rrestless!@s";
			}
		}
	}

	if(r4 == 37 && global.options.popups == false){
		GenCont.tip = "did you enable @radblock?@s";
	}

	if(r4 == 38){
		GenCont.tip = "every line of code written with love";
	}

	if(r4 == 39 && GameCont.area == 7 && GameCont.subarea == 1){
		GenCont.tip = "you feel a burst of excitement!";
	}

	if(r4 == 40 && Player.wep = wep_party_gun){
		GenCont.tip = "you feel strangely at peace";
	}

	if(r4 == 41 && Player.chickendeaths > 0){
		GenCont.tip = "why i am @wfelling@s @rhunger?@s";
	}

	if(r4 == 42 && global.options.rmb == true){
		GenCont.tip = "could be here a crawlspace?";
	}

	if(r4 == 43 && global.options.rmb == true && Player.wep == 44){
		GenCont.tip = "i wish there would be a @ygolden bomb@s. @woh. wait.@s";
	}

	if(r4 == 44 && global.options.rmb == true){
		GenCont.tip = "@wkeep your eyes@s buttered till the end";
	}
	
	//r4 > 44 && r4 < 49
	
	if(r4 > 49 && r5 == 1 && (GameCont.area == 1 || GameCont.area == 3) && global.eem <= 0){
		GenCont.tip = "@wsalamanders@s love the sun";
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.area == 1 && GameCont.loops > 0 && global.options.death_effects == true){
		GenCont.tip = "@wthe flies@s are getting louder";
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.area == 2 && global.eem <= 0){
		GenCont.tip = "the gun godz cameo we deserve";
	}
	
	if(r4 > 49 && r5 == 1 && GameCont.area == 104 && global.options.cursed_caves_rework == true){
		GenCont.tip = "floor here is made out of @p@qc @qu @qr @qs @qe @qs@s";
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.area == 104){
		GenCont.tip = "@ppurple@s suits you better~";
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.subarea == 1 && GameCont.area == 3 && global.options.fix_venus_car == true){
		GenCont.tip = "@wmolefish@s forgot to close the @ycar@s";
	}
	
	if(r4 > 49 && r5 == 1 && GameCont.area == 7 && global.options.add_dark == true){
		GenCont.tip = "it's @pdark@s with no lamps or windows";
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.area == 7){
		GenCont.tip = "power of @gplutonium@s shines within you!";
	}
	
	if(r4 > 49 && r5 == 1 && GameCont.area == 5 && GameCont.subarea == 1){
		GenCont.tip = "the jungle grows relentless...";
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.area == 5 && global.onetimetip_shown.sans == false){
		GenCont.tip = "hey. is your refrigerator running?";
		global.onetimetip_shown.sans = true;
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.area == 105){
		GenCont.tip = "28 years in that godforsaken jungle...";
	}
	
	if(r4 > 49 && r5 == 1 && GameCont.area == 105){
		GenCont.tip = "birds are singing, flowers are blooming";
	}
	
	if(r4 > 49 && r5 == 1 && GameCont.area == 103 && GameCont.loops < 3 && GameCont.loops > 0 && global.options.enemies_mutations == true){
		GenCont.tip = "even @wrockets@s are @ygold!@s";
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.area == 103 && GameCont.loops > 2 && global.options.enemies_mutations == true){
		GenCont.tip = "even @wdisks@s are @ygold?!@s";
	}
	
	if(r4 > 49 && r5 == 1 && GameCont.area == 102){
		GenCont.tip = "pizza time!";
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.area == 102){
		GenCont.tip = "you hear the sounds of @grevelry!@s";
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.area == 101){
		GenCont.tip = "it's on the house";
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.area == 6 && GameCont.loops > 1){
		GenCont.tip = "they're practicing gemmation";
	}
	
	if(r4 > 49 && r5 == 2 && GameCont.area == 6 && GameCont.loops > 2){
		GenCont.tip = "ever tried mitosis? you'd better now";
	}
	
	if(GameCont.area == 106 && GameCont.subarea == 3 && GameCont.loops < 2){
		GenCont.tip = "one way ticket";
	}
	
	if(global.cap_dead == false && ((GameCont.area == 106 && GameCont.subarea == 3 && GameCont.loops > 1) || (GameCont.area == 0 && GameCont.subarea == 1 && GameCont.loops > 4))){
		GenCont.tip = "last remote";
	}
	global.tip_shown = true;
}

if(instance_exists(BigMaggot)){
	if(GameCont.area != 1  && GameCont.area != 101 && GameCont.area != 105 && GameCont.area != 0 && GameCont.area != "banditcamp" && GameCont.area != "jungle" && GameCont.area != "night_desert" && GameCont.area != "oasis" && GameCont.area != "scorpionboss" && GameCont.area != "coast"){
		with(BigMaggot){
			if(alarm1 != -1){
				alarm1 = -1;
			}
		}
	}
	else{
		with(BigMaggot){
			if(alarm1 == -1){
				alarm1 = 1;
			}
		}
	}
}
		
//Horror taunting
if(!instance_exists(Player) && instance_exists(EnemyHorror) && global.horror_taunted == false){
	global.horror_taunted = true;
	wait 20;
	sound_play(sndMutant11Thrn);
	}

//Changing sprites
if(GameCont.area == 5){
	with(Sniper){
		spr_idle = global.SnowSniperIdle;
		spr_walk = global.SnowSniperWalk;
		spr_hurt = global.SnowSniperHurt;
		spr_dead = global.SnowSniperDead;
		hitid = global.SnowSniperHitid;
		}
	}
	
if(GameCont.area == 105){
	with(Sniper){
		spr_idle = global.sprJungleSniperIdle;
		spr_walk = global.sprJungleSniperWalk;
		spr_hurt = global.sprJungleSniperHurt;
		spr_dead = global.sprJungleSniperDead;
		hitid = global.JungleSniperHitid;
		}
	}

	
if(global.abd == true && GameCont.area == 1 && global.sprites_swapped == false && instance_exists(BackCont)){
	sprite_replace(sprBigSkull,"resources/Areas/NightDesert/sprBigSkull_strip1.png",1);
	sprite_replace(sprBigSkullOpen,"resources/Areas/NightDesert/sprBigSkullOpen_strip1.png",1);
	sprite_replace(sprBigSkullHurt,"resources/Areas/NightDesert/sprBigSkullHurt_strip3.png",3);
	sprite_replace(sprBigSkullOpenHurt,"resources/Areas/NightDesert/sprBigSkullOpenHurt_strip3.png",3);
	sprite_replace(sprBigSkullDead,"resources/Areas/NightDesert/sprBigSkullDead_strip3.png",3);
	sprite_replace(sprBonePileIdle,"resources/Areas/NightDesert/sprBonePileIdle_strip1.png",1);
	sprite_replace(sprBonePileHurt,"resources/Areas/NightDesert/sprBonePileHurt_strip3.png",3);
	sprite_replace(sprBonePileDead,"resources/Areas/NightDesert/sprBonePileDead_strip4.png",3);
	sprite_replace(sprBones,"resources/Areas/NightDesert/sprBones_strip2.png",2);
	sprite_replace(sprCactus,"resources/Areas/NightDesert/sprCactus_strip1.png",1);
	sprite_replace(sprCactusHurt,"resources/Areas/NightDesert/sprCactusHurt_strip3.png",3);
	sprite_replace(sprCactusDead,"resources/Areas/NightDesert/sprCactusDead_strip4.png",4);
	sprite_replace(sprCactus2,"resources/Areas/NightDesert/sprCactus2_strip1.png",1);
	sprite_replace(sprCactus2Hurt,"resources/Areas/NightDesert/sprCactus2Hurt_strip3.png",3);
	sprite_replace(sprCactus2Dead,"resources/Areas/NightDesert/sprCactus2Dead_strip4.png",4);
	sprite_replace(sprCactus3,"resources/Areas/NightDesert/sprCactus3_strip1.png",1);
	sprite_replace(sprCactus3Hurt,"resources/Areas/NightDesert/sprCactus3Hurt_strip3.png",3);
	sprite_replace(sprCactus3Dead,"resources/Areas/NightDesert/sprCactus3Dead_strip4.png",4);
	sprite_replace(sprCactusB,"resources/Areas/NightDesert/sprCactusB_strip1.png",1);
	sprite_replace(sprCactusBHurt,"resources/Areas/NightDesert/sprCactusBHurt_strip3.png",3);
	sprite_replace(sprCactusBDead,"resources/Areas/NightDesert/sprCactusBDead_strip4.png",4);
	sprite_replace(sprCactusB2,"resources/Areas/NightDesert/sprCactusB2_strip1.png",1);
	sprite_replace(sprCactusB2Hurt,"resources/Areas/NightDesert/sprCactusB2Hurt_strip3.png",3);
	sprite_replace(sprCactusB2Dead,"resources/Areas/NightDesert/sprCactusB2Dead_strip4.png",4);
	sprite_replace(sprCactusB3,"resources/Areas/NightDesert/sprCactusB3_strip1.png",1);
	sprite_replace(sprCactusB3Hurt,"resources/Areas/NightDesert/sprCactusB3Hurt_strip3.png",3);
	sprite_replace(sprCactusB3Dead,"resources/Areas/NightDesert/sprCactusB3Dead_strip4.png",4);
	sprite_replace(sprDebris1,"resources/Areas/NightDesert/sprDebris0_strip4.png",4);
	sprite_replace(sprDesertTopDecal,"resources/Areas/NightDesert/sprDesertTopDecal_strip3.png",3);
	sprite_replace(sprDetail1,"resources/Areas/NightDesert/sprDetail0_strip5.png",5);
	sprite_replace(sprFloor1,"resources/Areas/NightDesert/sprFloor1_strip4.png",4);
	sprite_replace(sprFloor1Explo,"resources/Areas/NightDesert/sprWall0Explo_strip4.png",4);
	sprite_replace(sprFloor1B,"resources/Areas/NightDesert/sprFloor1B_strip4.png",4);
	sprite_replace(sprMSpawnIdle,"resources/Areas/NightDesert/sprMSpawnIdle_strip4.png",4);
	sprite_replace(sprMSpawnDead,"resources/Areas/NightDesert/sprMSpawnDead_strip2.png",2);
	sprite_replace(sprMSpawnHurt,"resources/Areas/NightDesert/sprMSpawnHurt_strip3.png",3);
	sprite_replace(sprMSpawnChrg,"resources/Areas/NightDesert/sprMSpawnChrg_strip4.png",4);
	sprite_replace(sprWall1Bot,"resources/Areas/NightDesert/sprWall0Bot_strip4.png",4);
	sprite_replace(sprWall1Out,"resources/Areas/NightDesert/sprWall0Out_strip1.png",1);
	sprite_replace(sprWall1Top,"resources/Areas/NightDesert/sprWall0Top_strip8.png",8);
	sprite_replace(sprWall1Trans,"resources/Areas/NightDesert/sprWall0Trans_strip8.png",8);
	sprite_replace(sprWind,"resources/Areas/NightDesert/sprWind_strip9.png",9);
	sprite_replace(sprFloor5B,"resources/Areas/NightCity/sprFloor5B.png",8);
	sprite_replace(sprSnowFlake,"resources/Areas/NightCity/sprSnowFlake.png",3);
	sprite_replace(sprSnowBotCarLift,"resources/Areas/NightCity/sprSnowBotCarLift.png",4);
	sprite_replace(sprFrozenCar,"resources/Areas/NightCity/sprFrozenCar.png",1);
	sprite_replace(sprSnowBotCarIdle,"resources/Areas/NightCity/sprSnowBotCarIdle.png",6);
	sprite_replace(sprSnowBotCarWalk,"resources/Areas/NightCity/sprSnowBotCarWalk.png",8);
	sprite_replace(sprSnowBotCarHurt,"resources/Areas/NightCity/sprSnowBotCarHurt.png",3);
	sprite_replace(sprSnowBotCarThrow,"resources/Areas/NightCity/sprSnowBotCarThrow.png",5);
	sprite_replace(sprFrozenCarThrown,"resources/Areas/NightCity/sprFrozenCarThrown.png",6);
	sprite_replace(sprFrozenCarHurt,"resources/Areas/NightCity/sprFrozenCarHurt.png",3);
	sprite_replace(sprPStat1Idle,"resources/Areas/Night/sprPStat1Idle.png",1);
	sprite_replace(sprPStat1Hurt,"resources/Areas/Night/sprPStat1Hurt.png",3);
	sprite_replace(sprPStat2Idle,"resources/Areas/Night/sprPStat2Idle.png",1);
	sprite_replace(sprPStat2Hurt,"resources/Areas/Night/sprPStat2Hurt.png",3);
	sprite_replace(sprPStatDead,"resources/Areas/Night/sprPStatDead.png",3);
	sprite_replace(sprCarIdle,"resources/Areas/NightScrapyard/sprCarIdleNight.png",1);
	sprite_replace(sprCarHurt,"resources/Areas/NightScrapyard/sprCarHurtNight.png",3);
	background_color = make_color_rgb(106, 122, 175);
	BackCont.shadcol = c_black;
	TopCont.fog = sprFog2;
	global.sprites_swapped = true;
	}


if(global.abd == true && GameCont.area == 3 && global.sprites_swapped == false && instance_exists(BackCont)){
	sprite_replace(sprTires,"resources/Areas/NightScrapyard/sprTires.png",1);
	sprite_replace(sprTiresDead,"resources/Areas/NightScrapyard/sprTiresDead.png",3);
	sprite_replace(sprTiresHurt,"resources/Areas/NightScrapyard/sprTiresHurt.png",3);
	sprite_replace(sprTopDecalScrapyard,"resources/Areas/NightScrapyard/sprTopDecalScrapyard.png",3);
	sprite_replace(sprFloor3,"resources/Areas/NightScrapyard/sprFloor3_strip4.png",4);
	sprite_replace(sprFloor3B,"resources/Areas/NightScrapyard/sprFloor3B_strip4.png",3);
	sprite_replace(sprWall3Out,"resources/Areas/NightScrapyard/sprWall3Out.png",3);
	sprite_replace(sprDetail3,"resources/Areas/NightScrapyard/sprDetail3_strip5.png",5);
	sprite_replace(sprWall3Bot,"resources/Areas/NightScrapyard/sprWall3Bot_strip4.png",4);
	sprite_replace(sprWall3Trans,"resources/Areas/NightScrapyard/sprWall3Trans_strip8.png",3);
	sprite_replace(sprWall3Top,"resources/Areas/NightScrapyard/sprWall3Top_strip8.png",4);
	sprite_replace(sprFloor3Explo,"resources/Areas/NightScrapyard/sprFloor3Explo_strip4.png",4);
	sprite_replace(sprDebris3,"resources/Areas/NightScrapyard/sprDebris3_strip4.png",4);
	sprite_replace(bak3,"resources/Areas/NightScrapyard/bak3.png",1);
	sprite_replace(sprCarIdle,"resources/Areas/NightScrapyard/sprCarIdleNight.png",1);
	sprite_replace(sprCarHurt,"resources/Areas/NightScrapyard/sprCarHurtNight.png",3);
	sprite_replace(sprCarThrown,"resources/Areas/NightScrapyard/sprCarThrown.png",6);
	sprite_replace(sprSnowBotRedCarIdle,"resources/Areas/NightScrapyard/sprSnowBotRedCarIdle.png",6);
	sprite_replace(sprSnowBotRedCarLift,"resources/Areas/NightScrapyard/sprSnowBotRedCarLift.png",4);
	sprite_replace(sprSnowBotRedCarWalk,"resources/Areas/NightScrapyard/sprSnowBotRedCarWalk.png",8);
	sprite_replace(sprSnowBotRedCarHurt,"resources/Areas/NightScrapyard/sprSnowBotRedCarHurt.png",3);
	sprite_replace(sprSnowBotRedCarThrow,"resources/Areas/NightScrapyard/sprSnowBotRedCarThrow.png",5);
	sprite_replace(sprTrap,"resources/Areas/NightScrapyard/sprTrap.png",1);
	sprite_replace(sprTrapGameover,"resources/Areas/NightScrapyard/sprTrapGameover.png",1);
	sprite_replace(sprTrapScorchMark,"resources/Areas/NightScrapyard/sprTrapScorchMark.png",1);
	sprite_replace(sprScrapDecal,"resources/Areas/NightScrapyard/sprScrapDecal.png",2);
	sprite_replace(sprWind,"resources/Areas/NightDesert/sprWind_strip9.png",9);
	sprite_replace(sprFloor5B,"resources/Areas/NightCity/sprFloor5B.png",8);
	sprite_replace(sprSnowFlake,"resources/Areas/NightCity/sprSnowFlake.png",3);
	sprite_replace(sprSnowBotCarLift,"resources/Areas/NightCity/sprSnowBotCarLift.png",4);
	sprite_replace(sprFrozenCar,"resources/Areas/NightCity/sprFrozenCar.png",1);
	sprite_replace(sprSnowBotCarIdle,"resources/Areas/NightCity/sprSnowBotCarIdle.png",6);
	sprite_replace(sprSnowBotCarWalk,"resources/Areas/NightCity/sprSnowBotCarWalk.png",8);
	sprite_replace(sprSnowBotCarHurt,"resources/Areas/NightCity/sprSnowBotCarHurt.png",3);
	sprite_replace(sprSnowBotCarThrow,"resources/Areas/NightCity/sprSnowBotCarThrow.png",5);
	sprite_replace(sprFrozenCarThrown,"resources/Areas/NightCity/sprFrozenCarThrown.png",6);
	sprite_replace(sprFrozenCarHurt,"resources/Areas/NightCity/sprFrozenCarHurt.png",3);
	sprite_replace(sprPStat1Idle,"resources/Areas/Night/sprPStat1Idle.png",1);
	sprite_replace(sprPStat1Hurt,"resources/Areas/Night/sprPStat1Hurt.png",3);
	sprite_replace(sprPStat2Idle,"resources/Areas/Night/sprPStat2Idle.png",1);
	sprite_replace(sprPStat2Hurt,"resources/Areas/Night/sprPStat2Hurt.png",3);
	sprite_replace(sprPStatDead,"resources/Areas/Night/sprPStatDead.png",3);
	//background_color = make_color_rgb(51, 57, 71);
	background_color = make_color_rgb(40, 43, 91);
	BackCont.shadcol = c_black;
	TopCont.fog = sprFog2;
	global.sprites_swapped = true;
	sprite_replace(sprRainDrop,"resources/Areas/NightScrapyard/sprRainDrop.png",1);
	sprite_replace(sprRainDropSlowmo,"resources/Areas/NightScrapyard/sprRainDropSlowmo.png",1);
	sprite_replace(sprRainSplash,"resources/Areas/NightScrapyard/sprRainSplash.png",3);
	}
	
if(global.abd == true && GameCont.area == 5 && global.sprites_swapped == false && instance_exists(BackCont)){
	sprite_replace(sprSodaMachine,"resources/Areas/NightCity/sprSodaMachine.png",1);
	sprite_replace(sprStreetLight,"resources/Areas/NightCity/sprStreetLight.png",1);
	sprite_replace(sprIcicle,"resources/Areas/NightCity/sprIcicle.png",1);
	sprite_replace(sprWall5Trans,"resources/Areas/NightCity/sprWall5Trans.png",1);
	sprite_replace(sprTopDecalCity,"resources/Areas/NightCity/sprTopDecalCity.png",3);
	sprite_replace(sprIceDecal,"resources/Areas/NightCity/sprIceDecal.png",2);
	sprite_replace(sprIcicleDead,"resources/Areas/NightCity/sprIcicleDead.png",4);
	sprite_replace(sprIcicleHurt,"resources/Areas/NightCity/sprIcicleHurt.png",3);
	sprite_replace(sprSodaMachineDead,"resources/Areas/NightCity/sprSodaMachineDead.png",3);
	sprite_replace(sprSodaCan,"resources/Areas/NightCity/sprSodaCan.png",3);
	sprite_replace(sprStreetLightDead,"resources/Areas/NightCity/sprStreetLightDead.png",3);
	sprite_replace(sprFloor5B,"resources/Areas/NightCity/sprFloor5B.png",8);
	sprite_replace(sprFloor5Explo,"resources/Areas/NightCity/sprFloor5Explo.png",4);
	sprite_replace(sprFloor5,"resources/Areas/NightCity/sprFloor5.png",8);
	sprite_replace(sprWall5Out,"resources/Areas/NightCity/sprWall5Out.png",2);
	sprite_replace(sprWall5Top,"resources/Areas/NightCity/sprWall5Top.png",4);
	sprite_replace(sprDebris5,"resources/Areas/NightCity/sprDebris5.png",4);
	sprite_replace(sprDetail5,"resources/Areas/NightCity/sprDetail5.png",3);
	sprite_replace(sprWall5Bot,"resources/Areas/NightCity/sprWall5Bot.png",3);
	sprite_replace(sprSodaMachineHurt,"resources/Areas/NightCity/sprSodaMachineHurt.png",3);
	sprite_replace(sprStreetLightHurt,"resources/Areas/NightCity/sprStreetLightHurt.png",3);
	sprite_replace(sprSnowBotCarLift,"resources/Areas/NightCity/sprSnowBotCarLift.png",4);
	sprite_replace(sprFrozenCar,"resources/Areas/NightCity/sprFrozenCar.png",1);
	sprite_replace(sprSnowBotCarIdle,"resources/Areas/NightCity/sprSnowBotCarIdle.png",6);
	sprite_replace(sprSnowBotCarWalk,"resources/Areas/NightCity/sprSnowBotCarWalk.png",8);
	sprite_replace(sprSnowBotCarHurt,"resources/Areas/NightCity/sprSnowBotCarHurt.png",3);
	sprite_replace(sprSnowBotCarThrow,"resources/Areas/NightCity/sprSnowBotCarThrow.png",5);
	sprite_replace(sprFrozenCarThrown,"resources/Areas/NightCity/sprFrozenCarThrown.png",6);
	sprite_replace(sprFrozenCarHurt,"resources/Areas/NightCity/sprFrozenCarHurt.png",3);
	sprite_replace(sprSnowFlake,"resources/Areas/NightCity/sprSnowFlake.png",3);
	sprite_replace(sprHydrant,"resources/Areas/NightCity/sprHydrant.png",1);
	sprite_replace(sprHydrantHurt,"resources/Areas/NightCity/sprHydrantHurt.png",3);
	sprite_replace(sprHydrantDead,"resources/Areas/NightCity/sprHydrantDead.png",3);
	sprite_replace(sprSnowMan,"resources/Areas/NightCity/sprSnowMan.png",1);
	sprite_replace(sprSnowManHurt,"resources/Areas/NightCity/sprSnowManHurt.png",3);
	sprite_replace(sprSnowManDead,"resources/Areas/NightCity/sprSnowManDead.png",3);
	sprite_replace(sprWind,"resources/Areas/NightDesert/sprWind_strip9.png",9);
	sprite_replace(sprSnowFlake,"resources/Areas/NightCity/sprSnowFlake.png",3);
	sprite_replace(sprPStat1Idle,"resources/Areas/Night/sprPStat1Idle.png",1);
	sprite_replace(sprPStat1Hurt,"resources/Areas/Night/sprPStat1Hurt.png",3);
	sprite_replace(sprPStat2Idle,"resources/Areas/Night/sprPStat2Idle.png",1);
	sprite_replace(sprPStat2Hurt,"resources/Areas/Night/sprPStat2Hurt.png",3);
	sprite_replace(sprPStatDead,"resources/Areas/Night/sprPStatDead.png",3);	
	background_color = make_color_rgb(59, 55, 124);
	BackCont.shadcol = c_black;
	TopCont.fog = sprFog2;
	global.sprites_swapped = true;
	}


if(GameCont.area == 106 && GameCont.subarea = 3){
	with(Van){
		freak = 0;
		}
	}

if(GameCont.loops > 0 && global.options.enemies_mutations == true){

	if(instance_exists(Gator) || instance_exists(BuffGator)){
		with (Gator) {
			gator_tp()
		}
		with (BuffGator) {
			gator_tp()
		}
	}

}
	
if(GameCont.loops > 2 && global.options.enemies_mutations == true){	
	with instances_matching(JockRocket,"hitid",98){
		instance_change(Wind,false);
		with(instance_create(x,y,Disc)){
			newprojectile = true;
			sprite_index = sprGoldDisc;
			if(instance_exists(Player)){
				target = instance_nearest(x,y,Player);
				}
			else{
			target = 0;
			}

			if target > 0{
				if random(50)<1
				motion_add(direction+choose(-90,90),3)
			if speed > random(6)
				speed = 8
			motion_add(point_direction(x,y,target.x,target.y),8);
			image_angle = direction;
			}
		}
	}
	
	with instances_matching(EnemyBullet4,"hitid",98){
		instance_change(LHBouncer,true);
		newprojectile = true;
		speed = 4;
		team = 1;
		hitid = 98;
	}
	
	with instances_matching(EnemyBullet4,"hitid",17){
		instance_change(LHBouncer,true);
		newprojectile = true;
		speed = 4;
		team = 1;
		hitid = 17;
	}
	
	with instances_matching(EnemyBullet4,"hitid",26){
		instance_change(LHBouncer,true);
		newprojectile = true;
		speed = 4;
		team = 1;
		hitid = 26;
	}
	
	with instances_matching(EnemyBullet4,"hitid",global.SnowSniperHitid){
		instance_change(LHBouncer,true);
		newprojectile = true;
		speed = 4;
		team = 1;
		hitid = global.SnowSniperHitid;
	}
	
	with instances_matching(EnemyBullet4,"hitid",global.JungleSniperHitid){
		instance_change(LHBouncer,true);
		newprojectile = true;
		speed = 4;
		team = 1;
		hitid = global.JungleSniperHitid;
	}
}

if(global.iattbd == false){
	if(irandom(4) < 1 && global.options.add_dark == true && (GameCont.area == 1 || GameCont.area == 3 || GameCont.area == 5 || GameCont.area == 103)){
		global.iattbd = true;
		TopCont.darkness = 1;
		if(GameCont.area == 1){
			sound_play_music(mus1b);
			}
		if(GameCont.area == 3){
			sound_play_music(mus3b);
			}
		if(GameCont.area == 5){
			sound_play_music(mus5b);
			}
		global.abd = true;
	}
	else{
		global.iattbd = true;
	}
}
	
if(instance_exists(Last) && !audio_is_playing(musBoss8)){
	sound_play_music(musBoss8);
	}
	
if(instance_exists(CrownGuardian) && global.music_for_bosses == false && GameCont.area != 100){
	sound_play_music(mus100b);
	global.music_for_bosses = true;
	}
	
if(instance_exists(BanditBoss) && global.music_for_bosses == false && GameCont.area != 1){
	sound_play_music(musBoss1);
	global.music_for_bosses = true;
	}

//Makes IDPD seek the player if he holds IDPD Weapon
with (Player){
		if((wep == wep_hyper_rifle || wep == wep_hyper_launcher || wep == wep_hyper_slugger || (wep == wep_rogue_rifle && race != "rogue")) && global.idpd_noticed_your_weapon == false && global.options.idpd_seek == 2){
			global.idpd_noticed_your_weapon = true;
			instance_create(0,0,WantPopo);
			}
	}	

//Makes weapons cursed in cursed crystal caves
if(GameCont.area == 104 && global.options.cursed_caves_rework == true){
	with(WepPickup){
		curse = 1;
	}
	if(global.ccc == false && GameCont.loops > 0){
	global.ccc = true;
	}
}

//Uncurse your weapons after exiting cursed crystal caves on L1+ 
if(GameCont.area != 104 && global.ccc == true){
	with (Player){
		if(curse > 0 || bcurse > 0 || (curse > 0 && bcurse > 0)){
		global.ccc = false;
		curse = 0;
		bcurse = 0;
		sound_play(sndUncurse);
		}
	}
}
		
//Death effects
if (global.options.death_effects == true) {
	if(GameCont.loops > 0){

		with(JungleFly){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 12;
			}
		}

		with(Salamander){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 12;
			}
		}

		with(Molefish){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 1;
			}
		}
		
		with instances_matching(Corpse,"sprite_index",sprRatDead){
			rat_death();
			instance_destroy();
		}
		
		with instances_matching(Corpse,"sprite_index",sprSnowManDead){
			snowman_death();
			instance_destroy();
		}
		
	}
	
	if (GameCont.loops > 1) {

		with(Jock){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 6;
			}
		}

		with(TechnoMancer){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 48;
			}
		}

		with(CrownGuardian){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 12;
			}
		}

		with(Van){
			if("death_effect" not in self){
				death_effect = true;
			}
		}

		with(Bandit){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 1;
			}
		}

		with(Wolf){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 3;
			}
		}

		with(Molesarge){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 3;
			}
		}

		with(OasisBoss){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 24;
			}
		}

		with(Grunt){
			if("death_effect" not in self){
				death_effect = true;
			}
		}

		with(Inspector){
			if("death_effect" not in self){
				death_effect = true;
			}
		}

		with(Last){
			if("death_effect" not in self){
				death_effect = true;
			}
		}
	}
	
	if (GameCont.loops > 2) {

		with(DogGuardian){
			if("death_effect" not in self){
				if(irandom(2) < 1){
					death_effect = true;
					raddrop += 24;
				}
				else{
					death_effect = false;
				}
			}
		}

		with(Turret){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 6;
			}
		}

		with(ExploGuardian){
			if("death_effect" not in self){
				if(irandom(5) < 1){
					death_effect = true;
				}
				else{
					death_effect = false;
				}
			}
		}

		with(JungleBandit){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 3;
			}
		}

		with(JungleAssassin){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 3;
			}
		}
		
		/*if(GameCont.area == 105){
			with instances_matching_le(BanditBoss,"my_health", 0) {
				instance_create(x,y,ToxicDelay);
				sound_play(sndToxicBoltGas);
				instance_create(x + irandom(20),y + irandom(20),Rad);
				instance_create(x + irandom(20),y + irandom(20),Rad);
				instance_create(x + irandom(20),y + irandom(20),BigRad);
				}
			}*/

		with(EliteGrunt){
			if("death_effect" not in self){
				death_effect = true;
			}
		}
	}
	
	if (GameCont.loops > 3) {

		with(LightningCrystal){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 12;
			}
		}

		with(Necromancer){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 6;
			}
		}
	
		with instances_matching_le(instances_matching(Necromancer,"death_effect",true), "my_health", 0) {
			with(instance_create(x,y,CustomObject)){
				//Necromancer will revive
				nwr = 1;
			}
		}
		
		with(instances_matching(Corpse, "sprite_index", sprNecromancerDead)){
			speed = 0;
		}
				
		if(!instance_exists(Portal)){
			with(instances_matching(CustomObject, "nwr", 1)){
				if("augh_imDead" not in self){
					augh_imDead = 1800;
			}
				augh_imDead -= current_time_scale;
				if(augh_imDead <= 0){
					instance_create(x, y, NecroReviveArea);
					augh_imDead = 1800;
					sound_play(sndNecromancerRevive);
					instance_destroy();
					}
				}
			}
	}
}

with instances_matching_le(instances_matching(JungleFly,"death_effect",true), "my_health", 0) {
			instance_create(x,y,MaggotExplosion);
		}

with instances_matching_le(instances_matching(Salamander,"death_effect",true), "my_health", 0) {
			salamander_death();
		}

with instances_matching_le(instances_matching(Molefish,"death_effect",true), "my_health", 0) {
			molefish_death();
			sound_play(sndMolefishFire);
		}

with instances_matching_le(instances_matching(Jock,"death_effect",true), "my_health", 0) {
			instance_create(x,y,Explosion);
			sound_play(sndExplosion);
		}

with instances_matching_le(instances_matching(TechnoMancer,"death_effect",true), "my_health", 0) {
			techno_mancer_death();
			sound_play(sndClusterLauncher);
		}

with instances_matching_le(instances_matching(CrownGuardian,"death_effect",true), "my_health", 0) {
			crown_guardian_death();
			sound_play(sndNothing2Ball);
		}

with instances_matching_le(instances_matching(Van,"death_effect",true), "my_health", 0) {
			instance_create(x,y,RogueStrike);
		}

with instances_matching_le(instances_matching(Bandit,"death_effect",true), "my_health", 0) {
			bandit_death();
			sound_play(sndEnemyFire);
		}

with instances_matching_le(instances_matching(Wolf,"death_effect",true), "my_health", 0) {
			wolf_death();
			sound_play(sndEnemyFire);
		}

with instances_matching_le(instances_matching(Molesarge,"death_effect",true), "my_health", 0) {
			molesarge_death();
			sound_play(sndMolesargeFire);
		}

with instances_matching_le(instances_matching(OasisBoss,"death_effect",true), "my_health", 0) {
			repeat (5) instance_create(x + irandom(20),y + irandom(20),BoneFish);
		}

with instances_matching_le(instances_matching(Grunt,"death_effect",true), "my_health", 0) {
			grunt_death();
			sound_play(sndRogueRifle)
		}

with instances_matching_le(instances_matching(Inspector,"death_effect",true), "my_health", 0) {
			inspector_death();
			sound_play(sndRogueRifle);
		}

with instances_matching_le(instances_matching(Last,"death_effect",true), "my_health", 0) {
			instance_create(0,0,VanSpawn);
			global.cap_spawned = true;
		}

with instances_matching_le(instances_matching(DogGuardian,"death_effect",true), "my_health", 0) {
			dog_guardian_death();
		}

with instances_matching_le(instances_matching(Turret,"death_effect",true), "my_health", 0) {
			instance_create(x,y,Explosion);
			sound_play(sndExplosion);
		}

with instances_matching_le(instances_matching(ExploGuardian,"death_effect",true), "my_health", 0) {
			explo_guardian_death();
			sound_play(sndUltraGrenade);
		}

with instances_matching_le(instances_matching(JungleBandit,"death_effect",true), "my_health", 0) {
			repeat (3) instance_create(x,y,ToxicGas);
			sound_play(sndToxicBoltGas);
		}

with instances_matching_le(instances_matching(JungleAssassin,"death_effect",true), "my_health", 0) {
			repeat (3) instance_create(x,y,ToxicGas);
			sound_play(sndToxicBoltGas);
		}

with instances_matching_le(instances_matching(EliteGrunt,"death_effect",true), "my_health", 0) {
			elite_grunt_death();
		}

with instances_matching_le(instances_matching(LightningCrystal,"death_effect",true), "my_health", 0) {
			lightning_crystal_death();
		}

if(GameCont.area == 102 || GameCont.area == "pizza" || GameCont.area == "turtles"){
	with(HealthChest){
		sprite_index = sprPizzaChest1;
		spr_dead = sprPizzaChestOpen;
		}
	}

//No IDPD Portals for Captain
if(GameCont.area == 106 && GameCont.subarea == 3){
	global.no_idpd_for_cap = true;
}

//Disabling Darkness when Throne 2 appears
if(instance_exists(Nothing2)){
	TopCont.darkness = 0;
	global.throne2_spawned = true;
}

if(global.options.idpd_mashup == true){
	if((GameCont.area != 0 && GameCont.loops == 2) || (GameCont.area == 0 && GameCont.loops == 3)){

		if(instance_exists(IDPDSpawn)){
			with(IDPDSpawn){ 
				if(random(3) < 1){
					if("chancerolled" not in self){
						chancerolled = true;
						freak = 1;
					}
				}
				else{
					if("chancerolled" not in self){
						chancerolled = true;
					}
				}
			}
		}
	
		if(instance_exists(Van)){
			with(Van){ 
				if(random(3) < 1){
					if("chancerolled" not in self){
						chancerolled = true;
						freak = 1;
					}
				}
				else{
					if("chancerolled" not in self){
						chancerolled = true;
					}
				}
			}
		}
	}

	if((GameCont.area != 0 && GameCont.loops == 3) || (GameCont.area == 0 && GameCont.loops == 4)){

		if(instance_exists(IDPDSpawn)){
			with(IDPDSpawn){ 
				if(random(2) < 1){
					if("chancerolled" not in self){
						chancerolled = true;
						freak = 0;
						elite = 1;
					}
				}
				else{
					if("chancerolled" not in self){
						chancerolled = true;
					}
				}
			}
		}
	
		if(instance_exists(Van)){
			with(Van){ 
				if(random(2) < 1){
					if("chancerolled" not in self){
						chancerolled = true;
						freak = 0;
					}
				}
				else{
					if("chancerolled" not in self){
						chancerolled = true;
					}
				}
			}
		}
	}
}

//QOL thing. When musBossDead playing and next area will be same b theme will play
if((audio_is_playing(sndPortalLightning1) || audio_is_playing(sndPortalLightning2) || audio_is_playing(sndPortalLightning3) || audio_is_playing(sndPortalLightning4) || audio_is_playing(sndPortalLightning5) || audio_is_playing(sndPortalLightning6) || audio_is_playing(sndPortalLightning7) || audio_is_playing(sndPortalLightning8))){
	if (audio_is_playing(musBossDead) && GameCont.area == 1 && GameCont.subarea > 1){
		sound_play_music(mus1b);
		global.playing_b_theme = true;
	}

	if (audio_is_playing(musBossDead) && GameCont.area == 3 && GameCont.subarea > 1){
		sound_play_music(mus3b);
		global.playing_b_theme = true;
	}

	if (audio_is_playing(musBossDead) && GameCont.area == 5 && GameCont.subarea > 1){
		sound_play_music(mus5b);
		global.playing_b_theme = true;
	}


	if (audio_is_playing(musBossDead) && GameCont.area == 7 && GameCont.subarea > 1){
		sound_play_music(mus7b);
		global.playing_b_theme = true;
	}
}

//Fix of when boss is down in palace, nothing plays instead of musBossDead	
if (!(audio_is_playing(mus7) || audio_is_playing(mus7b) || audio_is_playing(mus100b) || audio_is_playing(sndBossWin) || audio_is_playing(musBoss1)) && GameCont.area == 7 && instance_exists(Player) && (GameCont.subarea == 1 || GameCont.subarea == 2)){
		sound_play_music(musBossDead);
		global.palace_boss_dead = true;
	}

//No Jocks
if (global.options.no_jocks != false){
	with(Jock){
		instance_delete(id);
	}
}

//No Early Shielders	
with(Shielder){
	if (GameCont.hard < 10 && global.options.nes == true){
		instance_create(x,y,Inspector);
		instance_delete(id);
	}
}

//4 IDPD Portals instead of van in Labs
with(WantVan){
	if (GameCont.area == 6 && global.options.piov == true){
		instance_create(x,y,WantPopo);
		instance_create(x,y,WantPopo);
		instance_delete(id);
	}
}

//No early Popo Freak revives
with(WantRevivePopoFreak){
	if (GameCont.loops < 3 && global.options.diropf == false){
		instance_delete(id);
	}
}

// -------------------------------

// Detects when level ends generaion
if(instance_exists(GenCont) && !global.GenCont_exists){
    global.GenCont_exists = true;
	global.TempHard = GameCont.hard;
	GameCont.hard = global.TempHard * global.cem;
}

if(!instance_exists(GenCont) && global.GenCont_exists){
    area_gen_ends();
    global.GenCont_exists = false;
	GameCont.hard = global.TempHard;
}
// -------------------------------


// Help in vault for CrownGuardian
if(!global.vault_torch_transformed && instance_exists(CrownGuardian) && global.options.crown_guardian_help == true){
    with(Torch){
        instance_create(x,y,Guardian);
		if(GameCont.vaults > 1){
			instance_create(x,y,Turret);
		}
		if(GameCont.vaults > 2){
			instance_create(x,y,IDPDSpawn);
		}
		instance_destroy();
    }
    global.vault_torch_transformed = true;
}

// LilHunter help
if(instance_exists(LilHunterDie) && !global.lilhunter_revenged && global.options.lilhunter_revenge == true){
    instance_create(0,0,VanSpawn);
    global.lilhunter_revenged = true;
}

#define makeavan_create(timing)
with instance_create(10016,10016,CustomObject){
	enemies = instance_number(enemy)
	name = "makeavan"
	please = timing
	on_step = script_ref_create(makeavan_step)
	return id;
	}
#define makeavan_step
if (instance_number(enemy) < (enemies/6)*5) && instance_exists(Player)
	if fork(){
		wait(please)
		if instance_exists(self){
			instance_create(0,0,VanSpawn)
			instance_destroy()
			}
		}
//}

//{ van code (draw code from jsburg)
#define vanguide
//trace(my_health)
	
	
	if instance_number(enemy)==array_length_1d(instances_matching(CustomObject,"sprite_index",global.sprVan))
	and instance_exists(Player) and instance_exists(Corpse) and !instance_exists(Spiral){
		if fork(){
			var nc_ = instance_nearest(mouse_x,mouse_y,Corpse)
			wait 30
			if !instance_exists(Portal) and instance_exists(self)
			instance_create(nc_.x,nc_.y,Portal)
			
			exit;
			}
		}
	
	
	if start>0 start -= 1
	//image_angle = direction
	if start < 10 and drivespeed > 0
		drivespeed -= 0.25
	if drivespeed > 0{
		motion_add(direction, drivespeed)
		with instance_create(x+lengthdir_x(30,image_angle+180+30),y+lengthdir_y(30,image_angle+180+30),CaveSparkle) sprite_index = sprIDPDPortalCharge
		with instance_create(x+lengthdir_x(30,image_angle+180-30),y+lengthdir_y(30,image_angle+180-30),CaveSparkle) sprite_index = sprIDPDPortalCharge
		with instance_create(x+lengthdir_x(30,image_angle+30),y+lengthdir_y(30,image_angle+30),CaveSparkle) sprite_index = sprIDPDPortalCharge
		with instance_create(x+lengthdir_x(30,image_angle-30),y+lengthdir_y(30,image_angle-30),CaveSparkle) sprite_index = sprIDPDPortalCharge
		if start < 4{
		if random(3)<1 instance_create(x+lengthdir_x(30,image_angle+180+30),y+lengthdir_y(30,image_angle+180+30),BlueFlame) 
		if random(3)<1 instance_create(x+lengthdir_x(30,image_angle+180-30),y+lengthdir_y(30,image_angle+180-30),BlueFlame) 
		if random(3)<1 instance_create(x+lengthdir_x(30,image_angle+30),y+lengthdir_y(30,image_angle+30),BlueFlame)
		if random(3)<1 instance_create(x+lengthdir_x(30,image_angle-30),y+lengthdir_y(30,image_angle-30),BlueFlame) 
		}
		if start < 7{
		with instance_create(x+lengthdir_x(30,image_angle+180+30),y+lengthdir_y(30,image_angle+180+30),Effect) {sprite_index = sprScorch; image_xscale = 0.6; image_yscale = 0.1; image_angle = other.direction; depth = 4}
		with instance_create(x+lengthdir_x(30,image_angle+180-30),y+lengthdir_y(30,image_angle+180-30),Effect) {sprite_index = sprScorch; image_xscale = 0.6; image_yscale = 0.1; image_angle = other.direction; depth = 4}
		with instance_create(x+lengthdir_x(30,image_angle+30),y+lengthdir_y(30,image_angle+30),Effect) {sprite_index = sprScorch; image_xscale = 0.6; image_yscale = 0.1; image_angle = other.direction; depth = 4}
		with instance_create(x+lengthdir_x(30,image_angle-30),y+lengthdir_y(30,image_angle-30),Effect) {sprite_index = sprScorch; image_xscale = 0.6; image_yscale = 0.1; image_angle = other.direction; depth = 4}
		}
		}
	else friction = 1
	if speed > maxspeed 
			speed = maxspeed
	while place_meeting(x,y,Wall){
		with instance_nearest(x+hspeed,y+vspeed,Wall){
			instance_create(x,y,FloorExplo);
			instance_destroy()
			}
		}
	
	if speed == 0 and  land > 0
		land -= 1
	if (GameCont.loops > 0||(GameCont.subarea = 5) and random(6)<GameCont.loops) and start = 6
		mod_script_call("mod", "enemies", "IDPDTank_create", x+lengthdir_x(30,image_angle+180-30),y+lengthdir_y(30,image_angle+180-30),direction);
	if land = 1{
		var ix = x+lengthdir_x(36,image_angle+180);
		var iy = y+lengthdir_y(36,image_angle+180);
		repeat(2+GameCont.loops){
			var copper = choose(Grunt,Grunt,Grunt,Grunt,Grunt,Grunt,Grunt,Inspector,Inspector,Inspector,Shielder,Shielder,Shielder,EliteGrunt,EliteInspector,EliteShielder);
			if(GameCont.loops > 2){
				var copper = choose(PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak,PopoFreak);
			}
			with instance_create(ix,iy,copper)
				motion_add(point_direction(other.x,other.y,x,y),4)
			instance_create(ix,iy,PortalClear)
			}
		repeat(30)
			with instance_create(x,y,Dust){
				motion_add(random(360),random(6))
				depth = other.depth + .1
				}
		}
	if instance_exists(target)
			var ang = point_direction(x,y,target.x,target.y);
		else 
			var ang = image_angle;
	if start > 5
		image_angle = image_angle+(angle_difference(ang,image_angle)/8)
	if start < 5 and drivespeed > 0 and !place_meeting(x,y,target) and distance_to_object(target)<(game_width/2){
		image_angle = ang
		//image_angle = angle_difference(ang,direction)
		motion_add(direction+(angle_difference(ang,direction)/4), drivespeed/(5+start))
		drivespeed -= 0.25
		
		}
if instance_exists(baby){
		with baby{
			with instance_nearest(x,y,hitme) if distance_to_object(other)<32
				motion_add(point_direction(other.x,other.y,x,y),0.5)
			x=other.x+other.hspeed
			y=other.y+other.vspeed
			if other.speed > 1
			canmelee = 1
			else
			canmelee = 0
			image_angle = other.image_angle
			}
		}
	else instance_destroy()

#define vandraw
if instance_exists(baby){
	var creator = baby
	var i;
	var j = 0;
	draw_sprite_ext(global.sprOutline, 0 , x, y ,image_xscale, image_yscale, image_angle, c_white, 0.5);
	if creator.nexthurt > current_frame 
		d3d_set_fog(1, c_white, 0, 1)
	for (i = 0; i <= 20; i++){
		repeat(zscale){
			draw_sprite_ext(global.sprOutline, clamp(i,0,17) , x, y-land - .5 *(i + j) ,image_xscale, image_yscale, image_angle, c_white, 1);
			j += 1;
			}
		}
	d3d_set_fog(0, 0, 0, 0)
	j = 0
	if speed == 0
		var sprite = global.sprVanStop;
	else
		var sprite = global.sprVan;
	if creator.nexthurt > current_frame 
		d3d_set_fog(1, c_white, 0, 1)
	for (i = 0; i <= 20; i++){
		repeat(zscale){
			draw_sprite_ext(sprite, clamp(i,0,17) , x, y-land - .5 *(i + j) ,image_xscale, image_yscale, image_angle, c_white, 1);
			j += 1;
			}
		}
	d3d_set_fog(0, 0, 0, 0)
	if speed > 1{
		draw_sprite_ext(global.sprSiren, image_index , x, y-land - .5 *(i + j),image_xscale, image_yscale, image_angle, image_blend, 1);
			}
	}
#define vanexplo
repeat 3
mod_script_call("mod","enemies","scrPickups",80)
if instance_exists(baby)
		with baby
			instance_destroy()
repeat(3)
	instance_create(x+random_range(-30,30),y+random_range(-30,30),PopoExplosion)
with instance_create(x,y,Effect) {
sprite_index = sprScorch;
image_xscale = 3
image_yscale = 3
}
repeat(10)
instance_create(x+random_range(-30,30),x+random_range(-30,30),BlueFlame)

#define on_screen_with_player(bx1,by1,bx2,by2)

if(global.options.popups == true && instance_exists(Player)){
	if(GameCont.loops > 0){
		if(global.options.death_effects == true){
			if(instance_exists(Salamander) && global.popup_shown._salamander == false){
				with(Salamander){
					if(x > bx1 && x < bx2 && y > by1 && y < by2){
						if("levelup_notify" not in self){
							//trace("poop");
							levelup_notify = true;
							levelup_draw();
							global.popup_shown._salamander = true;
						}
					}
				}
			}
			if(instance_exists(Rat) && global.popup_shown._rat == false){
				with(Rat){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._rat = true;
					}
				}
			}
			if(instance_exists(Molefish) && global.popup_shown._molefish == false){
				with(Molefish){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._molefish = true;
					}
				}
			}
			if(instance_exists(JungleFly) && global.popup_shown._junglefly == false){
				with(JungleFly){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._junglefly = true;
					}
				}
			}
		if(global.options.enemies_mutations == true){
			if(instance_exists(BuffGator) && global.popup_shown._buffgator == false){
				with(BuffGator){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._buffgator = true;
					}
				}
			}
			if(instance_exists(Gator) && global.popup_shown._gator == false){
				with(Gator){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._gator = true;
					}
				}
			}
		}
	}
	if(GameCont.loops > 1){
		if(global.options.death_effects == true){
			if(instance_exists(Jock) && global.popup_shown._jock == false){
				with(Jock){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._jock = true;
					}
				}
			}
			if(instance_exists(Last) && global.popup_shown._last == false){
				with(Last){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._last = true;
					}
				}
			}
			if(instance_exists(Bandit) && global.popup_shown._bandit == false){
				with(Bandit){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._bandit = true;
					}
				}
			}
			if(instance_exists(Molesarge) && global.popup_shown._molesarge == false){
				with(Molesarge){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._molesarge = true;
					}
				}
			}
			if(instance_exists(Van) && global.popup_shown._van == false){
				with(Van){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._van = true;
					}
				}
			}
			if(instance_exists(Grunt) && global.popup_shown._grunt == false){
				with(Grunt){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._grunt = true;
					}
				}
			}
			if(instance_exists(Inspector) && global.popup_shown._inspector == false){
				with(Inspector){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._inspector = true;
					}
				}
			}
			if(instance_exists(TechnoMancer) && global.popup_shown._technomancer == false){
				with(TechnoMancer){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._technomancer = true;
					}
				}
			}
			if(instance_exists(CrownGuardian) && global.popup_shown._crownguardian == false){
				with(CrownGuardian){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._crownguardian = true;
					}
				}
			}
			if(instance_exists(Wolf) && global.popup_shown._wolf == false){
				with(Wolf){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._wolf = true;
					}
				}
			}
			if(instance_exists(OasisBoss) && global.popup_shown._oasisboss == false){
				with(OasisBoss){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._oasisboss = true;
					}
				}
			}
		}
	}
	if(GameCont.loops > 2){
		if(global.options.death_effects == true){
			if(instance_exists(ExploGuardian) && global.popup_shown._exploguardian == false){
				with(ExploGuardian){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._exploguardian = true;
					}
				}
			}
			if(instance_exists(DogGuardian) && global.popup_shown._dogguardian == false){
				with(DogGuardian){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._dogguardian = true;
					}
				}
			}
			if(instance_exists(JungleBandit) && global.popup_shown._junglebandit == false){
				with(JungleBandit){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._junglebandit = true;
					}
				}
			}
			if(instance_exists(JungleAssassin) && global.popup_shown._jungleassassin == false){
				with(JungleAssassin){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._jungleassassin = true;
					}
				}
			}
			if(instance_exists(BanditBoss) && global.popup_shown._junglebanditboss == false && GameCont.area == 105){
				with(BanditBoss){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._junglebanditboss = true;
					}
				}
			}
			if(instance_exists(EliteGrunt) && global.popup_shown._elitegrunt == false){
				with(EliteGrunt){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._elitegrunt = true;
					}
				}
			}
		}
		if(global.options.enemies_mutations == true){
			if(instance_exists(Sniper) && global.popup_shown._sniper == false){
				with(Sniper){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._sniper = true;
					}
				}
			}
			if(instance_exists(SnowTank) && global.popup_shown._snowtank == false){
				with(SnowTank){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._snowtank = true;
					}
				}
			}
			if(instance_exists(GoldSnowTank) && global.popup_shown._goldsnowtank == false){
				with(GoldSnowTank){
					if("police" not in self){
						if("levelup_notify" not in self){
							levelup_notify = true;
							levelup_draw();
							global.popup_shown._goldsnowtank = true;
						}
					}
				}
			}
		}
	}
	if(GameCont.loops > 3){
		if(global.options.death_effects == true){
			if(instance_exists(LightningCrystal) && global.popup_shown._lightningcrystal == false){
				with(LightningCrystal){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._lightningcrystal = true;
					}
				}
			}
			if(instance_exists(Necromancer) && global.popup_shown._necromancer == false){
				with(Necromancer){
					if("levelup_notify" not in self){
						levelup_notify = true;
						levelup_draw();
						global.popup_shown._necromancer = true;
					}
				}
			}
		}
	}
}
}

#define levelup_draw

with(enemy){
	draw_sprite_ext(sprLevelUp,-1,x,y,1,1,0,c_white,1);
}

#define rad_inspector

with Player {
	if distance_to_object(other) <= 72 && speed < 16 { 
		motion_add(point_direction(other.x, other.y, x, y), 0.4)
		}
	}

#define telekenesis

with(Inspector){
    if("RadHolder" in self){
        if(RadHolder == 1){
            draw_sprite_ext(sprEyesB, -1, x, y, 1, 1, angle, c_white, 1);
        }
    }
}

#define radchestback

with(Grunt){
    if("RadHolder" in self){
        if(RadHolder == 1){
            draw_sprite_ext(sprRadChest, -1, x, y-8, 1, 1, angle, c_white, 1);
        }
    }
}

with(Inspector){
    if("RadHolder" in self){
        if(RadHolder == 1){
            draw_sprite_ext(sprRadChest, -1, x, y-14, 1, 1, angle, c_white, 1);
        }
    }
}

with(Shielder){
    if("RadHolder" in self){
        if(RadHolder == 1){
            draw_sprite_ext(sprRadChest, -1, x, y-12, 1, 1, angle, c_white, 1);
        }
    }
}

#define ultra_weapon

if(skill_get(13) && !global.used_skills [0]){
	global.used_skills [0] = true;
	return wep_ultra_shovel;
}
if(skill_get(21) && !global.used_skills [1]){
	global.used_skills [1] = true;
	return wep_ultra_crossbow;
}
if(skill_get(16) && !global.used_skills [2]){
	global.used_skills [2] = true;
	return wep_ultra_revolver;
}
if(skill_get(14) && !global.used_skills [3]){
	global.used_skills [3] = true;
	return wep_ultra_grenade_launcher;
}
if(skill_get(17) && !global.used_skills [4]){
	global.used_skills [4] = true;
	return wep_ultra_laser_pistol;
}
if(skill_get(15) && !global.used_skills [5]){
	global.used_skills [5] = true;
	return wep_ultra_shotgun;
}
with(Player){
	if(wep == wep_ultra_revoulver || wep == wep_ultra_crossbow || wep == wep_ultra_shovel || wep == wep_ultra_grenade_launcher || wep == wep_ultra_shotgun || wep == wep_ultra_laser_pistol){
		if(random(1) < 1){
			return wep;
		}
		else{
			var wep_choice = irandom(5);
			return global.ultra_weapons_random [wep_choice];
		}
	}
	if(bwep == wep_ultra_revoulver || bwep == wep_ultra_crossbow || bwep == wep_ultra_shovel || bwep == wep_ultra_grenade_launcher || bwep == wep_ultra_shotgun || bwep == wep_ultra_laser_pistol){
		if(random(1) < 1){
			return bwep;
		}
		else{
			var wep_choice = irandom(5);
			return global.ultra_weapons_random [wep_choice];
		}
	}
	if((wep == wep_ultra_revoulver || wep == wep_ultra_crossbow || wep == wep_ultra_shovel || wep == wep_ultra_grenade_launcher || wep == wep_ultra_shotgun || wep == wep_ultra_laser_pistol) && (bwep == wep_ultra_revoulver || bwep == wep_ultra_crossbow || bwep == wep_ultra_shovel || bwep == wep_ultra_grenade_launcher || bwep == wep_ultra_shotgun || bwep == wep_ultra_laser_pistol)){
		if(random(1) < 1){
			if(random(1) < 1){
				return wep;
			}
			else{
				return bwep;
			}
		}
		else{
			var wep_choice = irandom(5);
			return global.ultra_weapons_random [wep_choice];
		}
	}
}

#define cleanup

sprite_restore(sprBigSkull);
sprite_restore(sprBigSkullOpen);
sprite_restore(sprBigSkullHurt);
sprite_restore(sprBigSkullOpenHurt);
sprite_restore(sprBigSkullDead);
sprite_restore(sprBonePileIdle);
sprite_restore(sprBonePileHurt);
sprite_restore(sprBonePileDead);
sprite_restore(sprBones);
sprite_restore(sprCactus);
sprite_restore(sprCactusHurt);
sprite_restore(sprCactusDead);
sprite_restore(sprCactus2);
sprite_restore(sprCactus2Hurt);
sprite_restore(sprCactus2Dead);
sprite_restore(sprCactus3);
sprite_restore(sprCactus3Hurt);
sprite_restore(sprCactus3Dead);
sprite_restore(sprCactusB);
sprite_restore(sprCactusBHurt);
sprite_restore(sprCactusBDead);
sprite_restore(sprCactusB2);
sprite_restore(sprCactusB2Hurt);
sprite_restore(sprCactusB2Dead);
sprite_restore(sprCactusB3);
sprite_restore(sprCactusB3Hurt);
sprite_restore(sprCactusB3Dead);
sprite_restore(sprDebris1);
sprite_restore(sprDesertTopDecal);
sprite_restore(sprDetail1);
sprite_restore(sprFloor1);
sprite_restore(sprFloor1Explo);
sprite_restore(sprFloor1B);
sprite_restore(sprMSpawnIdle);
sprite_restore(sprMSpawnDead);
sprite_restore(sprMSpawnHurt);
sprite_restore(sprMSpawnChrg);
sprite_restore(sprWall1Bot);
sprite_restore(sprWall1Out);
sprite_restore(sprWall1Top);
sprite_restore(sprWall1Trans);
sprite_restore(sprWind);
sprite_restore(sprTires);
sprite_restore(sprTiresDead);
sprite_restore(sprTiresHurt);
sprite_restore(sprTopDecalScrapyard);
sprite_restore(sprFloor3);
sprite_restore(sprFloor3B);
sprite_restore(sprWall3Out);
sprite_restore(sprDetail3);
sprite_restore(sprWall3Bot);
sprite_restore(sprWall3Trans);
sprite_restore(sprWall3Top);
sprite_restore(sprFloor3Explo);
sprite_restore(sprDebris3);
sprite_restore(bak3);
sprite_restore(sprCarIdle);
sprite_restore(sprCarHurt);
sprite_restore(sprCarThrown);
sprite_restore(sprSnowBotRedCarIdle);
sprite_restore(sprSnowBotRedCarLift);
sprite_restore(sprSnowBotRedCarWalk);
sprite_restore(sprSnowBotRedCarHurt);
sprite_restore(sprSnowBotRedCarThrow);
sprite_restore(sprTrap);
sprite_restore(sprTrapGameover);
sprite_restore(sprTrapScorchMark);
sprite_restore(sprRainDrop);
sprite_restore(sprRainDropSlowmo);
sprite_restore(sprRainSplash);
sprite_restore(sprScrapDecal);
sprite_restore(sprSodaMachine);
sprite_restore(sprStreetLight);
sprite_restore(sprIcicle);
sprite_restore(sprWall5Trans);
sprite_restore(sprTopDecalCity);
sprite_restore(sprIceDecal);
sprite_restore(sprIcicleDead);
sprite_restore(sprIcicleHurt);
sprite_restore(sprSodaMachineDead);
sprite_restore(sprSodaCan);
sprite_restore(sprStreetLightDead);
sprite_restore(sprFloor5B);
sprite_restore(sprFloor5Explo);
sprite_restore(sprFloor5);
sprite_restore(sprWall5Out);
sprite_restore(sprWall5Top);
sprite_restore(sprDebris5);
sprite_restore(sprDetail5);
sprite_restore(sprWall5Bot);
sprite_restore(sprSodaMachineHurt);
sprite_restore(sprStreetLightHurt);
sprite_restore(sprSnowBotCarLift);
sprite_restore(sprFrozenCar);
sprite_restore(sprSnowBotCarIdle);
sprite_restore(sprSnowBotCarWalk);
sprite_restore(sprSnowBotCarHurt);
sprite_restore(sprSnowBotCarThrow);
sprite_restore(sprFrozenCarThrown);
sprite_restore(sprFrozenCarHurt);
sprite_restore(sprSnowFlake);
sprite_restore(sprHydrant);
sprite_restore(sprHydrantHurt);
sprite_restore(sprHydrantDead);
sprite_restore(sprSnowMan);
sprite_restore(sprSnowManHurt);
sprite_restore(sprPStat1Idle);
sprite_restore(sprPStat2Idle);
sprite_restore(sprSnowManDead);
sprite_restore(sprPStat1Hurt);
sprite_restore(sprPStat2Hurt);
sprite_restore(sprPStatDead);
sprite_restore(sprSnowManDead);
sprite_restore(sprSnowBotRedCarLift);
sprite_restore(sprRainDrop);
sprite_restore(sprRainDropSlowmo);
sprite_restore(sprRainSplash);
sprite_restore(sprBanditBossIdle);
sprite_restore(sprBanditBossWalk);
sprite_restore(sprBanditBossFire);
sprite_restore(sprBanditBossTell);
sprite_restore(sprBanditBossDash);
sprite_restore(sprBanditBossStop);
sprite_restore(sprBanditBossHurt);
sprite_restore(sprBanditBossDead);
sprite_restore(sprBossIntro);	

if global.loaded {
	// remove the mod from Custom Options
	call(scr.option_remove_mod, mod_current_type, mod_current);
}

// save in cleanup, just in case
CustomOptions_save();

#macro scr global.scr
#macro call script_ref_call

#macro mod_current_type global.mod_current_type

#define draw_back_button
//draw_sprite_ext(sprBackButton, 0, 0, 0, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprMutant3Sit, sprite_get_number(sprMutant3Sit) - 3, game_width / 2, game_height / 2, 5, 5, 0, c_white, 1);

#define CustomOptions_init
// a script that runs when Custom Options loads, if this mod exists first

#define CustomOptions_open
// a script that runs when a user selects your mod through Custom Options' GUI
// you can load your options file here or in `#define init`
if (fork()) {
	wait(file_load(global.OPTIONS_FILE) + 1);

	if (file_exists(global.OPTIONS_FILE)) {
		var _options = json_decode(string_load(global.OPTIONS_FILE));
        var option_count = lq_size(global.options);
    
        for (var i = 0; option_count > i; i++) {
            if (!lq_exists(_options, lq_get_key(global.options, i))) {
                lq_set(_options, lq_get_key(global.options, i), lq_get_value(global.options, i));
            }
        }

        global.options = _options;
	} else {
		string_save(json_encode(global.options, "   "), global.OPTIONS_FILE);
		string_save(json_encode(global.options, "   "), global.PRESET_FILE);
	}
}
//trace(`${mod_current}.${mod_current_type}::CustomOptions_open`);

#define CustomOptions_save
// a script that runs when Custom Options detects the menu closing
// you can save your options file here or in `#define cleanup`
/*if (global.options.seed != "") {
	opt.seed = real(global.options.seed);
	trace(`Seed changed to ${opt.seed}.`);
} else {
	opt.seed = null;
	trace("seed reset.");
}*/
string_save(json_encode(global.options, "  "), global.OPTIONS_FILE);
//trace(`${mod_current}.${mod_current_type}::CustomOptions_save`);

#define gator_tp()
  if("tele_health" not in self){
    tele_health = my_health
  }
  // check if health becomes lower:
  if(my_health < tele_health){

    // choose floor:
    var next_x      = x + random_range(-500, 500),
        next_y      = y + random_range(-500, 500),
        next_floor  = instance_nearest(next_x, next_y, Floor);
		
    // teleport to floor:
	repeat(5) with instance_create(x + random_range(-10, 10), y + random_range(-10, 10), CaveSparkle){
			image_angle = random(360);
			image_index = 2;
			image_xscale = random_range(0.5, 1.5);
			image_blend = choose(make_color_rgb(0, 255, 0), make_color_rgb(255, 0, 255));
			image_alpha = 0.5;
			image_speed = 0;
			depth = other.depth;

			if(fork()){
				var t = choose(-1, 1);
				while(instance_exists(self)){
					y--;
					image_angle += (t * 5);
					image_xscale *= 0.95;
					image_yscale = image_xscale;
					if(image_xscale < 0.1) instance_destroy();
					wait 1;
					}
				exit;
				}
			}
    x = next_floor.x + 16;
    y = next_floor.y + 16;
	sound_play(global.sndGatorTeleport);
	
	repeat(5) with instance_create(x + random_range(-10, 10), y + random_range(-10, 10), CaveSparkle){
				image_angle = random(360);
				image_index = 2;
				image_xscale = random_range(0.5, 1.5);
				image_blend = choose(make_color_rgb(0, 255, 0), make_color_rgb(255, 0, 255));
				image_alpha = 0.5;
				image_speed = 0;
				depth = other.depth;

				if(fork()){
					var t = choose(-1, 1);
					while(instance_exists(self)){
						y--;
						image_angle += (t * 5);
						image_xscale *= 0.95;
						image_yscale = image_xscale;
						if(image_xscale < 0.1) instance_destroy();
						wait 1;
					}
					exit;
				}
			}

    // clear walls around floor to avoid getting stuck in some cases:
    with(instance_create(x, y, PortalClear)){
      image_xscale    = 0.3;
      image_yscale    = 0.3;
    }
  }
  // set health var:
  tele_health = my_health;

#define enter_to_oasis_step
	
if(sprite_index != spr_hurt){
	sprite_index = spr_idle;
}
else if(image_index > 2) sprite_index = spr_idle;

if (my_health <= 0) {
    instance_destroy();
}


#define enter_to_oasis_hurt (damage)

nexthurt = current_frame + 6;
sound_play(sndOasisHurt);
my_health -= damage;

sprite_index = spr_hurt;
image_index = 0;

#define enter_to_oasis_destroy
repeat (3) instance_create(x + random_range(-1, 1), y + random_range(-1, 1), Explosion);
sound_play(sndOasisExplosionSmall);
GameCont.area = 101;
GameCont.subarea = 0;
instance_create(x,y,Portal);
with(instance_create(x,y,CustomObject)){
	sprite_index = global.sprOasisEnterDead;
	speed = 0;
	}
	
#define E
	with creator{
		draw_sprite(global.sprBPickup,0,x,y-7)

		draw_set_color(c_black)
		draw_text(x-20,y-30,string(name))
		draw_text(x+1-20,y-30,string(name))
		draw_text(x+1-20,y-31,string(name))
		draw_set_color(c_white)
		draw_text(x-20,y-31,string(name))
		}
instance_destroy()

#define enter_to_the_jungles_step
if entered_the_jungles < 1{
	with Player if distance_to_object(other)<16{
		with other
			with script_bind_draw("E",-11)
				creator = other	
		if button_pressed(index,"horn"){
			other.entered_the_jungles += 1
			instance_create(x,y,BloodStreak)
			if other.entered_the_jungles>=1{
				with instances_matching(CustomObject,"name","ENTER") instance_destroy();
				}
			}
		}
	}
else{
	with instances_matching(CustomObject,"name","ENTER") instance_destroy();
}

#define enter_to_the_jungles_destroy
instance_create(x,y,Portal);
with(GameCont){
	area = 105;
	subarea = 0;
}

#define portal_exists
global.tip_shown = false;
global.inner_chance_proc = false;

if(global.options.fix_venus_car == true){
	with(CarVenusFixed){
		instance_destroy();
	}
}

if(global.options.popups == true){
	if(instance_exists(Player)){
		if(GameCont.area == 3 && GameCont.subarea == 1 && global.popup_shown._oasis == false){
			with instance_create(Player.x,Player.y,PopupText) text = "CHECK OUT SPAWN"
			global.popup_shown._oasis = true;
		}
	}
	
	if(instance_exists(Player)){
		if(GameCont.area == 5 && GameCont.subarea == 1 && global.popup_shown._jungle == false){
			with instance_create(Player.x,Player.y,PopupText) text = "CHECK OUT SPAWN"
			global.popup_shown._jungle = true;
		}
	}
}
	
#define dog_guardian_death
with (instance_create(x,y,BigGuardianBullet)){
		team = 1;
		hitid = [sprDogGuardianDead, "Dog Guardian"];
	}
	
#define lightning_crystal_death
with (instance_create(x,y,LightningBall)){
		team = 1;
		hitid = [sprLightningCrystalDead, "Lightning Crystal"];
	}
	
#define salamander_death
with (instance_create(x,y,FlameBall)){
		team = 1;
		hitid = [sprSalamanderDead, "Salamander"];
	}
	
#define techno_mancer_death
with (instance_create(x,y,ClusterNade)){
		team = 1;
		hitid = [sprTechnoMancerDead, "Techno Mancer"];
	}
	
#define explo_guardian_death
with (instance_create(x,y,UltraGrenade)){
		team = 1;
	}
	
#define crown_guardian_death
with (instance_create(x,y,Throne2Ball)){
		team = 1;
		hitid = [sprCrownGuardianDead, "Crown Guardian"];
	}
	
#define bandit_death
with (instance_create(x,y,EnemyBullet1)){
		newprojectile = true;
		team = 1;
		if(GameCont.area != 5 && GameCont.area != "city"){
			hitid = [sprBanditDead, "Bandit"];
		}
		if(GameCont.area == 5 || GameCont.area == "city"){
			hitid = [sprSnowBanditDead, "Snow Bandit"];
		}
//Homing bullets
	if(instance_exists(Player)){
		target = instance_nearest(x,y,Player);
		}
		else{
		target = 0;
		}

	if target > 0{
		if random(50)<1
			motion_add(direction+choose(-90,90),3)
		if speed > random(6)
			speed = 4
		motion_add(point_direction(x,y,target.x,target.y),4);
		image_angle = direction;
		}
		
	}
	
#define molefish_death
with (instance_create(x,y,EnemyBullet1)){
		newprojectile = true;
		team = 1;
		hitid = [sprMolefishDead, "Molefish"];
//Homing bullets
	if(instance_exists(Player)){
		target = instance_nearest(x,y,Player);
		}
		else{
		target = 0;
		}

	if target > 0{
		if random(50)<1
			motion_add(direction+choose(-90,90),3)
		if speed > random(6)
			speed = 4
		motion_add(point_direction(x,y,target.x,target.y),4);
		image_angle = direction;
		}
		
	}
	

#define wolf_death
for(var spread = -17; spread <= 17; spread += 17) with (instance_create(x,y,EnemyBullet1)){
		newprojectile = true;
		team = 1;
		hitid = [sprWolfDead, "Wolf"];
//Homing bullets
	if(instance_exists(Player)){
		target = instance_nearest(x,y,Player);
		}
		else{
		target = 0;
		}

	if target > 0{
		if random(50)<1
			motion_add(direction+choose(-90,90),3)
		if speed > random(6)
			speed = 4
		motion_add(point_direction(x,y,target.x,target.y) + spread,4);
		image_angle = direction;
		}
	}
	
#define grunt_death
with (instance_create(x,y,IDPDBullet)){
		newprojectile = true;
		team = 1;
		hitid = [sprGruntDead, "Grunt"];
//Homing bullets
	if(instance_exists(Player)){
		target = instance_nearest(x,y,Player);
		}
		else{
		target = 0;
		}

	if target > 0{
		if random(50)<1
			motion_add(direction+choose(-90,90),3)
		if speed > random(6)
			speed = 8
		motion_add(point_direction(x,y,target.x,target.y),8);
		image_angle = direction;
		}
		
	}
	
#define inspector_death
with (instance_create(x,y,PopoSlug)){
		newprojectile = true;
		team = 1;
		hitid = [sprInspectorDead, "Inspector"];
//Homing bullets
	if(instance_exists(Player)){
		target = instance_nearest(x,y,Player);
		}
		else{
		target = 0;
		}

	if target > 0{
		if random(50)<1
			motion_add(direction+choose(-90,90),3)
		if speed > random(6)
			speed = 16
		motion_add(point_direction(x,y,target.x,target.y),16);
		image_angle = direction;
		}
		
	}

#define molesarge_death
for(var spread2 = -12; spread2 <= 12; spread2 += 6) with (instance_create(x,y,EnemyBullet3)){
		newprojectile = true;
		team = 1;
		hitid = [sprMolesargeDead, "Molesarge"];
//Homing bullets
	if(instance_exists(Player)){
		target = instance_nearest(x,y,Player);
		}
		else{
		target = 0;
		}

	if target > 0{
		if random(50)<1
			motion_add(direction+choose(-90,90),3)
		if speed > random(6)
			speed = 10
		motion_add(point_direction(x,y,target.x,target.y) + spread2 * 1.75,10);
		image_angle = direction;
		}
	}	

#define snowman_death
instance_create(x,y,BanditBoss);

#define rat_death
with instance_create(x,y,FastRat){
				direction = other.direction
				speed = 2
				walk = 25
			}

#define elite_grunt_death
with(instance_create(x,y,PopoNade)){
	team = 3;
	hitid = [sprEliteGruntDead, "Elite Grunt"];
}

// -----Genetation Ends----- //
#define area_gen_ends
global.revive_band = false;
global.proc_triggered = false;
global.lilhunter_revenged = false;
global.vault_torch_transformed = false;
global.crown_guardian_spawned = false;
global.boss_defeated = false;
global.playing_b_theme = false;
global.palace_boss_dead = false;
global.throne2_spawned = false;
global.idpd_noticed_your_weapon = false;
global.iattbd = false;
global.music_for_bosses = false;
global.horror_taunted = false;
global.sprites_swapped = false;
global.abd = false;
global.jungle_enabler_spawned = false;
global.snowspawn_controller_created = false;

global.challange_accepted = false;

global.ultrachest_x = 0;

global.ultrachest_y = 0;

global.ultrachest_id = 0;

global.ultraweapon_id = 0;

global.ultrachest_frame = 0;

global.weapon_deleted = false;

global.ultrachest_spawned = false;

with(WeaponChest){
	if(global.options.chest_replacments == true && GameCont.area == 102){
		with(instance_create(x,y,WepPickup)){
			wep = wep_party_gun;
		}
		instance_delete(self);
	}
}

with(ProtoChest){
	if(wep == wep_party_gun){
		wep = irandom(127);
	}
}

with(Player){
	if(global.options.no_throne_yell == false && GameCont.area == 7 && GameCont.subarea == 3 && global.no_addinational_yell == false){
		sound_play(snd_thrn);
		global.no_addinational_yell = true;
	}
}

if(global.temp_skippedchests > 0){
GameCont.nochest = global.temp_skippedchests;
}
if(GameCont.nochest > 0){
	global.temp_skippedchests = 0;
}

if(GameCont.loops > 0){
	global.aowb = (GameCont.loops + 1) * 10 + 10;
}
else{
	global.aowb = (GameCont.loops + 1) * 20;
}

if(GameCont.area != 7 && GameCont.area != 5 && global.options.no_guards == true){
	with (Guardian) instance_delete(self);
	with (ExploGuardian) instance_delete(self);
	with (DogGuardian) instance_delete(self);
	with (GhostGuardian) instance_delete(self);
}

if(GameCont.area == 5 && global.options.no_guards == true){
	with (Guardian) instance_delete(self);
	with (GhostGuardian) instance_delete(self);
}

if(GameCont.loops == 1 && global.eem <= 0){
	if(GameCont.area == 1 || GameCont.area == 7){
		with (Sniper) instance_delete(self);
		}
	if(GameCont.area == 5){
		with(DogGuardian) instance_delete(self);
		}
	}

if(GameCont.area == 3 && GameCont.subarea == 3 && GameCont.crown != crwn_none){
	if(GameCont.nochest > 0){
		global.temp_skippedchests = GameCont.nochest;
		GameCont.nochest = 0;
	}
	with(BigWeaponChest){
		instance_create(x,y,WeaponChest);
		instance_delete(self);
		}
	with(WeaponChest){
		if(sprite_index != sprCursedChest && sprite_index != sprCursedChestSteroidsUltra){
			switch (sprite_index){
				case sprWeaponChest:
					sprite_index = sprCursedChest;
					break;
				case sprWeaponChestSteroidsUltra:
					sprite_index = sprCursedChestSteroidsUltra;
					break;
				default:
					image_blend = c_purple;
					break;
				}
			}
		curse = 1;
		}
	}

if(global.cap_spawned == true && global.cap_dead == false){
}

if(GameCont.vaults > 2 && (GameCont.area == 105 || GameCont.area == 103 || GameCont.area == 101 || (GameCont.area == global.crown_guardian_locations && GameCont.subarea == 2))){
	global.amount_of_crown_guardians += 2;
	}

if(global.options.hammerhead_time == 2 && GameCont.loops > 0){
	Player.hammerhead = 20 * GameCont.loops;
	}

if(random(2) < 1){
	global.wind_left = true;
	}
else{
	global.wind_left = false;
	}

if(GameCont.area != 107){
	global.rest_room = false;
	}

if(GameCont.area != 100){
	global.last_vault = false;
	}
	
if(global.options.popups == true){
	if(instance_exists(Player)){
		if(GameCont.area == 104 && global.popup_shown._ccc == false && global.options.cursed_caves_rework == true){
			with instance_create(Player.x,Player.y,PopupText) text = "FLOOR IS @p@qC@qU@qR@qS@qE@qD@q!@s"
			global.popup_shown._ccc = true;
		}
	}
}

if(global.options.chest_replacments == true){
	with(AmmoChest){
		if (GameCont.area == 5 || GameCont.area == 106 || GameCont.area == "city" || GameCont.area == "HQ"){
			instance_create(x,y,IDPDChest);
			instance_delete(self);
		}
	}

	with(AmmoChestMystery){
		if (GameCont.area == 5 || GameCont.area == 106 || GameCont.area == "city" || GameCont.area == "HQ"){
			instance_create(x,y,IDPDChest);
			instance_delete(self);
		}
	}

	with(Mimic){
		if (GameCont.area == 5 || GameCont.area == 106 || GameCont.area == "city" || GameCont.area == "HQ"){
			instance_create(x,y,IDPDChest);
			instance_delete(self);
		}
	}
}

if((GameCont.area == 0 || GameCont.area = 7 && GameCont.subarea = 3) && GameCont.loops < 4){
	GameCont.seenhq = 0;
	if(instance_exists(Player) && global.options.bonus_loop_max_health == true){
		with(Player){
			chickendeaths += 1;
		}
	}
}

if(global.abd == false){
	sprite_restore(sprBigSkull);
	sprite_restore(sprBigSkullOpen);
	sprite_restore(sprBigSkullHurt);
	sprite_restore(sprBigSkullOpenHurt);
	sprite_restore(sprBigSkullDead);
	sprite_restore(sprBonePileIdle);
	sprite_restore(sprBonePileHurt);
	sprite_restore(sprBonePileDead);
	sprite_restore(sprBones);
	sprite_restore(sprCactus);
	sprite_restore(sprCactusHurt);
	sprite_restore(sprCactusDead);
	sprite_restore(sprCactus2);
	sprite_restore(sprCactus2Hurt);
	sprite_restore(sprCactus2Dead);
	sprite_restore(sprCactus3);
	sprite_restore(sprCactus3Hurt);
	sprite_restore(sprCactus3Dead);
	sprite_restore(sprCactusB);
	sprite_restore(sprCactusBHurt);
	sprite_restore(sprCactusBDead);
	sprite_restore(sprCactusB2);
	sprite_restore(sprCactusB2Hurt);
	sprite_restore(sprCactusB2Dead);
	sprite_restore(sprCactusB3);
	sprite_restore(sprCactusB3Hurt);
	sprite_restore(sprCactusB3Dead);
	sprite_restore(sprDebris1);
	sprite_restore(sprDesertTopDecal);
	sprite_restore(sprDetail1);
	sprite_restore(sprFloor1);
	sprite_restore(sprFloor1Explo);
	sprite_restore(sprFloor1B);
	sprite_restore(sprMSpawnIdle);
	sprite_restore(sprMSpawnDead);
	sprite_restore(sprMSpawnHurt);
	sprite_restore(sprMSpawnChrg);
	sprite_restore(sprWall1Bot);
	sprite_restore(sprWall1Out);
	sprite_restore(sprWall1Top);
	sprite_restore(sprWall1Trans);
	sprite_restore(sprWind);
	sprite_restore(sprTires);
	sprite_restore(sprTiresDead);
	sprite_restore(sprTiresHurt);
	sprite_restore(sprTopDecalScrapyard);
	sprite_restore(sprFloor3);
	sprite_restore(sprFloor3B);
	sprite_restore(sprWall3Out);
	sprite_restore(sprDetail3);
	sprite_restore(sprWall3Bot);
	sprite_restore(sprWall3Trans);
	sprite_restore(sprWall3Top);
	sprite_restore(sprFloor3Explo);
	sprite_restore(sprDebris3);
	sprite_restore(bak3);
	sprite_restore(sprCarIdle);
	sprite_restore(sprCarHurt);
	sprite_restore(sprCarThrown);
	sprite_restore(sprSnowBotRedCarIdle);
	sprite_restore(sprSnowBotRedCarLift);
	sprite_restore(sprSnowBotRedCarWalk);
	sprite_restore(sprSnowBotRedCarHurt);
	sprite_restore(sprSnowBotRedCarThrow);
	sprite_restore(sprTrap);
	sprite_restore(sprTrapGameover);
	sprite_restore(sprTrapScorchMark);
	sprite_restore(sprRainDrop);
	sprite_restore(sprRainDropSlowmo);
	sprite_restore(sprRainSplash);
	sprite_restore(sprScrapDecal);
	sprite_restore(sprSodaMachine);
	sprite_restore(sprStreetLight);
	sprite_restore(sprIcicle);
	sprite_restore(sprWall5Trans);
	sprite_restore(sprTopDecalCity);
	sprite_restore(sprIceDecal);
	sprite_restore(sprIcicleDead);
	sprite_restore(sprIcicleHurt);
	sprite_restore(sprSodaMachineDead);
	sprite_restore(sprSodaCan);
	sprite_restore(sprStreetLightDead);
	sprite_restore(sprFloor5B);
	sprite_restore(sprFloor5Explo);
	sprite_restore(sprFloor5);
	sprite_restore(sprWall5Out);
	sprite_restore(sprWall5Top);
	sprite_restore(sprDebris5);
	sprite_restore(sprDetail5);
	sprite_restore(sprWall5Bot);
	sprite_restore(sprSodaMachineHurt);
	sprite_restore(sprStreetLightHurt);
	sprite_restore(sprSnowBotCarLift);
	sprite_restore(sprFrozenCar);
	sprite_restore(sprSnowBotCarIdle);
	sprite_restore(sprSnowBotCarWalk);
	sprite_restore(sprSnowBotCarHurt);
	sprite_restore(sprSnowBotCarThrow);
	sprite_restore(sprFrozenCarThrown);
	sprite_restore(sprFrozenCarHurt);
	sprite_restore(sprSnowFlake);
	sprite_restore(sprHydrant);
	sprite_restore(sprHydrantHurt);
	sprite_restore(sprHydrantDead);
	sprite_restore(sprSnowMan);
	sprite_restore(sprSnowManHurt);
	sprite_restore(sprPStat1Idle);
	sprite_restore(sprPStat2Idle);
	sprite_restore(sprSnowManDead);
	sprite_restore(sprPStat1Hurt);
	sprite_restore(sprPStat2Hurt);
	sprite_restore(sprPStatDead);
	sprite_restore(sprSnowManDead);
	}

with(Player){
	if((irandom(my_health) + 1) == 1 && GameCont.area == 106 && GameCont.subarea == 1){
		sound_play_music(mus106b);
	}
}

if(GameCont.area != 5 && GameCont.area != 105){
	sprite_restore(sprBanditBossIdle);
	sprite_restore(sprBanditBossWalk);
	sprite_restore(sprBanditBossFire);
	sprite_restore(sprBanditBossTell);
	sprite_restore(sprBanditBossDash);
	sprite_restore(sprBanditBossStop);
	sprite_restore(sprBanditBossHurt);
	sprite_restore(sprBanditBossDead);
	sprite_restore(sprBossIntro);
}

if(GameCont.area == 105){
	sprite_replace(sprBanditBossIdle,"resources/Enemies/JungleBigBandit/JungleBigBanditIdle.png",6,16,16 );
	sprite_replace(sprBanditBossWalk,"resources/Enemies/JungleBigBandit/JungleBigBanditWalk.png",8,16,16 );
	sprite_replace(sprBanditBossFire,"resources/Enemies/JungleBigBandit/JungleBigBanditFire.png",2,16,16 );
	sprite_replace(sprBanditBossTell,"resources/Enemies/JungleBigBandit/JungleBigBanditTell.png",2,16,16 );
	sprite_replace(sprBanditBossDash,"resources/Enemies/JungleBigBandit/JungleBigBanditDash.png",2,16,16 );
	sprite_replace(sprBanditBossStop,"resources/Enemies/JungleBigBandit/JungleBigBanditStop.png",2,16,16 );
	sprite_replace(sprBanditBossHurt,"resources/Enemies/JungleBigBandit/JungleBigBanditHurt.png",3,16,16 );
	sprite_replace(sprBanditBossDead,"resources/Enemies/JungleBigBandit/JungleBigBanditDead.png",9,16,16 );
	}
	
if(GameCont.area == 5){
	sprite_replace(sprBossIntro,"resources/Enemies/SnowBigBandit/sprBossIntro.png",10,150,0 );
	sprite_replace(sprBanditBossIdle,"resources/Enemies/SnowBigBandit/sprSnowBigBanditIdle.png",6,16,16 );
	sprite_replace(sprBanditBossWalk,"resources/Enemies/SnowBigBandit/sprSnowBigBanditWalk.png",8,16,16 );
	sprite_replace(sprBanditBossFire,"resources/Enemies/SnowBigBandit/sprSnowBigBanditFire.png",2,16,16 );
	sprite_replace(sprBanditBossTell,"resources/Enemies/SnowBigBandit/sprSnowBigBanditTell.png",2,16,16 );
	sprite_replace(sprBanditBossDash,"resources/Enemies/SnowBigBandit/sprSnowBigBanditDash.png",2,16,16 );
	sprite_replace(sprBanditBossStop,"resources/Enemies/SnowBigBandit/sprSnowBigBanditStop.png",2,16,16 );
	sprite_replace(sprBanditBossHurt,"resources/Enemies/SnowBigBandit/sprSnowBigBanditHurt.png",3,16,16 );
	sprite_replace(sprBanditBossDead,"resources/Enemies/SnowBigBandit/sprSnowBigBanditDead.png",9,16,16 );
	}

if(global.options.idpd_seek == 1 && GameCont.area == 106){
	instance_create(0,0,WantVan);
	}

if(global.options.chest_replacments == true){
	chest_replacer ();
}

//Adding darknes to palace, jungles and night desert
if((GameCont.area == 7 || GameCont.area == 105 || GameCont.area == 0 || (GameCont.area == 106 && GameCont.subarea == 2)) && global.options.add_dark == true){
	TopCont.darkness = 1;
}

if(GameCont.area == 106 && GameCont.subarea == 2){
	sound_play_music(mus106b);
	}

if (instance_exists(CarVenus) && global.options.fix_venus_car)
    fix_car_venus();

add_more_enemies();

// Считаем сколько врагов на локации
global.enemies_on_start = 0;
with(enemy){
    global.enemies_on_start++;
}

// -----Enemies------ //
#define add_more_enemies
if (!instance_exists(Player)) return;
// IDPD Seek
if (global.options.idpd_seek > 1 && GameCont.crown != crwn_none && !(GameCont.area == 107) && global.no_idpd_for_cap == false){
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,WantPopo);
	}
	
if (global.options.idpd_seek > 1 && GameCont.seenhq == 1 && !(GameCont.area == 107) && global.no_idpd_for_cap == false){
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,WantPopo);
		instance_create(0,0,WantVan);
	}
	
if (global.options.idpd_seek > 1 && global.cap_spawned == true && !(GameCont.area == 107)){
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,WantPopo);
		instance_create(0,0,WantVan);
	}

if (global.options.idpd_seek > 0 && GameCont.area == 5 && GameCont.subarea == 1){
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,IDPDSpawn);
	}
	
if (global.options.idpd_seek > 0 && (GameCont.area == 5 && GameCont.subarea == 2) || (GameCont.area == 6 && GameCont.subarea == 1) || (GameCont.area == 7 && GameCont.subarea == 1)){
		repeat(4)instance_create(0,0,IDPDSpawn);
		instance_create(0,0,WantPopo);
		instance_create(0,0,WantVan);
	}
	
if (global.options.idpd_seek > 0 && (GameCont.area == 5 && GameCont.subarea == 3) || (GameCont.area == 7 && GameCont.subarea == 2)){
		repeat(4)instance_create(0,0,IDPDSpawn);
		instance_create(0,0,WantPopo);
		instance_create(0,0,WantVan);
	}

if (global.options.idpd_seek > 1 && (GameCont.area == 5 && GameCont.subarea == 3) || (GameCont.area == 7 && GameCont.subarea == 2)){
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,WantPopo);
		instance_create(0,0,WantVan);
	}

//Disables spawnpools on 7-3 and HQ3	
if ((GameCont.area = areas.palace || GameCont.area = areas.IDPD) && GameCont.subarea == 3) return;
// Pool is P, W
var pool = get_pool(); 

global.factor += 1;
//if (GameCont.crown == crwn_blood) global.factor *= opt.blood_factor;
var guarantee = 1 + (GameCont.loops * 2);

var spawned = 0;

with(Floor){
    // Too close to spawn
    if(point_distance(x,y,Player.x,Player.x) < 7 * 16) continue;
    // Check if place is free
    if(!place_meeting(x, y, Wall) && !place_meeting(x, y, prop) && !place_meeting(x, y, chestprop) && !place_meeting(x, y, MaggotSpawn) && !place_meeting(x,y,enemy)) continue;

/*	if(GameCont.area == 1 || GameCont.area == 2 || GameCont.area == 3 || GameCont.area == 4 || GameCont.area == 5 || GameCont.area == 7 || GameCont.area == 101 || GameCont.area == 102 || GameCont.area == 103 || GameCont.area == 104 || GameCont.area == 105){
		if(random(15) < ((GameCont.hard * global.eem)+1)){
			if(GameCont.loops < 1){
				var random_idpd = choose(Grunt,Grunt,Grunt,Inspector,Shieldier);
				with instance_create(x,y,random_idpd){
					raddrop = irandom(24) + 1;
				}
			}
			else{
				var random_idpd = choose(Grunt,Grunt,Grunt,Inspector,Shieldier,EliteGrunt,EliteInspector,EliteShielder);
				with instance_create(x,y,random_idpd){
					if(global.options.idpd_mashup == false){
						raddrop = irandom(24) + 1 + (GameCont.loops * 8);
					}
					else{
						raddrop = irandom(24) + 1 + (GameCont.loops * 6);
					}
				}
			}
		}
	}*/
	
	if(global.ultrachest_spawned == false && (GameCont.area == 1 || GameCont.area == 3) && GameCont.vaults > 2 && GameCont.subarea == 2){
		var can_spawn_challange = true;

		if(can_spawn_challange == true){
			with instance_create(x,y,CustomObject){ 
						UltraChest = 1;
			}
			with instance_create(x,y,PortalClear){
				image_xscale = 2;
				image_yscale = 2;
			}
			global.ultrachest_spawned = true;
		}
	}
	
	if(global.cap_spawned == false && GameCont.area == 0 && GameCont.loops == 5 && global.options.l5cap == true){
            var can_spawn_cap = true; 
				
			if(can_spawn_cap == true){
				instance_create(x,y,Last);
				sound_play(sndUseVan);
				global.cap_spawned = true;
			}
        }
		
    if(!global.crown_guardian_spawned && GameCont.subarea == global.crown_guardian_sublocation && GameCont.vaults == 3 && global.options.crown_guardian_on_max == true){
        var can_spawn = false;
        for (i=0; i < array_length(global.crown_guardian_locations); i++) { 
            if(global.crown_guardian_locations[i] == GameCont.area)
                can_spawn = true; 
        }

        if(can_spawn == true){
				repeat(global.amount_of_crown_guardians * 2) instance_create(x,y,CrownGuardian);
				sound_play(sndStatueDead);
				if (GameCont.area != 1 && GameCont.loops > 3){
					repeat(4) instance_create(x,y,BanditBoss);
				}
				if((GameCont.area == 1 || GameCont.area == 3) && GameCont.loops > 1){
					repeat(global.amount_of_crown_guardians * 2) instance_create(x,y,CrownGuardian);
					sound_play(sndStatueDead);
				}
			}
			global.amount_of_crown_guardians = 0;
        global.crown_guardian_spawned = true;
    }

    // Placeing guaranteed amount of enemies
    if(spawned < guarantee){
        var inst = pull_from_pool(pool);
		instance_create(x + 16,y + 16,inst);
		instance_create(x + 16,y + 16,PortalClear);
        spawned++;
        continue;
    }

    if(irandom(50) <= (global.factor * global.eem) * global.enemy_factor){
        instance_create(x + 16,y + 16,pull_from_pool(pool));
		instance_create(x + 16,y + 16,PortalClear);
        spawned++;
    }
}

//trace("Placed: " + string(spawned)+"/"+string(guarantee)); // Debug
			
if (GameCont.area == areas.jungle)
    add_ravens();

if (global.options.cursing_enabled && GameCont.crown != crwn_none)
	curse_c();
	
#define curse_c

with(Spider){
	if(GameCont.crown == crwn_curses){
		if(irandom(2) < 2){
			instance_create(x,y,InvSpider);
			instance_delete(self);
		}
	}
	else{
		if(irandom(6) < 1){
			instance_create(x,y,InvSpider);
			instance_delete(self);
		}
	}
}

with(LaserCrystal){
	if(GameCont.crown == crwn_curses){
		if(irandom(2) < 2){
			instance_create(x,y,InvLaserCrystal);
			instance_delete(self);
		}
	}
	else{
		if(irandom(6) < 1){
			instance_create(x,y,InvLaserCrystal);
			instance_delete(self);
		}
	}
}

// -------------- //
#define fix_car_venus
    with(CarVenus){
        instance_delete(self);
        instance_create(x,y,CarVenusFixed);
        for (i=0; i < array_length(global.CarVenus_Guards); i++) { 
            instance_create(x,y,global.CarVenus_Guards[i]);
			with (CarVenusFixed){
				my_health = 1000000000;
				}
        }
    }

// -------------- //
#define chest_replacer
switch (GameCont.area) {	
	case areas.pizza:
		with(RadChest){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		with(RogueChest){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		with(SuperMimic){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		with(AmmoChest){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		with(AmmoChestMystery){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		with(IDPDChest){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		with(Mimic){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		break;
	case "pizza":
		with(RadChest){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		with(RogueChest){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		with(SuperMimic){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		with(AmmoChest){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		with(AmmoChestMystery){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		with(IDPDChest){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		with(Mimic){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		break;	
	case "turtles":
		with(RadChest){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		with(RogueChest){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		with(SuperMimic){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		with(AmmoChest){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		with(AmmoChestMystery){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		with(IDPDChest){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		with(Mimic){
			instance_create(x,y,RadChest);
			instance_delete(self);
		}
		break;		
	case areas.IDPD:
		with(RadChest){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		with(SuperMimic){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		break;
	case "HQ":
		with(RadChest){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		with(SuperMimic){
			instance_create(x,y,HealthChest);
			instance_delete(self);
		}
		break;
	case areas.labs:
		with(AmmoChest){
			instance_create(x,y,Mimic);
			instance_delete(self);
		}
		with(AmmoChestMystery){
			instance_create(x,y,Mimic);
			instance_delete(self);
		}		
		with(HealthChest){
			instance_create(x,y,SuperMimic);
			instance_delete(self);
		}
		break;
	case "labs":
		with(AmmoChest){
			instance_create(x,y,Mimic);
			instance_delete(self);
		}
		with(AmmoChestMystery){
			instance_create(x,y,Mimic);
			instance_delete(self);
		}		
		with(HealthChest){
			instance_create(x,y,SuperMimic);
			instance_delete(self);
		}
		break;
}


// -------------- //
#define add_ravens
var need_to_add = GameCont.loops * (global.options.more_ravens_in_jungle * 5);

with(Raven){
    for (i=0; i < need_to_add; i++) 
        instance_create(x,y,Raven);
}

// -------------- //
#define pull_from_pool(pool)
var f_enemy = Wind;
var attempts = 0;

while(f_enemy == Wind){
    var rand = irandom(array_length(pool.p) - 1);
    var w_rand = irandom(100);
    if (w_rand < pool.w[rand] * 100){
        f_enemy = pool.p[rand];
    }
    // You're lucky if this happens to you
    if(attempts >= global.attmpts_to_add_enemies) {
        break;
    }
    attempts++;
}

return f_enemy;

#define get_pool

var pool = global.empty_pool;
var pool_w = global.empty_pool_w;

// Setting a pool to area
switch (GameCont.area) {
    case areas.night_desert:
        pool = global.desert_pool;
        pool_w = global.desert_pool_w;
        break;
    case areas.desert:
        pool = global.desert_pool;
        pool_w = global.desert_pool_w;
        break;
    case areas.sewers:
        pool = global.sewers_pool;
        pool_w = global.sewers_pool_w;
        break;
    case areas.scrapyard:
        pool = global.scrapyard_pool;
        pool_w = global.scrapyard_pool_w;
        break;
    case areas.crystals_caves:
        pool = global.crystals_caves_pool;
        pool_w = global.crystals_caves_pool_w;
        break;
    case areas.winter:
        pool = global.winter_pool;
        pool_w = global.winter_pool_w;
        break;
    case areas.labs:
        pool = global.labs_pool;
        pool_w = global.labs_pool_w;
        break;
    case areas.palace:
        pool = global.palace_pool;
        pool_w = global.palace_pool_w;
        break;
    case areas.vault:
        pool = global.vault_pool;
        pool_w = global.vault_pool_w;
        break;
    case areas.oasis:
        pool = global.oasis_pool;
        pool_w = global.oasis_pool_w;
        break;
    case areas.pizza:
        pool = global.pizza_pool;
        pool_w = global.pizza_pool_w;
        break;
    case areas.mansion:
        pool = global.mansion_pool;
        pool_w = global.mansion_pool_w;
        break;
    case areas.cursed_crystals_caves:
        pool = global.cursed_crystals_caves_pool;
        pool_w = global.cursed_crystals_caves_pool_w;
        break;
    case areas.jungle:
        pool = global.jungle_pool;
        pool_w = global.jungle_pool_w;
        break;
    case areas.IDPD:
        pool = global.IDPD_pool;
        pool_w = global.IDPD_pool_w;
        break;
    case areas.vacation:
        pool = global.vacation_pool;
        pool_w = global.vacation_pool_w;
        break;
	case "coast":
        pool = global.nttecoast_pool;
        pool_w = global.nttecoast_pool_w;
        break;
	case "oasis":
        pool = global.oasis_pool;
        pool_w = global.oasis_pool_w;
        break;
	case "trench":
        pool = global.nttetrench_pool;
        pool_w = global.nttetrench_pool_w;
        break;
	case "red":
        pool = global.nttered_pool;
        pool_w = global.nttered_pool_w;
        break;
	case "pizza":
        pool = global.pizza_pool;
        pool_w = global.pizza_pool_w;
        break;
	case "lair":
        pool = global.pizza_pool;
        pool_w = global.pizza_pool_w;
        break;
    case "nightdesert":
        pool = global.cursed_crystals_caves_pool;
        pool_w = global.cursed_crystals_caves_pool_w;
        break;
	case "scorpionboss":
        pool = global.pizza_pool;
        pool_w = global.pizza_pool_w;
        break;	
	case "sewers":
        pool = global.sewers_pool;
        pool_w = global.sewers_pool_w;
        break;	
	case "turtles":
        pool = global.pizza_pool;
        pool_w = global.pizza_pool_w;
        break;
	case "ravenboss":
        pool = global.scrapyard_pool;
        pool_w = global.scrapyard_pool_w;
        break;	
	case "junkyard":
        pool = global.scrapyard_pool;
        pool_w = global.scrapyard_pool_w;
        break;	
	case "caves":
        pool = global.crystals_caves_pool;
        pool_w = global.crystals_caves_pool_w;
        break;
	case "city":
        pool = global.winter_pool;
        pool_w = global.winter_pool_w;
        break;	
	case "noyetihere":
        pool = global.empty_pool;
        pool_w = global.empty_pool_w;
        break;
	case "labs":
        pool = global.labs_pool;
        pool_w = global.labs_pool_w;
        break;	
	case "elevator":
        pool = global.empty_pool;
        pool_w = global.empty_pool_w;
        break;	
	case "palace":
        pool = global.palace_pool;
        pool_w = global.palace_pool_w;
        break;
	case "venuz":
        pool = global.empty_pool;
        pool_w = global.empty_pool_w;
        break;	
	case "icecave":
        pool = global.hmicecaves_pool;
        pool_w = global.hmicecaves_pool_w;
        break;	
	case "jungle":
        pool = global.jungle_pool;
        pool_w = global.jungle_pool_w;
        break;	
	case "HQ":
        pool = global.IDPD_pool;
        pool_w = global.IDPD_pool_w;
        break;	
	case "hive":
        pool = global.hive_pool;
        pool_w = global.hive_pool_w;
        break;	
	case "undergrowth":
        pool = global.undergrowth_pool;
        pool_w = global.undergrowth_pool_w;
        break;	
	case "underpalace":
        pool = global.palace_pool;
        pool_w = global.palace_pool_w;
        break;
	case "moon":
        pool = global.moon_pool;
        pool_w = global.moon_pool_w;
        break;	
	case "terminal":
        pool = global.empty_pool;
        pool_w = global.empty_pool_w;
        break;
	case "terminal_transition":
        pool = global.empty_pool;
        pool_w = global.empty_pool_w;
        break;	
	case "burntdesert":
        pool = global.desert_pool;
        pool_w = global.desert_pool_w;
        break;	
    default:
        break;
}

var curr_loop = clamp(GameCont.loops,0,array_length(pool) - 1);
// Returning a pool
return {
    p:pool[curr_loop],
    w:pool_w[curr_loop]
}

#define draw_dark
with Pillar{
	draw_circle(x, y, 30+random(3), false)
	}
	
with SmallGenerator{
	draw_circle(x, y, 30+random(3), false)
	}
	
if (instance_exists(Nothing)){
with Generator{
	draw_circle(x, y, 90+random(3), false)
	}
}

with Guardian{
	draw_circle(x, y, 30+random(3), false)
	}

with ExploGuardian{
	draw_circle(x, y, 30+random(3), false)
	}
	
with DogGuardian{
	draw_circle(x, y, 50+random(3), false)
	}
	
with EnemyHorror{
	draw_circle(x, y, 30+random(3), false)
	}
	
with GuardianBullet{
	draw_circle(x, y, 20+random(3), false)
	}
	
with BigGuardianBullet{
	draw_circle(x, y, 50+random(3), false)
	}	
	
with NothingBeam{
	draw_circle(x, y, 30+random(3), false)
	}
	
with Nothing{
	draw_circle(x, y, 100+random(3), false)
	}

with BlueFlame{
	draw_circle(x, y, 20+random(3), false)
	}	
	
with Campfire{
	draw_circle(x, y, 30+random(3), false)
	}
	
with CaveSparkle{
	draw_circle(x, y, 5+random(3), false)
	}
	
with EliteGruntFlame{
	draw_circle(x, y, 5+random(3), false)
	}
	
with EnemyLaser{
	draw_circle(x, y, 5+random(3), false)
	}
	
with EnemyLightning{
	draw_circle(x, y, 5+random(3), false)
	}	
	
with EnergyHammerSlash{
	draw_circle(x + 30, y, 50+random(3), false)
	}

with EnergyShank{
	draw_circle(x + 10, y, 20+random(3), false)
	}
	
with EnergySlash{
	draw_circle(x + 30, y, 40+random(3), false)
	}

with FireBall{
	draw_circle(x, y, 20+random(3), false)
	}

with FireFly{
	draw_circle(x, y, 5+random(3), false)
	}
	
with FlameShell{
	draw_circle(x, y, 20+random(3), false)
	}
	
with GammaBlast{
	draw_circle(x, y, 20+random(3), false)
	}
	
with Generator{
	draw_circle(x, y, 75+random(3), false)
	}

with GroundFlame{
	draw_circle(x, y, 20+random(3), false)
	}
	
with GunGun{
	draw_circle(x, y, 20+random(3), false)
	}
	
with IDPDBullet{
	draw_circle(x, y, 10+random(3), false)
	}
	
with IDPDPortalCharge{
	draw_circle(x, y, 5+random(3), false)
	}

with Laser{
	draw_circle(x, y, 5+random(3), false)
	}

with LaserCannon{
	draw_circle(x, y, 20+random(3), false)
	}

with LaserCharge{
	draw_circle(x, y, 5+random(3), false)
	}
	
with Lightning{
	draw_circle(x, y, 5+random(3), false)
	}

with LightningBall{
	draw_circle(x, y, 25+random(3), false)
	}
	
with LightningSlash{
	draw_circle(x + 30, y, 30+random(3), false)
	}
	
with LightningHit{
	draw_circle(x, y, 5+random(3), false)
	}
	
with LightningSpawn{
	draw_circle(x, y, 5+random(3), false)
	}
	
with NecroReviveArea{
	draw_circle(x, y, 15+random(3), false)
	}

with PlasmaBall{
	draw_circle(x, y, 20+random(3), false)
	}

with PlasmaBig{
	draw_circle(x, y, 40+random(3), false)
	}
	
with PlasmaHuge{
	draw_circle(x, y, 60+random(3), false)
	}
	
with PlasmaImpact{
	draw_circle(x, y, 20+random(3), false)
	}
	
with PlasmaTrail{
	draw_circle(x, y, 5+random(3), false)
	}
	
with PopoPlasmaBall{
	draw_circle(x, y, 20+random(3), false)
	}

with PopoRocket{
	draw_circle(x, y, 20+random(3), false)
	}

with PopoSlug{
	draw_circle(x, y, 15+random(3), false)
	}
	
with RadChest{
	draw_circle(x, y, 15+random(3), false)
	}
	
with RevivePopoFreak{
	draw_circle(x, y, 20+random(3), false)
	}
	
with Rocket{
	draw_circle(x, y, 20+random(3), false)
	}
	
with Salamander{
	draw_circle(x, y, 30+random(3), false)
	}

with StreetLight{
	draw_circle(x, y, 30+random(3), false)
	}

if((GameCont.area == 1 || GameCont.area == 3 || GameCont.area == 5) && global.last_vault == false){	
with Player{
	draw_circle(x, y, 200+random(3), false)
	}
}