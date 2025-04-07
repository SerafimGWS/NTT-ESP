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
global.desert_pool = [[FireBaller, Salamander], [FireBaller, Salamander, Guardian, ExploGuardian], [Salamander, Guardian, ExploGuardian, SuperFireBaller, DogGuardian], [Salamander, Guardian, ExploGuardian, SuperFireBaller, DogGuardian]];
global.desert_pool_w = [[0.03,0.03],[0.6,0.6,0.2,0.2],[1,1,1,0.6,0.4],[1,1,1,1,0.8]];
// Sewers
global.sewers_pool = [[Turtle, FireBaller], [Turtle, FireBaller, JungleBandit, Spider], [Necromancer, Turtle, FireBaller, Spider, JungleFly, JungleBandit, JungleAssassinHide, RatkingRage], [Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, Guardian, JungleAssassinHide, JungleBandit, RatkingRage, RhinoFreak], [Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, Guardian, ExploGuardian, JungleBandit, BanditBoss, RatkingRage, RhinoFreak, JungleAssassinHide], [Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, Guardian, ExploGuardian, DogGuardian, BanditBoss, RatkingRage, RhinoFreak, JungleAssassinHide, JungleBandit], [Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, Guardian, ExploGuardian, DogGuardian, BanditBoss, RatkingRage, RhinoFreak, JungleAssassinHide, JungleBandit]];
global.sewers_pool_w = [[0.5,0.5],[1,1,1,1],[0.4,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,0.125,1,1,1],[1,1,1,1,1,1,1,1,0.6,0.25,1,1,1,1],[1,1,1,1,1,1,1,1,0.9,0.35,1,1,1,1]];
// Scrapyard
global.scrapyard_pool = [[Wolf, Jock], [Ratking, Crab, Wolf, Jock], [ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret, Guardian, ExploGuardian, Ratking], [ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret, Guardian, ExploGuardian, DogGuardian, TechnoMancer, BecomeTurret, Ratking, RatkingRage], [ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret, Guardian, ExploGuardian, DogGuardian, TechnoMancer, BecomeTurret, BanditBoss, Ratking, RatkingRage], [ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret, Guardian, ExploGuardian, DogGuardian, TechnoMancer, BecomeTurret, BanditBoss, Ratking, RatkingRage]];
global.scrapyard_pool_w = [[0.1,0.03],[0.125,0.125,0.125,0.125,0.125],[0.2,1,1,0.2,1,1,1,1,1,1],[0.2,1,0.2,1,1,1,1,1,0.4,0.125,1,1,1],[0.2,1,1,0.2,1,1,1,1,0.75,0.25,1,0.2,1,1],[0.2,1,1,0.2,1,1,1,1,1,0.35,1,0.35,1,1]];
// Crystal caves 
global.crystals_caves_pool = [[Molesarge], [Molesarge, Guardian, SuperFireBaller], [Necromancer, Guardian, SuperFireBaller, ExploGuardian, DogGuardian, Molesarge], [Necromancer, Guardian, SuperFireBaller, ExploGuardian, DogGuardian, BanditBoss, Molesarge], [Necromancer, Guardian, SuperFireBaller, ExploGuardian, DogGuardian, BanditBoss, Molesarge]];
global.crystals_caves_pool_w = [[0.05],[0.4,0.3,0.15],[1,1,0.6,1,0.3,1],[1,1,1,1,0.5,0.25,1],[1,1,1,1,0.9,0.35,1]];
// Winter
global.winter_pool = [[PopoFreak, StreetLight, Wind], [Jock, Sniper, PopoFreak], [Jock, Sniper, PopoFreak, Turret, BecomeTurret, Guardian], [Jock, Sniper, PopoFreak, Turret, BecomeTurret, Guardian, TechnoMancer], [Jock, Sniper, PopoFreak, Turret, BecomeTurret, Guardian, TechnoMancer]];
global.winter_pool_w = [[0.005,0.25,1],[0.25,0.25,0.1],[0.25,1,0.4,1,1,1],[1,1,1,1,1,1,0.1],[1,1,1,1,1,1,0.35]];
// Labs
global.labs_pool = [[PopoFreak, BigMaggot, FrogEgg, Rat], [PopoFreak, JungleFly, FrogEgg, SuperFrog, BuffGator, Guardian], [PopoFreak, JungleFly, FrogEgg, SuperFrog, BuffGator, Guardian, ExploGuardian, LightningCrystal, RatkingRage], [PopoFreak, JungleFly, FrogEgg, SuperFrog, BuffGator, Guardian, ExploGuardian, LightningCrystal, RatkingRage, DogGuardian]];
global.labs_pool_w = [[0.25,0.4,1,1],[0.35,0.35,1,0.25,0.2,0.3],[1,1,1,1,1,1,0.8,0.4,1],[1,1,1,1,1,1,1,0.4,1,0.8]];
// Palace
global.palace_pool = [[Gator, GatorSmoke], [Gator, JungleAssassin, BuffGator], [Gator, JungleAssassin, PopoFreak, Turret, BuffGator], [Gator, JungleAssassin, PopoFreak, Turret, BecomeTurret, CrownGuardian, BuffGator]];
global.palace_pool_w = [[0.3,0.3],[1,1,0.3],[1,1,1,1,0.25],[1,1,1,1,1,0.25,1]];
// Vault
global.vault_pool = [[Torch]];
global.vault_pool_w = [[1]];
// Oasis
global.oasis_pool = [[Turtle, Exploder, Gator, Freak], [Turtle, Exploder, Gator, Freak, BuffGator, SuperFrog], [Turtle, Exploder, Gator, Freak, BuffGator, SuperFrog, OasisBoss, Guardian, ExploGuardian], [Turtle, Exploder, Gator, Freak, BuffGator, SuperFrog, OasisBoss, Guardian, ExploGuardian, DogGuardian, BanditBoss]];
global.oasis_pool_w = [[0.5,1,1,1],[1,1,1,1,0.3,0.3],[1,1,1,1,1,1,0.4,1,1],[1,1,1,1,1,1,1,1,1,1,0.4]];
// PIZZA!
global.pizza_pool = [[Crab]];
global.pizza_pool_w = [[0]];
// Mansion
global.mansion_pool = [[GoldScorpion], [GoldScorpion, GoldSnowTank, Wind], [GoldScorpion, GoldSnowTank, Guardian, ExploGuardian], [GoldScorpion, GoldSnowTank, Guardian, ExploGuardian, DogGuardian], [GoldScorpion, GoldSnowTank, Guardian, ExploGuardian, DogGuardian, BanditBoss]];
global.mansion_pool_w = [[0],[0.05,0.025,1],[0.25,0.15,1,1],[0.75,0.6,1,1,0.5],[1,1,1,1,0.75,0.4]];
// Cursed crystal caves
global.cursed_crystals_caves_pool = [[MeleeFake, FireBaller], [MeleeFake, FireBaller, Guardian, ExploGuardian], [MeleeFake, FireBaller, Guardian, ExploGuardian, DogGuardian, BanditBoss]];
global.cursed_crystals_caves_pool_w = [[1,1],[1,1,1,1],[1,1,1,1,1,0.35]];
// Jungle
global.jungle_pool = [[Raven, Gator, Exploder, Car], [Raven, Gator, Exploder, SuperFrog, SuperFireBaller, ExploFreak, Car], [Raven, Gator, Exploder, SuperFrog, ExploFreak, SuperFireBaller, Guardian, Sniper, ExploGuardian, Car], [Raven, Gator, Exploder, SuperFrog, ExploFreak, SuperFireBaller, Guardian, Sniper, ExploGuardian, DogGuardian, BanditBoss, Car]];
global.jungle_pool_w = [[1,1,1,1],[1,1,1,0.4,0.4,0.6,1],[1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,0.5,0.3,1]];
// IDPD palace
global.IDPD_pool = [[Turret],[Turret, BecomeTurret],[Turret, BecomeTurret, PopoFreak]];
global.IDPD_pool_w = [[0],[0.25,0.25],[0.5,0.5,0.25]];
// Vacation
global.vacation_pool = [[GoldChest]];
global.vacation_pool_w = [[1]];
// Coast
global.nttecoast_pool = [[Bandit, Maggot, BigMaggot, MaggotSpawn], [Bandit, Maggot, BigMaggot, MaggotSpawn, Salamander, JungleFly], [Bandit, Maggot, BigMaggot, MaggotSpawn, Salamander, JungleFly, Guardian, ExploGuardian], [Bandit, Maggot, BigMaggot, MaggotSpawn, Salamander, JungleFly, Guardian, ExploGuardian, DogGuardian, BanditBoss]];
global.nttecoast_pool_w = [[1,1,0.25,0.5], [1,1,1,1,0.3,0.5], [1,1,1,1,1,1,0.5,0.5], [1,1,1,1,1,1,1,1,0.4,0.25]];
// Abbyss
global.nttetrench_pool = [[Freak, Freak, BoneFish, MeleeFake], [Freak, Freak, BoneFish, MeleeFake, Guardian, OasisBoss], [Freak, Freak, BoneFish, MeleeFake, Guardian, OasisBoss, ExploGuardian, DogGuardian]];
global.nttetrench_pool_w = [[1,1,1,1],[1,1,1,1,0.3,0.1],[1,1,1,1,1,0.25,1,0.4]];
// Red
global.nttered_pool = [[Molefish], [Molefish, ExploFreak, SuperFireBaller], [Molefish, ExploFreak, SuperFireBaller, Guardian, ExploGuardian], [Molefish, ExploFreak, SuperFireBaller, Guardian, ExploGuardian, DogGuardian, BanditBoss]];
global.nttered_pool_w = [[1], [1,0.25,0.2], [1,0.5,0.4,0.5,0.4], [1,0.8,1,1,1,0.4,0.25]];
// Ice Caves
global.hmicecaves_pool = [[Jock, Necromancer], [Jock, Necromancer, Guardian], [Jock, Necromancer, Guardian, ExploGuardian, DogGuardian]];
global.hmicecaves_pool_w = [[0.2,0.1],[0.5,0.5,0.5],[1,1,1,1,1]];
// Hive
global.hive_pool = [[Spider, LaserCrystal], [Spider, LaserCrystal, JungleFly, Molesarge], [Spider, LaserCrystal, JungleFly, RhinoFreak, Molesarge, GoldSnowTank, Guardian], [Spider, LaserCrystal, JungleFly, RhinoFreak, Molesarge, GoldSnowTank, Guardian, ExploGuardian, DogGuardian, ExploFreak]];
global.hive_pool_w = [[0.125,0.025],[1,0.75,0.5,1],[1,1,1,1,0.5,1],[1,1,1,1,1,1,1,0.6,0.5]];
// Undergrowth
global.undergrowth_pool = [[Salamander, FireBaller], [Salamander, FireBaller, SuperFireBaller, JungleBandit, JungleAssassin], [Salamander, FireBaller, SuperFireBaller, JungleBandit, JungleAssassin, ExploFreak, Guardian], [Salamander, FireBaller, SuperFireBaller, JungleBandit, JungleAssassin, ExploFreak, Guardian, ExploGuardian, DogGuardian]];
global.undergrowth_pool_w = [[0.07,0.2],[0.6,1,0.3,0.5,0.3],[1,1,0.8,1,1,0.5,1],[1,1,1,1,1,0.8,1,1,0.4]];
// Moon
global.moon_pool = [[SnowTank], [SnowTank], [SnowTank, PopoFreak, Guardian], [SnowTank, PopoFreak, Guardian, ExploGuardian, DogGuardian], [SnowTank, PopoFreak, Guardian, ExploGuardian, DogGuardian]];
global.moon_pool_w = [[0.125],[0.25],[0.5,0.5,0.5],[1,1,1,1,0.4],[1,1,1,1,0.8]];
// Empty
global.empty_pool = [[Crab]];
global.empty_pool_w = [[0]];

// Enemies that spawns near cars
global.CarVenus_Guards = [Molefish, Molefish, Molefish, Molefish, Molefish, Molefish, Molesarge, Molesarge, Molesarge];
// Areas/Sub areas where you can find CrownGuardian
global.crown_guardian_locations = [areas.desert,areas.scrapyard,areas.winter,areas.palace,"coast","trench","hive"];
global.crown_guardian_sublocation = 2;

#macro opt global.g_opt

if ("esp_mod_opt" in GameCont) {
	opt = GameCont.esp_mod_opt;
} else opt = {
    // Blood crown factor
	blood_factor: 1.5,
    // Enemies factor on location
    enemy_factor: 1,
    // Max loops to try add emenies
    attmpts_to_add_enemies: 15,
    // Guaranteed amount enemies on area
    enemies_guaranteed: 1,
    // Add guaranteed amount enemies on area every loop
    loop_guranteed_add: 2,
    //
    chance_to_not_spawn: 50,
    // Van spawn after killing Lil Hunter
    lilhunter_revenge: true,
    // Fixs Venus car in scrapyard and adds enemies near car
    fix_venus_car: true,
    // Adds more crows in jungle
    more_ravens_in_jungle: 1,
    // After 3th vaul insted of portal to vault Crown Guards will spawn
    crown_guardian_on_max: true,
	// Enable curse on some enemies on crystal cave
	cursing_enabled: true,
	// Every crystal to replace a with a cursed variant
	evry_cursed_crystal: 0.14,
	// Every crystal to replace a with a cursed variant with a cursed crown
	cured_evry_cursed_crystal: 0.66,
	// If you have a crown, IDPD will seek you on start of area and on killing 50% of area
	IDPD_seek: 1,
	// Replaces all shielders with inspectors before 4-1
	nes: true,
	// Replaces all vans with 4 IDPD Portals in labs
	piov: true,
	// Disables inf revives of Popo freaks before 3rd loop
	diropf: false,
	// Adds darkness to some areas
	add_dark: true,
	// Adds popo freaks to 2nd loop and elites to 3rd loop
	idpd_mashup: true,
	//Removes Jocks
	no_jocks: false,
	//Spawns 1 time Captain on 0-1 L5
	l5cap: false,
	//several modes
	no_addinational_enemies: false,
	//Death effect for certain enemies after reaching L1, 2 or 3
	death_effects: true,
	//Removes new tips
	no_new_tips: false,
	//Removes new parcticles
	no_new_parcticles: false,
	//Removes guards
	no_guards: false,
	//Chest replacments
	chest_replacments: true,
	//Curses all weapons on floor in Cursed Crystal Caves
	cursed_caves_rework: true,
	//Enemies mutations - teleports for gators on L1+ and bouncers for snipers, snow tanks and gold snow tanks
	enemies_mutations: true,
	//Crown guardian help
	crown_guardian_help: true,
	popups: true,
	hammerhead_time: 0,
	fire_explosions: true,
	floor_changes: true,
	bonus_loop_max_health: true,
	special_code: "insert your code here",
	seed: ""
};

// -----Commands zone------- //
trace("Thanks for installing the Extended Spawn Pools 2.0 Beta Build 070425 mod!");
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

//Sprites
global.SnowSniperIdle = sprite_add("sprSnowSniperIdle.png", 4, 12, 12);
global.SnowSniperWalk = sprite_add("sprSnowSniperWalk.png", 6, 12, 12);
global.SnowSniperHurt = sprite_add("sprSnowSniperHurt.png", 3, 12, 12);
global.SnowSniperDead = sprite_add("sprSnowSniperDead.png", 6, 12, 12);

global.sprCobWeb = sprite_add("sprCobWeb.png", 1,0,0);
global.IcePizza = sprite_add("sprPizzaEntranceIce_strip2.png", 2,0,0);

global.sprRadFalke = sprite_add("sprRadFlake_strip3.png",3,0,0);
global.sprSandFX = sprite_add("sprSandFX.png",1,0,0);
global.sprSandFXnight = sprite_add("sprSandFXnight.png",1,0,0);

global.sprJungleCarIdle = sprite_add("sprJungleCarIdle.png",1,0,0);
global.sprJungleCarHurt = sprite_add("sprJungleCarHurt.png",3,0,0);

global.sprOasisEnterIdle = sprite_add("sprOasisScrapyardEnterIdle.png",1,16,16);
global.sprOasisEnterHurt = sprite_add("sprOasisScrapyardEnterHurt.png",3,16,16);
global.sprOasisEnterDead = sprite_add("sprOasisScrapyardEnterDeadpng.png",1,8,8);
global.sndOasisEnterAppears = sound_add("sndWaterMineLand.ogg");

global.sndGatorTeleport = sound_add("teleport.ogg");

global.sprVacuumCleanerIdle = sprite_add("sprInspectorTankIdle.png",16,12,12);
global.sprVacuumCleanerHurt = sprite_add("sprInspectorTankHurt.png",3,12,12);
global.sprVacuumCleanerDead = sprite_add("sprInspectorTankDead.png",6,12,12);

global.sprBPickup = sprite_add("sprBPickup.png",2,6,12);

global.sprJungleSniperIdle = sprite_add("sprJungleSniperIdle.png",6,12,12);
global.sprJungleSniperWalk = sprite_add("sprJungleSniperWalk.png",6,12,12);
global.sprJungleSniperHurt = sprite_add("sprJungleSniperHurt.png",3,12,12);
global.sprJungleSniperDead = sprite_add("sprJungleSniperDead.png",6,12,12);

global.sprIDPDTankIdle = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAMAAAAAwCAYAAABHTnUeAAAAB3RJTUUH4QkEBgoVAAHncgAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAAD70lEQVR4nO2ZMa4UMQyGBypoQFRIHABR0iN4DQ2ioOIISLQchIJ7IFoeIApES8VdEK9bNissefOcxM4kcTzjkf5iZyfO99vOZGZ3efbmw+Jy7VXqAC6XptQBXC5NqQO4tq3jcQiaNb56glx9CzxD/Af3H3abY238KRLk8e02EDf+40fPu8yxNv40CfL4NhvIenzzBjy+nfg9bhQ4fo2HqRLk8e010Czxa2uwqwJY55+xgazzmzfg/Lb4qZvQ8v+HBIlS/FIPuyuAdf7ZGkjKD/Gx4vlzgmtz47suAOsFsM4/WwPV8Kd44XxOOU9DFsAWCmCdf6YGKrGn8lv6XMo/dT6+yXF8bLoA1vktNBCHmzunxEMpFtfHJgtgnd9SA1Hst2/ducbD8VB7E8rVEu/Y7AVguQDW+a01UIofe+Dsoq2Ecw8KLOwFsJUCWOe30kAUPx5X8tLKDxUXzy9eAJYLYJ3fUgOVPFCxSuLchCRxRO8A1gtgnd9aA6X4l8OBxdFbgUP8EryFAljnt9JAJQ9BTy5enfT23fvDpy/fznTv5ceTpFwwLo4XFOaBOat+BZqxANI7qHn+qIGo5unVQNBEQfj/DjH/UTn2cB44wCtXMC4VG8+R4yehS0FHFAAbiI1QZvbIP6qBWvHHMbDufj+IlIoDC7c0N7kA8FbFKUKvAsTngAdva1QBOPzwHagFP56LmrsFf655ejYQzlUNf8wNj4bUOYngvQpEncN+UvxnBgAaPztx1aoAlAAcJ5QqwF744waCc6JHM0bM2EMr/pqGlyyGswYv8JMGgqggIwsQJze+E+YKsHX+Gl6JlxH8eDFIFwT+ZS0lLv81E7MXgEr+HvnX+OHEG83fWlz+pAF8sWYBUkylAuyNv1cD9eLHY3BO45+Sf71eTor/UynVgcvPMjC6CFwmb6DrDRQLGig+D2M48UfwU484QX8ul5PgM/7jsQV/9XNczgC+DgzAZ46BVFJTz58t+Fs2kAa/1fynPJT+dZfEzvEnV/Hfq6tpDASW0t2nln9EA/Xkt57/+Hvu4yc1tobfvAFvIPv5z7FwxjVfAGGroAaNMJBKZmn7lfKnmkDaQKWYo/hr8z8bv1Rr+bOreAYDkrtPC/7WDTSa33r+R/PfXDLHi4unZ5+PA27krl97tI5fwx+uyak0diXy2bHH/K85auInF8DXy9/raBodn3/8rGJx/jbH5vml2xjedlpuYZL512zDzu/8WNlHoBlW8RoG519/bJ6/tLq4b/+t1WJu53f+0tysQFoGWszr/M6fvW40mMs1k9QBXC5NqQO4XJpSB3C5NKUO4HJpSh3A5dKUOoDLpSl1AJdLU/8AX4QiAsODnIkAAAAASUVORK5CYII=",4,24,24 );
global.sprIDPDTankHurt = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAJAAAAAwCAYAAAD+WvNWAAAAB3RJTUUH4QkFAxs3OM8gCAAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAADfElEQVR4nO1asY7UMBA1iAIaTtsAuoISUZ3okbgGISQKvgJEy4dQHN+BqA8QP8EnUCGaExXXLTtLLI28jj0Te2KPd0Z62kviTF5mnseTXNyzNxfOYFiK5gQMupE8uJ1M6uLS/ne2BZh/Of+kBEslWdo/BOf0/iOxJJh/hoAkkizt3wfoyePnIkkw/xfupjMzKzFOhahdJaT9OzTDJJYC7F+iSmjgfzQV6N7moZjv31c/xXx765X/0QjITMi4S0y4zMyNSRnHf80SHVsG3PQoy0HoX2oZ08B/kYCkTSoBPkAYYQBT8GNT50sKqEf+t+rUMT22C9b+N+wpKH2APwefu0b/g607/r1VH2yls9fNzNDcdm4Gx/aHy4wrfcOrhH+XwgmtJPDUoHGSkPNVIiRt/LsXjzdq8O/cvnsQUEoS8LgUKD5iPceo/Id8jL/682v/C+s7XuPD9T7sI2A7h9DCfgK28XU9l1H5DyegzcmDPeDGPbD54ITJKTHsCwd+iXjU8R+xBwrLNiwLVFCWAY4ft6AH0sR/SAHBTVACKQ3gsURAmvhHd7aVS9o4SQA8PX+9x7v3H7afv3w7wObVJ3Zg4RxAzF8IuK6LvAUehf+wApoLeBgcCKRPFhU+AblrwHGAFwFHQFr4Dyug3EzCOPm+ZWHOTwwQeHz90fh3J5wcn2zpnxALum8OY/s4gHOwD7wvJYRsP6GQf1ZAawqMUg1zCfDlNnbDSwNOTUaumlAEpI1/NwKaCypXQH5dj63ZYXnmPPrigIczOCUMroC08R9WQHMzmAtvuXG1BaSF/3Bvol+8PGONP50+j4jZ/7gf/p06p9TU8edUIMkqVKsCZZu+YOYdvDyLzF5vsU8eHGEG/72+JlcgbfyPXkCxJOD/TlOC31JArfkXC6iWqGoJKNVDxBKA9+Ua0FjgawtIG392wlLHqSKREhCexXDT1ASkZndsrJSANPIvElAuGDVEISmgpfypwcd8JATUA/9FCVtTQFzR5hKAA7hGAjCnGgLqjX/zx/jztx9vtOZQYrsgHjX/5gIy020moJXs6+WP1hSKbJZ/aX9S0gNJjHfoUdgV9AmUHkJivDb+yYT1IqAlAeopASPzH1ZAnA+4WiZAO/9mSZaGdJKN/8SzNQGDbjQnYNCN5gQMutGcgEE3mhMw6EZzAgbdaE7AoBvNCRh04x+E/sDEZNCT5AAAAABJRU5ErkJggg==",3,24,24 );
global.sprIDPDTankDead = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAJAAAAAwCAYAAAD+WvNWAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAGW0lEQVR42u3cz0scZxgH8O9bN+OOta5bm7jRJiSHGBEsUkoRahtCjE2iUGgPgYIlJxHSi+TWPyA3ycVAEISSQiGHCoGkjbFSUhIIUtoSqdT0ULGt2WjT7Rrj6EQ7PYR3fHf2nZl3frrrvs9p2dV33p33s8/z/lglhmFAhgy/QSQgGRKQDAlIhgQkQwKSIUMCkiE6+IQYAGAYBilnQLQDpFIHYaf7HqT/pQSoLBGFMQg7CTdo//0CCjtrxIoo7KwRJyJ6rbb2TszO3C87QNYfLitA9GYNDg3jyqULZQeIEGK0tXfi9QMNuP31zVCuxfbdT/+9AIoKT9RtmzdqcGgYPafewIfvnwx1oIMOwk7hCeMDIAoo8gGOMgtFiSeOLBQlnjgAxYEnMkBx4IkSECHE6DnTCwA4sD+DsbGxSAF57b8bIN6LcQAK5TqEEGN8YhIAcPrYu1CTyVgAhYWIzTw8PFGsxGh7oh8IJ0BueKJcidF2fWclNvPw8ES5EvM6CG54ABSVrjAznl3fe8704s8/nmB25r7tdewAieKJE5Dw9Vg8AIpKVxTlxm4QxicmcfvWA1y5dEH4el7wxAEIgO2WAQ+QFzwlB8gLnjgBARDaOrDioRnAy3twyq6EEIM+Tx87AXrw0y8AgOyjeSFAdvXMKyC38mYwrxk2WDwDsuKhn3yvgNzKm5dBGJ+YxPDFEQDAvTvXhQDRSbMIHt574WVY63Nu7bCA7PCIAiICwERKnBUKEWjP8Jp96KRZBI8dJLsBYG+86CBQQKJ4aPaxKx28azbUN+PJv3+Fuihoa+80HzvteLOA/GQf0YGHIBqRtl2zj13J4N38jtZu/PzrtxD5dLqhscbg0LD52Ev5cho4ev0aNQVd16AoKgBAra71jChRpQAAFEXFmpaPBBARmB/FGa6AnAaM3vymxhbk8lmkUxkAwL70wQJEXkJN1gEA0qkMFh8/DAwos/9QwXO0fLBw1OpaAED+6bIJyAlRokrB5pbOzVqJKgWpV/YCALSNVRMSLaNuG5eiGagUvjTkevPfOfZBwXO0bLBw9qUPAgDm5qdNQG6I1GQdtPUV2GUvNVmHo4feBgAs5RZMSLScim5gsgel7AqMIlAU1cRDQ9tYNfHQsCJqqG9G/umyiaihvhnaxip0XTPxsO11He+ynYP5AVQqQURuvnUFRgGkUxkTD42l3IKJhw0rpI7WbszNTxcg6mjtxlJuAbl81sTDtjty9bLtXEx0GQ/APL6oUVNFUGjQTMR7zQqNBg9PUEClDomI3nxaOujxRVNjCxeKNRPxXrdiY4OHJ2xAFNHd7+4WlCoRJI6ll9OGFY/b/GfXA6KIPv3kfEGpEgXiFE7tsHhE5z9uWQhAKIjcfs+afWrUFNa0vPAyfldmIQBCiIIGRWjNPk2NLVh8/NBzFmJXQzxETiBEgwXHyz4VC4hdBfEQhQmJzV687OMVECHEUPoG8N83n2NzSy9CRCfW1lVZEDx22QcA1vrPAqOjgY4yymoynZoyoPemoK2vFCGiE2u6KvOLya7k8bIPACxm5wBChFdjSt8AAHARsQecfhFRPHTZXqOm0HW8qyD7YGBg+xcqDRAALiL2YNOKyG/QZXtTYwtGrl4uyD5g768HQIkqBS+dPgf9xih3c++fv7PI7TkCAKhanvbV76292wuA9PPf8OprGbPt7KP5F5uMfQNITF2zLWO7EpCarINyM4/8CcLd1Jv58XvM1va/mEP88FmwOcRbF7cHePULtL/5nnmNe3euAwBSUwZe/viocBmjgAAUbQBaNxpze46EBsi6gUkzE81UFQUIQNHmn3Wjcba2H7kbHwXqTLrvqwJA1o1MNsv5AcTbq2Fjta4NG6cO++p79a3fUbsyK1zqKg4Qb4/GOo959uVcoM4cPn9SeL7kBxB7VGEXmyfO+up7Yuqa0M/puobNLb3yALFHFTsduXwW2vqKp5UYsH2EsRNB4QCozGU8PcIoBThOgyDyXtgVV5RhPZV3PQD28aX6koXjdvNpZjLnLyHjyuWz3LlXFH8AGCYoFg0tnc83N8Q+rAH/MrWkwPgdBK8lzw5KmGC8vg/ROZOua7aviaIJAihsWCXxzxS8fEksTihRvofQvgsu/z+QDAlIhgQkQwKSIQHJkCEByZCAZEhAMiQgGTIkIBmRxv99yE7sNHRTWwAAAABJRU5ErkJggg==",3,24,24 );
global.sprIDPDTankWalk = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAYAAAAAwCAYAAAAYeq1+AAAAB3RJTUUH4QkFAxIeq78DLQAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAAIK0lEQVR4nO2csa4dNRCGV4gCGqLbAKKgA1GmRwIKOgoqHiESHeJBKKjzCoiaCNFQ8xRUiCaiQKQ7sAm+suba4xl7xt5/d1b6lZuTs95v7N/z7557b7ZPnny/hUKhUOh6Wg4QCoVCoTVaDhAKhUKhNWq/Ydtuu9wAnMcPrRW6f9DHD63V0f0jusB773zoVsSM8Y+8AFcYH90/6OOj+wd9/CP7R3yBxx997lLErPGPugBXGR/dP+jjo/sHffyj+ue17SLHfxO0/fr0m1uMv2b8ONYe6P5BH/+whyZhPJIyH98jJbeDJ/CVxkf3Dzo/un/Qxz+if9wvIB3faxGOvgBX4kf3Dzo/un/Q+Y/on8t8BLQfb9+97zb2n89/dxs7Hej8caw90P2Dzn/IQ5tgpRTe/v9Ouka1BLNOScpvObZFAl+NH90/6Pzo/kHnP5p/1AWkC+SiAJzSe7nzYwOflx/dP+j86P5B5z+af7oKqAGn1zlxRV1xAa7Ij+4fdH50/6DzH8k/TfjaBLf+3lqA0uv51zSpz7oAZ+ZH9w86P7p/0PkR/CMCl15UU0RrLIuNgLAAZ+RH9w86P7p/0PmR/FOEf/ONtx4ASYrI36dJYW4x0zmqxxqgBTgbP7p/0PnR/YPOj+afagF5ES0AS+WTn7SzXGUDn4Uf3T/o/Oj+QedH8c/rW+G4e/Tuyz+f//XHg9f2g/7MrMXP5+Zjpq/z62uP/dydmbLuf895KXtPLfk5afz8uj11IPOj+wedP52L6p90Dio/lH9qKUZTK6WaRJIU1oyzKR/BStfQ3BH0Ji9Xo7QGdH50/6Dzo/sHnR/NP9UCtttNBOKtneNKG/h+/snnoKj8tA4U/4T/1/oHnR/FP80idn386Zcv9fW3391+fPbzA9198YMabD9nV23MXPt78mZypgUoNc693iQ6D7uOyp/X0fJMqmd/z4h/Sh6i4aNh50KstBaJYZQ/r+H+mh1zj+z/s/Br+mfyUK9/Sn1C0ztFzajVnHeQVKxUmgJSo9hVW4y8SEmo5OyeASZtRNKmac0vDWHtI3AaM61ZzfwpAHr9I12D3hBIa1LzZWIY5S/VMBxg+TVJiB05wOh+5pqnxw0EbZw9/Ll/ZvfP/Aay1TtVTZSmSa5Hv9xUqo1TUprEdH1JA5U+WYxuYMm10iKwSUyaJp1r7u7BqwFJ7yK4WmgIevuH1qJl59aErqElf6nJUd+MNNFak7D0T7rGyJxL+hC9MbTkp41TW0Nrzmf3z9Q7n3z2gSwAaBOl0OmzsdJrGqVvrCTlr1Emyd0c3ayagPFaAGpUNokLTZP+O52zGQaSPoG11mymf0bYW2viyW/JXtvPnv6R3nVacnv5PzVObQ0t9pn9M9+H4gAoNdFSI9ICS4tpNRTuPVwDpeyzFoAaqvYUU2qaq/lzQ7eewGp1lJ4APP1D51/DLg0yb36pZzQBlvbzjADz4J7ZQPN119bA9dAZ/lH3zZ4mSidfW1A6p7RpRwJA+qSwMsBGAmAFv3Yz1OooNThL/9QCoHcjcwHgzT/ahLj9PCPAvLhnNVBJH9Sw13qnd//sCgDJXaiHZgUArcFyA0v4JQEgZfdoQL1c9P3/vHghCgBPL2nZNU3Iaj9wY/Syc3vC2z+afTjC7en/0tqPsHv3zhqfxEMmAbBPKgf321evxJ2zKgC8F0ETALRpzmSv1SCZ+1oAtMyfXrfwT6kGLXutjlYAjPCvDAAvP80MAA//j9TAnVu7plf/lHioq4mWCshF//3vn15p/zr/zbtWAZrmuL8uTW0P/tb1WqFaumuWBoBlA50VALSBWsw/5dOyjwRALz+3rpYBUJsr6/mX9hDLALD2/5b1m57vAfQEgEf/zOuovqeniUqKaP3aNbdxewrhms8M/tb1OP5Ssxlh793AkiZiHQC1JiSZf8m43gEwys+tq8QP0mY0a/6tuCU/Rlxj7/V/PmZvDa0eKq3Bon9K6uhqorUiSoW0FkfaVCwDoGbcXn7JtaQBYMVtFWDazVCrpXUt7fxLxh3dyLUA4NZFy8+t66wAsJx/C+6Sjzi/Wvt/tAZuP3PXtO4/iYP9/ameZtTadJwkzaC3CUnYpQuh1Qi/JbdmA0v4tZuhVot0vrTz3PLirADo5efOs/oIiDZRS/7SezwCoOXXUf9Tr1p8hKUJAM38SzwlXQcVfAmyd3E1Y0gXRMLeyzAyB63FsOTWbGCNiaSfhdbWanS+JXMyyk7PT4/ynuy1+UnsswNglFvaeLTsEr+O+J96tdc3NXbLfSAZQ7oOKvgSxGgB2kltMZ09AHrnr2ecns1MG6cHt8SLFo0o99yqALBsomcJAA92D9+sDgDRTbMGvgRhNfHSSZUEgObjiqMEQK1pWnNr1rB3M9TWKgJAtqZaH7f48wDw5M6viRwA1k9eEr+OeIVjaD3FqOEtivAMgFmNVHOexFSS+iy4NTX0boa0DqsDwGojzwwAK/Z8nAgAGXt+3d6Pf2rsLb+O+IVjaF2neKKkiVoEgPYczX9FcMQAaP1vphrTeTYjDbeWbwb3KHttTWYHwAh7zp+HmBe3N7vH/HM3DtbsretasJcY1AFgNQkj8CPnHLmRSsILkdt77Vey0+aGxO61htx6IrOn10bDaxW75t/v31c72WISRuFmjD+rkVrPZ3AH+6p54OYEmd1yjVF6qPsFQrhzicod7OvmApn96HPhwrgaIBQKhUJrtBwgFAqFQmu0HCAUCoVCa7QcIBQKhUJrtBwgFAqFQmu0HCAUCoVCa7QcIBQKhUJrtBwgFAqFQmv0L8eL9QqRcrBNAAAAAElFTkSuQmCC",8,24,24 );
global.sprIDPDTankExplode = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAGAAAAAwCAYAAADuFn/PAAAAB3RJTUUH4QkFBAIe5DIH+QAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAADZUlEQVR4nO1ZvY4UMQwOVNBw2gYQBSWipEfiGjoKKh4BRAXiQSi4El4BUR8gCqipeAQqRHOiQFw3kNx5ZTyJY+dnkt2MpU/cDInH+T7Hzsyae49fmRXt0DyA0dE8gOoLNGay6NV/dMB0brUWUNu/JefGtVvVRMj1LyaoFkm1/QNBd27fryJCrv+LRmGfXz+bNOO1Vtt/l6bJ0BpZWtu/QRlaoxRh/ym7QE1QaZJq+88lSOo/tQypStBqFax1hi69A3xlyJwfJTUI7QDtLkgiiJIUGsOZxn9JAYAgDEogBxjLzV9EgNpWU4AQ4XCfAyfKKoCH/FCGx65jO8B3n5Y5iRBdko+tBPFS0jQixHxJheiWeGoa8i9fujIjVCJCahnidhPuGb54Z8fQXt9GtXGd/Prh/v158t0BDP9t7erm5uw6Bmr4nvVvr/FzIRaf7eV7wObguoNdOAAbkEPFyTHsCxPPke9sF8oPmPbkg2HLkhSSMqTxY0bqAdsm/G+OhMjasHEMJwAWweLu4UOHpy9eOrx7/3GLzYO3DlpiYR72BbDPgGeblFNQjyLkHEcp6ZgoIHJLmBDbeYz/GPk7tQOslSDeZafn287Bp0kFnw/ueVEBWpOrNY54LhuhOWLipI2XNmFKPtyjQvhE3zsBYGFQ67lsTyFcIwYWBQN60U4IEIvLJwAQD4uUQHP0pEdQzi8thUC+SoCW4sR6EicAlBy6O5YEjS3UE9jm26sAofofan4xcmhPwPj66Az0PjenmACwWI6g0sRL/HOnH9p4pQL89/KExv4+PgNc+35Z0wgw+7/WAqT41wpASfLNi33xpF87uRInjUksQKwM5JCf4jtXgJAIPiFCu8M3N1sATR+IzZOSrxUgRD4sVtqIOR/S2q4VwPdSVkwAqRCSOakC4AX/OT0VN+JcxASwsfiyXyRAiggaaMjXCqDpA6UEkMYCmP0gc/jk6AK914tJY/tw/C065sub51N2QAo/wZhysrL0DtDEId0FJqEPlMh+SflxY/ZdgNmLTwMBuC+iImJCIpQUoBT5sHDJaaikAKEk4LJ/bwWgIlAClhRA/HtATIQSwaYIk/NsEKEU2TWenZyhSwlQgohWAkieu2hQK1YBukPzAEZH8wBGR/MARkfzAEZH8wBGR/MARsdfzp7KG5DMYDsAAAAASUVORK5CYII=",2,24,24 );

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
	"no_addinational_enemies": false, 
	"hammerhead_time": 0,
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
	"floor_changes": false,
	"bonus_loop_max_health": true,
	"special_code": "insert your code here",
	"seed": "",
};

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
					"text": "Lil Hunter Revenge"
				},
				"desc": {
					"text": "When @rON@s#if @blil hunter@s @rdies@s - spawns a @bvan spawn@s"
				}
			},
			{
				"option": "fix_venus_car",
				"kind": "bool",
				"name": {
					"text": "Fixed Venus Car"
				},
				"desc": {
					"text": "When @rON@s# @yvenuz car@s will be @wfixed@s from start#+ it will have @winf hp@s #but @wexplodes@s when @pportal@s appears"
				}
			},
			{
				"option": "more_ravens_in_jungle",
				"kind": "slider",
				"name": {
					"text": "jungle ravens"
				},
				"desc": {
					"text": "Controls @yspawnrate@s of @rravens@s in a @gjungle@s"
				},
				"format": {
					"display_multiplier": 5
				}
			},
			{
				"option": "bonus_loop_max_health",
				"kind": "bool",
				"name": {
					"text": "Potential Bonus Max Health"
				},
				"desc": {
					"text": "When @rON@s#with each @yloop@s you gain#@w1 potential bonus max health@s#1 picked up @rhealth chest@s =#@w-1 pbmh@s, @g+1 max health@s"
				}
			},
			{
				"option": "crown_guardian_on_max",
				"kind": "bool",
				"name": {
					"text": "Crown Guardians on max"
				},
				"desc": {
					"text": "When @rON@s#and after you visited @w3rd@s @gVault@s#on each @wn-2@s stage#will spawn @g2 crown guardians@s#and if @wloop@s is higher than 2#it will spawn @r4 big bandits@s#(except for @ydesert@s)#if you skipped n-2 area#on n-2 will spawn 2 more guardians"
				}
			},
			{
				"option": "crown_guardian_help",
				"kind": "bool",
				"name": {
					"text": "Crown Guardians Help"
				},
				"desc": {
					"text": "When @rON@s# when you activate @gcrown ped@s#or break @gcrown guardian statue@s#in 1st vault#@gguardians@s will replace @wall torches@s#in 2nd vault#@wturrets@s will come out# and in 3rd one#each @gtorch@s will summon @bIDPD@s"
				}
			},
			{
				"option": "cursing_enabled",
				"kind": "bool",
				"name": {
					"text": "Spreading curse"
				},
				"desc": {
					"text": "When @rON@s#@ycrystals@s and @yspiders@s will be @pcursed@s#with @wchance 1/7@s,#if you have @pcursed crown@s#@wchance will be 2/3@s,#if @wno crowns@s#no @pcursed crystals@s and @pspiders@s"
				}
			},
			{
				"option": "cursed_caves_rework",
				"kind": "bool",
				"name": {
					"text": "Cursed caves rework"
				},
				"desc": {
					"text": "When @rON@s#@wall weapons@s that touch floor in#@p4-?@s will be @pcursed@s#after leaving @yl1+@s @pcursed crystal caves@s#all curses will be @ylifted@s"
				}
			},
			{
				"option": "no_addinational_enemies",
				"kind": "bool",
				"name": {
					"text": "no addinational enemies"
				},
				"desc": {
					"text": "When @wYES@s#@wno new enemies@s will spawn"
				}
			},
			{
				"option": "chest_replacments",
				"kind": "bool",
				"name": {
					"text": "Chest Replacments"
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
				"option": "floor_changes",
				"kind": "bool",
				"name": {
					"text": "Floor Changes Off"
				},
				"desc": {
					"text": "When @rON@s#it will @wdisable all floor@s changes#from any other options"
				}
			},
			{
				"option": "diropf",
				"kind": "bool",
				"name": {
					"text": "Early Popo Freaks Revives"
				},
				"desc": {
					"text": "When @rON@s#it will @wenable all@s @bPopo Freaks revives@s#before @g3rd loop@s"
				}
			},
			{
				"option": "add_dark",
				"kind": "bool",
				"name": {
					"text": "More Darkness"
				},
				"desc": {
					"text": "When @rON@s#apllies @pdarkness@s on #@wPalace, Jungles and Night Desert@s#+ @y25% Chance for night version of area@s"
				}
			}
			{
				"option": "fire_explosions",
				"kind": "bool",
				"name": {
					"text": "fire explosions"
				},
				"desc": {
					"text": "When @rON@s#@rfire@s when @wcontacts@s with#@wany@s @rexplosive projectile@s#destroys the projectile"
				}
			},
			{
				"option": "no_new_tips",
				"kind": "bool",
				"name": {
					"text": "No New Tips"
				},
				"desc": {
					"text": "When @rON@s#it will @wdisable all new tips@s"
				}
			},
			{
				"option": "popups",
				"kind": "bool",
				"name": {
					"text": "popups"
				},
				"desc": {
					"text": "When @rON@s#it will @wshow some new popups@s"
				}
			},
			{
				"option": "no_jocks",
				"kind": "bool",
				"name": {
					"text": "No Jocks!"
				},
				"desc": {
					"text": "When @rON@s#it will @rdelete@s @wall Jocks@s"
				}
			},
			{
				"option": "enemies_mutations",
				"kind": "bool",
				"name": {
					"text": "Enemies Mutations"
				},
				"desc": {
					"text": "When @rON@s#starting from @gL1@s#it will #give on @rhit@s @pteleports@s to all @ggators@s#from @bL3@s#@wreplace@s @wsniper and snow tank bullets@s# with @wbouncers@s#@ygolden tank rockets@s replaced#with @ygolden discs@s"
				}
			},
			{
				"option": "idpd_mashup",
				"kind": "bool",
				"name": {
					"text": "IDPD Mashup"
				},
				"desc": {
					"text": "When @rON@s#@yL2@s: @w1/3@s @bportals@s and @bvans@s#will contain @bpopo freaks@s#@gL3@s: @w1/2@s @bportals@s and @bvans@s#will contain @yelites@s#P.S. Vans on L3 can also contain#non elite IDPD#because i can't control#if van will contain elites"
				}
			},			
			{
				"option": "idpd_seek",
				"kind": "choice",
				"name": {
					"text": "IDPD Seek"
				},
				"desc": {
					"text": "Switch between IDPD Seek modes.#@gNo@s# No Addinational @bIDPD@s. #@yYes@s# Adds more @bIDPD@s to #@wSnow Town@s, @wLabs@s and @wPalace@s. #@rMore@s# Adds even more @bIDPD@s to #@wSnow Town@s and @wPalace@s#+ visiting @bHQ@s #or having a @pcrown@s #or killing @bcap@s #will add addinational @bIDPD@s"
				},
				"values": [0, 1, 2],
				"display": ["No", "Yes", "More"]
			},
		]
	});
			
	call(scr.option_add_page, mod_current_type, mod_current, "options", "global_page3", {
		"reference": script_ref_create(draw_back_button),
		"options": [
			{
				"option": "no_new_parcticles",
				"kind": "bool",
				"name": {
					"text": "No New Parctiles"
				},
				"desc": {
					"text": "When @rON@s#@rdisables@s spawn of @gnew parctiles@s"
				}
			},
			{
				"option": "no_guards",
				"kind": "bool",
				"name": {
					"text": "No Guardians"
				},
				"desc": {
					"text": "When @rON@s#it will delete @wall@s @gGuards@s#which have been added by @wesp@s"
				}
			},
			{
				"option": "l5cap",
				"kind": "bool",
				"name": {
					"text": "L5 Captain"
				},
				"desc": {
					"text": "When @rON@s#you will @rfight@s the @bCaptain@s#before @gThorne 2@s on @w0-1 L5@s"
				}
			},
			{
				"option": "nes",
				"kind": "bool",
				"name": {
					"text": "No Early Shielders"
				},
				"desc": {
					"text": "When @rON@s#it will @wreplace all@s @bshielders@s#with @binspectors@s until you pass#@w10 stages@s"
				}
			},
			{
				"option": "hammerhead_time",
				"kind": "choice",
				"name": {
					"text": "hammerhead time"
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
					"text": "careful IDPD in labs"
				},
				"desc": {
					"text": "When @rON@s#it will @wreplace all@s @bvans@s with#@b4 idpd portals@s in @wLabs@s"
				}
			},
			{
				"option": "death_effects",
				"kind": "bool",
				"name": {
					"text": "Death Effects"
				},
				"desc": {
					"text": "When @rON@s#it will enable @weffects@s#which will happen after#@rdeath@s of @wcertain enemies@s#after @wcertain loop@s"
				}
			},
			{
				"option": "seed",
				"kind": "text",
				"name": {
					"text": "seed",
				},
				"desc": {
					"text": "enter seed to play the same run endless amount of times"
				}
			},			
			{
				"option": "common_difficulty_multiplier",
				"kind": "slider",
				"name": {
					"text": "rdm"
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
					"text": "edm"
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
	
	call(scr.option_set_mod_display_name, mod_current_type, mod_current, "   ESP#SETTINGS");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page", "CONFIG PAGE I");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page2", "CONFIG PAGE II");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page3", "CONFIG PAGE III");
	
	exit;
}

//death messages for checking
global.SnowSniperHitid = [global.SnowSniperIdle, "Snow Sniper"];

global.JungleSniperHitid = [global.sprJungleSniperIdle, "Jungle Sniper"];

global.IDPDTankHitid = [global.sprIDPDTankIdle,"IDPD Tank"];
// -----Tick------ //
#define game_start

global.cap_spawned = false;
global.tip_shown = false;
global.inner_chance_proc = false;
global.cap_dead = false;
global.amount_of_crown_guardians = 0;
global.factor = GameCont.hard;

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

//Sync options and opts
opt.lilhunter_revenge = global.options.lilhunter_revenge;
opt.fix_venus_car = global.options.fix_venus_car;
opt.more_ravens_in_jungle = global.options.more_ravens_in_jungle;
opt.crown_guardian_on_max = global.options.crown_guardian_on_max;
opt.cursing_enabled = global.options.cursing_enabled;
opt.nes = global.options.nes;
opt.piov = global.options.piov;
opt.diropf = global.options.diropf;
opt.add_dark = global.options.add_dark;
opt.idpd_mashup = global.options.idpd_mashup;
opt.no_jocks = global.options.no_jocks;
opt.l5cap = global.options.l5cap;
opt.no_addinational_enemies = global.options.no_addinational_enemies;
opt.death_effects = global.options.death_effects;
opt.no_new_tips = global.options.no_new_tips;
opt.no_new_parcticles = global.options.no_new_parcticles;
opt.no_guards = global.options.no_guards;
opt.IDPD_seek = global.options.idpd_seek;
opt.chest_replacments = global.options.chest_replacments;
opt.cursed_caves_rework = global.options.cursed_caves_rework;
opt.enemies_mutations = global.options.enemies_mutations;
opt.crown_guardian_help = global.options.crown_guardian_help;
opt.popups = global.options.popups;
opt.hammerhead_time = global.options.hammerhead_time;
opt.fire_explosions = global.options.fire_explosions;
opt.attmpts_to_add_enemies = 15 * (GameCont.loops + 1);
global.cem = global.options.common_difficulty_multiplier * 2;
global.eem = global.options.esp_difficulty_multiplier * 2;
opt.floor_changes = global.options.floor_changes;
opt.bonus_loop_max_health = global.options.floor_changes;
opt.special_code = global.options.special_code;
opt.seed = global.options.seed;

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

with(Lightning){
	if(team = 1){
		damage = 5;
	}
}

with (Flame){
	if(team = 1){
		damage = 1;
	}
}

if(opt.fire_explosions == true){
	
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

if(opt.hammerhead_time > 0){
	skill_set_active(26, 0);
	if(GameCont.loops > 0){
		skill_set(26, 1);
	}
}

if(GameCont.area == 107){
	global.rest_room = true;
	}
	
if(GameCont.area == 100){
	global.last_vault = true;
	}


if(opt.popups == true){

	if(instance_exists(Salamander) && instance_exists(Player)){
		with(Salamander){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._salamander == false && opt.death_effects == true && GameCont.loops > 0){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._salamander = true;
			}
		}
	}
	
	if(instance_exists(Rat) && instance_exists(Player)){
		with(Rat){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._rat == false && opt.death_effects == true && GameCont.loops > 0){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._rat = true;				
			}
		}
	}
	
	if(instance_exists(Molefish) && instance_exists(Player)){
		with(Molefish){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._molefish == false && opt.death_effects == true && GameCont.loops > 0){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._molefish = true;
			}
		}
	}
	
	if(instance_exists(BuffGator) && instance_exists(Player)){
		with(BuffGator){		
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._buffgator == false && opt.enemies_mutations == true && GameCont.loops > 0){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._buffgator = true;				
			}
		}
	}
	
	if(instance_exists(Gator) && instance_exists(Player)){
		with(Gator){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._gator == false && opt.enemies_mutations == true && GameCont.loops > 0){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._gator = true;				
			}
		}
	}
	
	if(instance_exists(JungleFly) && instance_exists(Player)){
		with(JungleFly){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._junglefly == false && opt.death_effects == true && GameCont.loops > 0){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._junglefly = true;				
			}
		}
	}
	
	if(instance_exists(Jock) && instance_exists(Player)){
		with(Jock){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._jock == false && opt.death_effects == true && GameCont.loops > 1){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._jock = true;				
			}
		}
	}
	
	if(instance_exists(Last) && instance_exists(Player)){
		with(Last){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._last == false && opt.death_effects == true && GameCont.loops > 1){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._last = true;				
			}
		}
	}
	
	if(instance_exists(Bandit) && instance_exists(Player)){
		with(Bandit){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._bandit == false && opt.death_effects == true && GameCont.loops > 1){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._bandit = true;				
			}
		}
	}
	
	if(instance_exists(Molesarge) && instance_exists(Player)){
		with(Molesarge){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._molesarge == false && opt.death_effects == true && GameCont.loops > 1){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._molesarge = true;				
			}
		}
	}
	
	if(instance_exists(Van) && instance_exists(Player)){
		with(Van){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._van == false && opt.death_effects == true && GameCont.loops > 1){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._van = true;				
			}
		}
	}
	
	if(instance_exists(Grunt) && instance_exists(Player)){
		with(Grunt){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._grunt == false && opt.death_effects == true && GameCont.loops > 1){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._grunt = true;					
			}
		}
	}
	
	if(instance_exists(Inspector) && instance_exists(Player)){
		with(Inspector){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._inspector == false && opt.death_effects == true && GameCont.loops > 1){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._inspector = true;				
			}
		}
	}
	
	if(instance_exists(TechnoMancer) && instance_exists(Player)){
		with(TechnoMancer){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._technomancer == false && opt.death_effects == true && GameCont.loops > 1){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._technomancer = true;				
			}
		}
	}
	
	if(instance_exists(CrownGuardian) && instance_exists(Player)){
		with(CrownGuardian){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._crownguardian == false && opt.death_effects == true && GameCont.loops > 1){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._crownguardian = true;				
			}
		}
	}
	
	if(instance_exists(Wolf) && instance_exists(Player)){
		with(Wolf){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._wolf == false && opt.death_effects == true && GameCont.loops > 1){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._wolf = true;				
			}
		}
	}
	
	if(instance_exists(OasisBoss) && instance_exists(Player)){
		with(OasisBoss){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._oasisboss == false && opt.death_effects == true && GameCont.loops > 1){	
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._oasisboss = true;				
			}
		}
	}
	
	if(instance_exists(ExploGuardian) && instance_exists(Player)){
		with(ExploGuardian){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._exploguardian == false && opt.death_effects == true && GameCont.loops > 2){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._exploguardian = true;				
			}
		}
	}
	
	if(instance_exists(DogGuardian) && instance_exists(Player)){
		with(DogGuardian){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._dogguardian == false && opt.death_effects == true && GameCont.loops > 2){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._dogguardian = true;				
			}
		}
	}
	
	if(instance_exists(LightningCrystal) && instance_exists(Player)){
		with(LightningCrystal){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._lightningcrystal == false && opt.death_effects == true && GameCont.loops > 3){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._lightningcrystal = true;				
			}
		}
	}
	
	if(instance_exists(JungleBandit) && instance_exists(Player)){
		with(JungleBandit){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._junglebandit == false && opt.death_effects == true && GameCont.loops > 2){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._junglebandit = true;				
			}
		}
	}
	
	if(instance_exists(JungleAssassin) && instance_exists(Player)){
		with(JungleAssassin){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._jungleassasin == false && opt.death_effects == true && GameCont.loops > 2){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._jungleassasin = true;				
			}
		}
	}
	
	if(instance_exists(BanditBoss) && instance_exists(Player)){
		with(BanditBoss){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._junglebanditboss == false && opt.death_effects == true && GameCont.loops > 2 && GameCont.area == 105){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._junglebanditboss = true;				
			}
		}
	}
	
	if(instance_exists(EliteGrunt) && instance_exists(Player)){
		with(EliteGrunt){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._elitegrunt == false && opt.death_effects == true && GameCont.loops > 2){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._elitegrunt = true;				
			}
		}
	}
	
	if(instance_exists(Sniper) && instance_exists(Player)){
		with(Sniper){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._sniper == false && opt.enemies_mutations == true && GameCont.loops > 2){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._sniper = true;				
			}
		}
	}
	
	if(instance_exists(SnowTank) && instance_exists(Player)){
		with(SnowTank){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._snowtank == false && opt.enemies_mutations == true && GameCont.loops > 2){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._snowtank = true;				
			}
		}
	}
	
	if(instance_exists(GoldSnowTank) && instance_exists(Player)){
		with(GoldSnowTank){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._goldsnowtank == false && opt.enemies_mutations == true && GameCont.loops > 2 && "police" not in self){
					leveluped = 1;
					with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
					instance_create(x,y,LevelUp);
					sound_play(sndLevelUltra);
					global.popup_shown._goldsnowtank = true;
			}
		}
	}
	
	if(instance_exists(Necromancer) && instance_exists(Player)){
		with(Necromancer){
			if(point_in_circle(x,y,Player.x,Player.y,180) && global.popup_shown._necromancer == false && opt.death_effects == true && GameCont.loops > 3){
				leveluped = 1;
				with instance_create(x,y,PopupText) text = "LEVEL ULTRA!";
				instance_create(x,y,LevelUp);
				sound_play(sndLevelUltra);
				global.popup_shown._necromancer = true;				
			}
		}
	}
}	

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
		snd_dead = musBoss4Silence;
		snd_hurt = musBoss4Silence;
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
	if(Car.spr_idle != global.sprJungleCarIdle){
		with(Car){
			spr_idle = global.sprJungleCarIdle;
			spr_hurt = global.sprJungleCarHurt;
			}
		}
	}

if(GameCont.area == 1 && opt.no_new_parcticles == false && global.last_vault == false){
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
	
if(GameCont.area == 7 && opt.no_new_parcticles == false && global.last_vault == false){
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

if(instance_exists(GenCont) && opt.no_new_tips == false){

	if(r4 == 1 && global.tip_shown == false){
		GenCont.tip = "who put plant food in carburator?";
		global.tip_shown = true;
	}
	
	if(r4 == 2 && global.tip_shown == false){
		GenCont.tip = "gotta get a grip!";
		global.tip_shown = true;
	}
	
	if(r4 == 3 && global.tip_shown == false){
		GenCont.tip = "life is always getting @rharder...@s";
		global.tip_shown = true;
	}
	
	if(r4 == 4 && global.tip_shown == false){
		GenCont.tip = "make sure the @rrisk@s is worth it";
		global.tip_shown = true;
	}
	
	if(r4 == 5 && global.tip_shown == false && GameCont.crown != crwn_none && opt.cursing_enabled == true){
		GenCont.tip = "@qthe @p@qc @qu @qr @qs @qe@s is spreading...";
		global.tip_shown = true;
	}
	
	if(r4 == 6 && global.tip_shown == false){
		GenCont.tip = "eat flakes, not flaks";
		global.tip_shown = true;
	}
	
	if(r4 == 7 && global.tip_shown == false){
		GenCont.tip = "zuigerphobia";
		global.tip_shown = true;
	}
	
	if(r4 == 8 && global.tip_shown == false && Player.race == "venuz" && opt.fix_venus_car == true){
		GenCont.tip = "they fixed the best @ycar!@s";
		global.tip_shown = true;
	}
	
	if(r4 == 9 && global.tip_shown == false && opt.l5cap != false && global.cap_spawned == false && GameCont.loops == 4){
		GenCont.tip = "@bcaptain@s is waiting for you...";
		global.tip_shown = true;
	}
	
	if(r4 == 10 && global.tip_shown == false){
		GenCont.tip = "don't get close!";
		global.tip_shown = true;
	}
	
	if(r4 == 11 && global.tip_shown == false){
		GenCont.tip = "high @bvoltage@s will kill you";
		global.tip_shown = true;
	}
	
	if(r4 == 12 && global.tip_shown == false && GameCont.loops > 3 && opt.death_effects == true){
		GenCont.tip = "@wnecromancers@s are studying from the nature";
		global.tip_shown = true;
	}
	
	if(r4 == 13 && global.tip_shown == false && GameCont.loops > 2 && opt.death_effects == true){
		GenCont.tip = "these @rflowers@s cause @gibs@s";
		global.tip_shown = true;
	}
	
	if(r4 == 14 && global.tip_shown == false && Player.wep == wep_ultra_shovel && GameCont.loops > 2){
		GenCont.tip = "swing like belmont";
		global.tip_shown = true;
	}
	
	if(global.last_vault == true && global.tip_shown == false && GameCont.vaults > 2 && opt.crown_guardian_on_max == true){
		GenCont.tip = "@gproto guardians@s are now homeless";
		global.tip_shown = true;
	}
	
	if(r4 == 15 && global.tip_shown == false && GameCont.loops > 2 && opt.idpd_mashup == true){
		GenCont.tip = "with progress, tech is mass produced";
		global.tip_shown = true;
	}
	
	if(r4 == 16 && global.tip_shown == false && GameCont.loops > 0){
		GenCont.tip = "is it not excessive?";
		global.tip_shown = true;
	}
	
	if(r4 == 17 && global.tip_shown == false && GameCont.loops > 0){
		GenCont.tip = "your only move is struggle";
		global.tip_shown = true;
	}
	
	if(r4 == 18 && global.tip_shown == false){
		GenCont.tip = "why's there no nuclear throne 2";
		global.tip_shown = true;
	}
	
	if((r4 == 19 && global.tip_shown == false && Player.wep == wep_ultra_crossbow) || (r4 == 19 && global.tip_shown == false && Player.race == "chicken") || (r4 == 19 && global.tip_shown == false && Player.wep == wep_ultra_crossbow && Player.race == "chicken")){
		GenCont.tip = "why did the chicken @gultracross@s the road";
		global.tip_shown = true;
	}
	
	if(r4 == 20 && global.tip_shown == false && GameCont.loops > 2){
		GenCont.tip = "not the freaks!";
		global.tip_shown = true;
	}
	
	if(r4 == 21 && global.tip_shown == false && (Player.wep == wep_golden_revolver || Player.wep == wep_golden_wrench || Player.wep == wep_golden_machinegun || Player.wep == wep_golden_shotgun || Player.wep == wep_golden_crossbow || Player.wep == wep_golden_grenade_launcher || Player.wep == wep_golden_laser_pistol || Player.wep == wep_golden_plasma_gun || Player.wep == wep_golden_slugger || Player.wep == wep_golden_splinter_gun || Player.wep == wep_golden_screwdriver || Player.wep == wep_golden_bazooka || Player.wep == wep_golden_assault_rifle || Player.wep == wep_golden_nuke_launcher || Player.wep == wep_golden_disc_gun || Player.wep == wep_golden_frog_pistol)){
		GenCont.tip = "you are filled with a sense of @yjuandice@s";
		global.tip_shown = true;
	}
	
	if(r4 == 22 && global.tip_shown == false && Player.race == "eyes" && skill_get(mut_throne_butt) == 1){
		GenCont.tip = "2attractive4em";
		global.tip_shown = true;
	}
	
	if(r4 == 23 && global.tip_shown == false && Player.wep == wep_laser_cannon && skill_get(mut_laser_brain) == 1){
		GenCont.tip = "ama firin' mah @glasor@s. @qblaaarg!@s";
		global.tip_shown = true;
	}
	
	if(r4 == 24 && global.tip_shown == false && Player.race == "skeleton"){
		GenCont.tip = "call an @rambulance@s... but not for me!";
		global.tip_shown = true;
	}
	
	if(r4 == 25 && global.tip_shown == false && GameCont.loops > 0){
		GenCont.tip = "amphibian @yheartburn@s";
		global.tip_shown = true;
	}
	
	if(r4 == 26 && global.tip_shown == false && GameCont.loops > 0){
		GenCont.tip = "a @wbig surprise@s awaits in the @wsnow@s";
		global.tip_shown = true;
	}
	
	if(r4 == 27 && global.tip_shown == false && GameCont.loops > 0){
		GenCont.tip = "the @wrats@s are @gmolting@s";
		global.tip_shown = true;
	}
	
	if(r4 == 28 && global.tip_shown == false && GameCont.loops > 1){
		GenCont.tip = "emerjency @wcluster@s ejection";
		global.tip_shown = true;
	}
	
	if(r4 == 29 && global.tip_shown == false && GameCont.loops > 1){
		GenCont.tip = "spawning season";
		global.tip_shown = true;
	}
	
	if(r4 > 29 && r4 < 49 && global.tip_shown == false){
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 1 && global.tip_shown == false && (GameCont.area == 1 || GameCont.area == 3) && opt.no_addinational_enemies == false){
		GenCont.tip = "@wsalamanders@s love the sun";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.area == 1 && GameCont.loops > 0 && opt.death_effects == true){
		GenCont.tip = "@wthe flies@s are getting louder";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.area == 2 && opt.no_addinational_enemies == false){
		GenCont.tip = "the gun godz cameo we deserve";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 1 && global.tip_shown == false && GameCont.area == 104 && opt.cursed_caves_rework == true){
		GenCont.tip = "floor here is made out of @p@qc @qu @qr @qs @qe @qs@s";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.area == 104){
		GenCont.tip = "@ppurple@s suits you better~";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.subarea == 1 && GameCont.area == 3 && opt.fix_venus_car == true){
		GenCont.tip = "@wmolefish@s forgot to close the @ycar@s";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 1 && global.tip_shown == false && GameCont.area == 7 && opt.add_dark == true){
		GenCont.tip = "it's @pdark@s with no lamps or windows";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.area == 7){
		GenCont.tip = "power of @gplutonium@s shines within you!";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 1 && global.tip_shown == false && GameCont.area == 5 && GameCont.subarea == 1){
		GenCont.tip = "the jungle grows relentless...";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.area == 5){
		GenCont.tip = "hey. is your refrigerator running?";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.area == 105){
		GenCont.tip = "28 years in that godforsaken jungle...";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 1 && global.tip_shown == false && GameCont.area == 105){
		GenCont.tip = "birds are singing, flowers are blooming";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 1 && global.tip_shown == false && GameCont.area == 103 && GameCont.loops < 3 && GameCont.loops > 0 && opt.enemies_mutations == true){
		GenCont.tip = "even @wrockets@s are @ygold!@s";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.area == 103 && GameCont.loops > 2 && opt.enemies_mutations == true){
		GenCont.tip = "even @wdisks@s are @ygold?!@s";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 1 && global.tip_shown == false && GameCont.area == 102){
		GenCont.tip = "pizza time!";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.area == 102){
		GenCont.tip = "don't play with electricity";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.area == 101){
		GenCont.tip = "it's on the house";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.area == 6 && GameCont.loops > 1){
		GenCont.tip = "they're practicing gemmation";
		global.tip_shown = true;
	}
	
	if(r4 > 49 && r5 == 2 && global.tip_shown == false && GameCont.area == 6 && GameCont.loops > 2){
		GenCont.tip = "ever tried mitosis? you'd better now";
		global.tip_shown = true;
	}
	
	if(global.tip_shown == false && GameCont.area == 106 && GameCont.subarea == 3 && GameCont.loops < 2){
		GenCont.tip = "one way ticket";
		global.tip_shown = true;
	}
	
	if(global.tip_shown == false && global.cap_dead == false && ((GameCont.area == 106 && GameCont.subarea == 3 && GameCont.loops > 1) || (GameCont.area == 0 && GameCont.subarea == 1 && GameCont.loops > 4))){
		GenCont.tip = "last remote";
		global.tip_shown = true;
	}
}
	
if(global.IDPDTankDeath == true){
		instance_delete(SnowTankExplode);
		global.IDPDTankDeath = false;
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
	sprite_replace(sprBigSkull,"sprBigSkull_strip1.png",1);
	sprite_replace(sprBigSkullOpen,"sprBigSkullOpen_strip1.png",1);
	sprite_replace(sprBigSkullHurt,"sprBigSkullHurt_strip3.png",3);
	sprite_replace(sprBigSkullOpenHurt,"sprBigSkullOpenHurt_strip3.png",3);
	sprite_replace(sprBigSkullDead,"sprBigSkullDead_strip3.png",3);
	sprite_replace(sprBonePileIdle,"sprBonePileIdle_strip1.png",1);
	sprite_replace(sprBonePileHurt,"sprBonePileHurt_strip3.png",3);
	sprite_replace(sprBonePileDead,"sprBonePileDead_strip4.png",3);
	sprite_replace(sprBones,"sprBones_strip2.png",2);
	sprite_replace(sprCactus,"sprCactus_strip1.png",1);
	sprite_replace(sprCactusHurt,"sprCactusHurt_strip3.png",3);
	sprite_replace(sprCactusDead,"sprCactusDead_strip4.png",4);
	sprite_replace(sprCactus2,"sprCactus2_strip1.png",1);
	sprite_replace(sprCactus2Hurt,"sprCactus2Hurt_strip3.png",3);
	sprite_replace(sprCactus2Dead,"sprCactus2Dead_strip4.png",4);
	sprite_replace(sprCactus3,"sprCactus3_strip1.png",1);
	sprite_replace(sprCactus3Hurt,"sprCactus3Hurt_strip3.png",3);
	sprite_replace(sprCactus3Dead,"sprCactus3Dead_strip4.png",4);
	sprite_replace(sprCactusB,"sprCactusB_strip1.png",1);
	sprite_replace(sprCactusBHurt,"sprCactusBHurt_strip3.png",3);
	sprite_replace(sprCactusBDead,"sprCactusBDead_strip4.png",4);
	sprite_replace(sprCactusB2,"sprCactusB2_strip1.png",1);
	sprite_replace(sprCactusB2Hurt,"sprCactusB2Hurt_strip3.png",3);
	sprite_replace(sprCactusB2Dead,"sprCactusB2Dead_strip4.png",4);
	sprite_replace(sprCactusB3,"sprCactusB3_strip1.png",1);
	sprite_replace(sprCactusB3Hurt,"sprCactusB3Hurt_strip3.png",3);
	sprite_replace(sprCactusB3Dead,"sprCactusB3Dead_strip4.png",4);
	sprite_replace(sprDebris1,"sprDebris0_strip4.png",4);
	sprite_replace(sprDesertTopDecal,"sprDesertTopDecal_strip3.png",3);
	sprite_replace(sprDetail1,"sprDetail0_strip5.png",5);
	sprite_replace(sprFloor1,"sprFloor1_strip4.png",4);
	sprite_replace(sprFloor1Explo,"sprFloor1Explo_strip4.png",4);
	sprite_replace(sprFloor1B,"sprFloor1B_strip4.png",4);
	sprite_replace(sprMSpawnIdle,"sprMSpawnIdle_strip4.png",4);
	sprite_replace(sprMSpawnDead,"sprMSpawnDead_strip2.png",2);
	sprite_replace(sprMSpawnHurt,"sprMSpawnHurt_strip3.png",3);
	sprite_replace(sprMSpawnChrg,"sprMSpawnChrg_strip4.png",4);
	sprite_replace(sprWall1Bot,"sprWall0Bot_strip4.png",4);
	sprite_replace(sprWall1Out,"sprWall0Out_strip1.png",1);
	sprite_replace(sprWall1Top,"sprWall0Top_strip8.png",8);
	sprite_replace(sprWall1Trans,"sprWall0Trans_strip8.png",8);
	sprite_replace(sprWind,"sprWind_strip9.png",9);
	sprite_replace(sprFloor5B,"sprFloor5B.png",8);
	sprite_replace(sprSnowFlake,"sprSnowFlake.png",3);
	sprite_replace(sprSnowBotCarLift,"sprSnowBotCarLift.png",4);
	sprite_replace(sprFrozenCar,"sprFrozenCar.png",1);
	sprite_replace(sprSnowBotCarIdle,"sprSnowBotCarIdle.png",6);
	sprite_replace(sprSnowBotCarWalk,"sprSnowBotCarWalk.png",8);
	sprite_replace(sprSnowBotCarHurt,"sprSnowBotCarHurt.png",3);
	sprite_replace(sprSnowBotCarThrow,"sprSnowBotCarThrow.png",5);
	sprite_replace(sprFrozenCarThrown,"sprFrozenCarThrown.png",6);
	sprite_replace(sprFrozenCarHurt,"sprFrozenCarHurt.png",3);
	sprite_replace(sprPStat1Idle,"sprPStat1Idle.png",1);
	sprite_replace(sprPStat1Hurt,"sprPStat1Hurt.png",3);
	sprite_replace(sprPStat2Idle,"sprPStat2Idle.png",1);
	sprite_replace(sprPStat2Hurt,"sprPStat2Hurt.png",3);
	sprite_replace(sprPStatDead,"sprPStatDead.png",3);
	background_color = make_color_rgb(106, 122, 175);
	BackCont.shadcol = c_black;
	TopCont.fog = sprFog2;
	global.sprites_swapped = true;
	}


if(global.abd == true && GameCont.area == 3 && global.sprites_swapped == false && instance_exists(BackCont)){
	sprite_replace(sprTires,"sprTires.png",1);
	sprite_replace(sprTiresDead,"sprTiresDead.png",3);
	sprite_replace(sprTiresHurt,"sprTiresHurt.png",3);
	sprite_replace(sprTopDecalScrapyard,"sprTopDecalScrapyard.png",3);
	sprite_replace(sprFloor3,"sprFloor3_strip4.png",4);
	sprite_replace(sprFloor3B,"sprFloor3B_strip4.png",3);
	sprite_replace(sprWall3Out,"sprWall3Out.png",3);
	sprite_replace(sprDetail3,"sprDetail3_strip5.png",5);
	sprite_replace(sprWall3Bot,"sprWall3Bot_strip4.png",4);
	sprite_replace(sprWall3Trans,"sprWall3Trans_strip8.png",3);
	sprite_replace(sprWall3Top,"sprWall3Top_strip8.png",4);
	sprite_replace(sprFloor3Explo,"sprFloor3Explo_strip4.png",4);
	sprite_replace(sprDebris3,"sprDebris3_strip4.png",4);
	sprite_replace(bak3,"bak3.png",1);
	sprite_replace(sprCarIdle,"sprCarIdleNight.png",1);
	sprite_replace(sprCarHurt,"sprCarHurtNight.png",3);
	sprite_replace(sprCarThrown,"sprCarThrown.png",6);
	sprite_replace(sprSnowBotRedCarIdle,"sprSnowBotRedCarIdle.png",6);
	sprite_replace(sprSnowBotRedCarLift,"sprSnowBotRedCarLift.png",4);
	sprite_replace(sprSnowBotRedCarWalk,"sprSnowBotRedCarWalk.png",8);
	sprite_replace(sprSnowBotRedCarHurt,"sprSnowBotRedCarHurt.png",3);
	sprite_replace(sprSnowBotRedCarThrow,"sprSnowBotRedCarThrow.png",5);
	sprite_replace(sprTrap,"sprTrap.png",1);
	sprite_replace(sprTrapGameover,"sprTrapGameover.png",1);
	sprite_replace(sprTrapScorchMark,"sprTrapScorchMark.png",1);
	sprite_replace(sprScrapDecal,"sprScrapDecal.png",2);
	sprite_replace(sprWind,"sprWind_strip9.png",9);
	sprite_replace(sprFloor5B,"sprFloor5B.png",8);
	sprite_replace(sprSnowFlake,"sprSnowFlake.png",3);
	sprite_replace(sprSnowBotCarLift,"sprSnowBotCarLift.png",4);
	sprite_replace(sprFrozenCar,"sprFrozenCar.png",1);
	sprite_replace(sprSnowBotCarIdle,"sprSnowBotCarIdle.png",6);
	sprite_replace(sprSnowBotCarWalk,"sprSnowBotCarWalk.png",8);
	sprite_replace(sprSnowBotCarHurt,"sprSnowBotCarHurt.png",3);
	sprite_replace(sprSnowBotCarThrow,"sprSnowBotCarThrow.png",5);
	sprite_replace(sprFrozenCarThrown,"sprFrozenCarThrown.png",6);
	sprite_replace(sprFrozenCarHurt,"sprFrozenCarHurt.png",3);
	sprite_replace(sprPStat1Idle,"sprPStat1Idle.png",1);
	sprite_replace(sprPStat1Hurt,"sprPStat1Hurt.png",3);
	sprite_replace(sprPStat2Idle,"sprPStat2Idle.png",1);
	sprite_replace(sprPStat2Hurt,"sprPStat2Hurt.png",3);
	sprite_replace(sprPStatDead,"sprPStatDead.png",3);
	background_color = make_color_rgb(40, 43, 83);
	BackCont.shadcol = c_black;
	TopCont.fog = sprFog2;
	global.sprites_swapped = true;
	sprite_replace(sprRainDrop,"sprRainDrop.png",1);
	sprite_replace(sprRainDropSlowmo,"sprRainDropSlowmo.png",1);
	sprite_replace(sprRainSplash,"sprRainSplash.png",3);
	}
	
if(global.abd == true && GameCont.area == 5 && global.sprites_swapped == false && instance_exists(BackCont)){
	sprite_replace(sprSodaMachine,"sprSodaMachine.png",1);
	sprite_replace(sprStreetLight,"sprStreetLight.png",1);
	sprite_replace(sprIcicle,"sprIcicle.png",1);
	sprite_replace(sprWall5Trans,"sprWall5Trans.png",1);
	sprite_replace(sprTopDecalCity,"sprTopDecalCity.png",3);
	sprite_replace(sprIceDecal,"sprIceDecal.png",2);
	sprite_replace(sprIcicleDead,"sprIcicleDead.png",4);
	sprite_replace(sprIcicleHurt,"sprIcicleHurt.png",3);
	sprite_replace(sprSodaMachineDead,"sprSodaMachineDead.png",3);
	sprite_replace(sprSodaCan,"sprSodaCan.png",3);
	sprite_replace(sprStreetLightDead,"sprStreetLightDead.png",3);
	sprite_replace(sprFloor5B,"sprFloor5B.png",8);
	sprite_replace(sprFloor5Explo,"sprFloor5Explo.png",4);
	sprite_replace(sprFloor5,"sprFloor5.png",8);
	sprite_replace(sprWall5Out,"sprWall5Out.png",2);
	sprite_replace(sprWall5Top,"sprWall5Top.png",4);
	sprite_replace(sprDebris5,"sprDebris5.png",4);
	sprite_replace(sprDetail5,"sprDetail5.png",3);
	sprite_replace(sprWall5Bot,"sprWall5Bot.png",3);
	sprite_replace(sprSodaMachineHurt,"sprSodaMachineHurt.png",3);
	sprite_replace(sprStreetLightHurt,"sprStreetLightHurt.png",3);
	sprite_replace(sprSnowBotCarLift,"sprSnowBotCarLift.png",4);
	sprite_replace(sprFrozenCar,"sprFrozenCar.png",1);
	sprite_replace(sprSnowBotCarIdle,"sprSnowBotCarIdle.png",6);
	sprite_replace(sprSnowBotCarWalk,"sprSnowBotCarWalk.png",8);
	sprite_replace(sprSnowBotCarHurt,"sprSnowBotCarHurt.png",3);
	sprite_replace(sprSnowBotCarThrow,"sprSnowBotCarThrow.png",5);
	sprite_replace(sprFrozenCarThrown,"sprFrozenCarThrown.png",6);
	sprite_replace(sprFrozenCarHurt,"sprFrozenCarHurt.png",3);
	sprite_replace(sprSnowFlake,"sprSnowFlake.png",3);
	sprite_replace(sprHydrant,"sprHydrant.png",1);
	sprite_replace(sprHydrantHurt,"sprHydrantHurt.png",3);
	sprite_replace(sprHydrantDead,"sprHydrantDead.png",3);
	sprite_replace(sprSnowMan,"sprSnowMan.png",1);
	sprite_replace(sprSnowManHurt,"sprSnowManHurt.png",3);
	sprite_replace(sprSnowManDead,"sprSnowManDead.png",3);
	sprite_replace(sprWind,"sprWind_strip9.png",9);
	sprite_replace(sprSnowFlake,"sprSnowFlake.png",3);
	sprite_replace(sprPStat1Idle,"sprPStat1Idle.png",1);
	sprite_replace(sprPStat1Hurt,"sprPStat1Hurt.png",3);
	sprite_replace(sprPStat2Idle,"sprPStat2Idle.png",1);
	sprite_replace(sprPStat2Hurt,"sprPStat2Hurt.png",3);
	sprite_replace(sprPStatDead,"sprPStatDead.png",3);	
	background_color = make_color_rgb(50, 54, 152);
	BackCont.shadcol = c_black;
	TopCont.fog = sprFog2;
	global.sprites_swapped = true;
	}


if(GameCont.area == 106 && GameCont.subarea = 3){
	with(Van){
		freak = 0;
		}
	}

if(GameCont.loops > 0 && opt.enemies_mutations == true){

	if(instance_exists(Gator) || instance_exists(BuffGator)){
		with (Gator) {
			gator_tp()
		}
		with (BuffGator) {
			gator_tp()
		}
	}

}
	
if(GameCont.loops > 2 && opt.enemies_mutations == true){	
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

var r3 = irandom(100);

if(r3 < 26 && global.iattbd == false && opt.add_dark == true && (GameCont.area == 1 || GameCont.area == 3 || GameCont.area == 5 || GameCont == 103)){
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

if(r3 > 26 && global.iattbd == false){
	global.iattbd = true;
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
		if((wep == wep_hyper_rifle || wep == wep_hyper_launcher || wep == wep_hyper_slugger || (wep == wep_rogue_rifle && race != "rogue")) && global.idpd_noticed_your_weapon == false && GameCont.kills != 0 && opt.IDPD_seek == 2){
			global.idpd_noticed_your_weapon = true;
			instance_create(0,0,WantPopo);
			}
	}	

//Makes weapons cursed in cursed crystal caves
if(GameCont.area == 104 && opt.cursed_caves_rework == true){
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
if (opt.death_effects == true && GameCont.loops > 0) {
		
		with instances_matching_le(JungleFly, "my_health", 0) {
			instance_create(x,y,MaggotExplosion);
			instance_create(x + irandom(20),y + irandom(20),BigRad);
			instance_create(x + irandom(20),y + irandom(20),Rad);
			instance_create(x + irandom(20),y + irandom(20),Rad);
		}
		
		with instances_matching_le(Salamander, "my_health", 0) {
			salamander_death();
			instance_create(x + irandom(20),y + irandom(20),BigRad);
			instance_create(x + irandom(20),y + irandom(20),Rad);
			instance_create(x + irandom(20),y + irandom(20),Rad);
		}
		
		with instances_matching_le(Molefish, "my_health", 0) {
			molefish_death();
			instance_create(x + irandom(20),y + irandom(20),Rad);
			sound_play(sndMolefishFire);
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
	
	if (opt.death_effects == true && GameCont.loops > 1) {
		
		with instances_matching_le(Jock, "my_health", 0) {
			instance_create(x,y,Explosion);
			repeat (6) instance_create(x + irandom(20),y + irandom(20),Rad);
			sound_play(sndExplosion);
		}
		
		with instances_matching_le(TechnoMancer, "my_health", 0) {
			techno_mancer_death();
			repeat (4) instance_create(x + irandom(20),y + irandom(20),BigRad);
			repeat (8) instance_create(x + irandom(20),y + irandom(20),Rad);
			sound_play(sndClusterLauncher);
		}
		
		with instances_matching_le(CrownGuardian, "my_health", 0) {
			crown_guardian_death();
			instance_create(x + irandom(20),y + irandom(20),BigRad);
			instance_create(x + irandom(20),y + irandom(20),Rad);
			instance_create(x + irandom(20),y + irandom(20),Rad);
			sound_play(sndNothing2Ball);
		}
		
		with instances_matching_le(Van, "my_health", 0) {
			instance_create(x,y,RogueStrike);
		}
		
		with instances_matching_le(Bandit, "my_health", 0) {
			bandit_death();
			instance_create(x + irandom(20),y + irandom(20),Rad);
			sound_play(sndEnemyFire);
		}
		
		with instances_matching_le(Wolf, "my_health", 0) {
			wolf_death();
			repeat (3) instance_create(x + irandom(20),y + irandom(20),Rad);
			sound_play(sndEnemyFire);
		}
		
		with instances_matching_le(Molesarge, "my_health", 0) {
			molesarge_death();
			repeat (3) instance_create(x + irandom(20),y + irandom(20),Rad);
			sound_play(sndMolesargeFire);
		}
		
		with instances_matching_le(OasisBoss, "my_health", 0) {
			instance_create(x + irandom(20),y + irandom(20),BigRad);
			instance_create(x + irandom(20),y + irandom(20),BigRad);
			repeat (4) instance_create(x + irandom(20),y + irandom(20),Rad);
			repeat (5) instance_create(x + irandom(20),y + irandom(20),BoneFish);
		}
		
		with instances_matching_le(Grunt, "my_health", 0) {
			grunt_death();
			sound_play(sndRogueRifle)
		}
		
		with instances_matching_le(Inspector, "my_health", 0) {
			inspector_death();
			sound_play(sndRogueRifle);
		}
		
		with instances_matching_le(Last, "my_health", 0) {
			instance_create(0,0,VanSpawn);
			global.cap_spawned = true;
		}
	}
	
	if (opt.death_effects == true && GameCont.loops > 2) {
		
		if(r3 < 67){
			with instances_matching_le(DogGuardian, "my_health", 0) {
				dog_guardian_death();
				instance_create(x + irandom(20),y + irandom(20),BigRad);
				instance_create(x + irandom(20),y + irandom(20),BigRad);
				repeat (4) instance_create(x + irandom(20),y + irandom(20),Rad);
			}
		}
		
		with instances_matching_le(Turret, "my_health", 0) {
			instance_create(x,y,Explosion);
			repeat (6) instance_create(x + irandom(20),y + irandom(20),Rad);
			sound_play(sndExplosion);
		}
		
		if(r3 < 21){
			with instances_matching_le(ExploGuardian, "my_health", 0) {
				explo_guardian_death();
				sound_play(sndUltraGrenade);
			}
		}
		
		with instances_matching_le(JungleBandit, "my_health", 0) {
			repeat (3) instance_create(x,y,ToxicGas);
			repeat (3) instance_create(x + irandom(20),y + irandom(20),Rad);
			sound_play(sndToxicBoltGas);
		}
		
		with instances_matching_le(JungleAssassin, "my_health", 0) {
			repeat (3) instance_create(x,y,ToxicGas);
			repeat (3) instance_create(x + irandom(20),y + irandom(20),Rad);
			sound_play(sndToxicBoltGas);
		}
		
		if(GameCont.area == 105){
			with instances_matching_le(BanditBoss,"my_health", 0) {
				instance_create(x,y,ToxicDelay);
				sound_play(sndToxicBoltGas);
				instance_create(x + irandom(20),y + irandom(20),Rad);
				instance_create(x + irandom(20),y + irandom(20),Rad);
				instance_create(x + irandom(20),y + irandom(20),BigRad);
				}
			}
		
		with instances_matching_le(EliteGrunt, "my_health", 0) {
			elite_grunt_death();
		}
	}
	
	if (opt.death_effects == true && GameCont.loops > 3) {
	
		with instances_matching_le(LightningCrystal, "my_health", 0) {
			lightning_crystal_death();
			instance_create(x + irandom(20),y + irandom(20),BigRad);
			instance_create(x + irandom(20),y + irandom(20),Rad);
			instance_create(x + irandom(20),y + irandom(20),Rad);
		}
	
		with instances_matching_le(Necromancer, "my_health", 0) {
			with(instance_create(x,y,CustomObject)){
				//Necromancer will revive
				nwr = 1;
			}
			repeat (6) instance_create(x + irandom(20),y + irandom(20),Rad);
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

if(opt.idpd_mashup == true){
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
with(Jock){
	if (opt.no_jocks != false){
		instance_change(Wind,false);
		instance_create(x,y,Wind);
	}
}

//No Early Shielders	
with(Shielder){
	if (GameCont.hard < 10 && opt.nes == true){
		instance_change(Wind,false);
		instance_create(x,y,Inspector);
	}
}

//4 IDPD Portals instead of van in Labs
with(WantVan){
	if (GameCont.area == 6 && opt.piov == true){
		instance_change(Wind,false);
		instance_create(x,y,WantPopo);
		instance_create(x,y,WantPopo);
	}
}

//No early Popo Freak revives
with(WantRevivePopoFreak){
	if (GameCont.loops < 3 && opt.diropf == false){
		instance_change(Wind,false);
		instance_create(x,y,Wind);
	}
}

GameCont.esp_mod_opt = opt;

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
if(!global.vault_torch_transformed && instance_exists(CrownGuardian) && opt.crown_guardian_help == true){
    with(Torch){
        instance_change(Wind,false);
        instance_create(x,y,Guardian);
		instance_create(x,y,Torch);
		for(var i = 1; i < GameCont.vaults; i += 2){
			instance_create(x,y,Turret);
		}
		for(var i = 2; i < GameCont.vaults; i += 3){
			instance_create(x,y,IDPDSpawn);
		}
    }
    global.vault_torch_transformed = true;
}

// LilHunter help
if(instance_exists(LilHunterDie) && !global.lilhunter_revenged && opt.lilhunter_revenge){
    instance_create(0,0,VanSpawn);
    global.lilhunter_revenged = true;
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

#define CustomOptions_save
// a script that runs when Custom Options detects the menu closing
// you can save your options file here or in `#define cleanup`

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
if(nexthurt > current_frame){
	if(sprite_index != spr_hurt) {
		image_index = 0;
		sprite_index = spr_hurt;}
		}
	else{
		if(speed > friction) 
			sprite_index = spr_walk;
		else 
			sprite_index = spr_idle;
		}

#define enter_to_oasis_hurt (damage)
if sprite_index != spr_hurt
	image_index = 0;
	sprite_index = spr_hurt;
sound_play(sndOasisHurt);
my_health -= damage;
if (my_health <= 0) {
    instance_destroy();
}

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

if(opt.fix_venus_car == true){
	with(CarVenusFixed){
		instance_destroy();
	}
}

if(opt.popups == true){
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

if(GameCont.area != 7 && GameCont.area != 5 && opt.no_guards == true){
	with (Guardian) instance_delete(self);
	with (ExploGuardian) instance_delete(self);
	with (DogGuardian) instance_delete(self);
	with (GhostGuardian) instance_delete(self);
}

if(GameCont.area == 5 && opt.no_guards == true){
	with (Guardian) instance_delete(self);
	with (GhostGuardian) instance_delete(self);
}

if(GameCont.loops == 1 && opt.no_addinational_enemies == false){
	if(GameCont.area == 1 || GameCont.area == 7){
		with (Sniper) instance_delete(self);
		}
	if(GameCont.area == 5){
		with(DogGuardian) instance_delete(self);
		}
	}

if(GameCont.area == 3 && GameCont.subarea == 3 && GameCont.crown != crwn_none){
	with(WeaponChest){
		curse = 1;
		sprite_index = sprCursedChest;
		}
	}

if(global.cap_spawned == true && global.cap_dead == false){
}

if(GameCont.vaults > 2 && (GameCont.area == 105 || GameCont.area == 103 || GameCont.area == 101 || (GameCont.area == global.crown_guardian_locations && GameCont.subarea == 2))){
	global.amount_of_crown_guardians += 2;
	}

if(opt.hammerhead_time == 2 && GameCont.loops > 0){
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
	
if(opt.popups == true){
	if(instance_exists(Player)){
		if(GameCont.area == 104 && global.popup_shown._ccc == false && opt.cursed_caves_rework == true){
			with instance_create(Player.x,Player.y,PopupText) text = "FLOOR IS @p@qC@qU@qR@qS@qE@qD@q!@s"
			global.popup_shown._ccc = true;
		}
	}
}

if(opt.chest_replacments == true){
	with(AmmoChest){
		if (GameCont.area == 5 || GameCont.area == 106 || GameCont.area == "city" || GameCont.area == "HQ"){
			instance_change(IDPDChest,false);
		}
	}

	with(AmmoChestMystery){
		if (GameCont.area == 5 || GameCont.area == 106 || GameCont.area == "city" || GameCont.area == "HQ"){
			instance_change(IDPDChest,false);
		}
	}

	with(Mimic){
		if (GameCont.area == 5 || GameCont.area == 106 || GameCont.area == "city" || GameCont.area == "HQ"){
			instance_change(IDPDChest,false);
		}
	}
}

if((GameCont.area == 0 || GameCont.area = 7 && GameCont.subarea = 3) && GameCont.loops < 4){
	GameCont.seenhq = 0;
	if(instance_exists(Player) && opt.bonus_loop_max_health == true){
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
	sprite_restore(sprPStat2Hurt);
	sprite_restore(sprPStatDead);
	sprite_restore(sprSnowManDead);
	}


if(Player.my_health == 1 && GameCont.area == 106 && GameCont.subarea == 1){
	sound_play_music(mus106b);
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
	sprite_replace(sprBanditBossIdle,"JungleBigBanditIdle.png",6,16,16 );
	sprite_replace(sprBanditBossWalk,"JungleBigBanditWalk.png",8,16,16 );
	sprite_replace(sprBanditBossFire,"JungleBigBanditFire.png",2,16,16 );
	sprite_replace(sprBanditBossTell,"JungleBigBanditTell.png",2,16,16 );
	sprite_replace(sprBanditBossDash,"JungleBigBanditDash.png",2,16,16 );
	sprite_replace(sprBanditBossStop,"JungleBigBanditStop.png",2,16,16 );
	sprite_replace(sprBanditBossHurt,"JungleBigBanditHurt.png",3,16,16 );
	sprite_replace(sprBanditBossDead,"JungleBigBanditDead.png",9,16,16 );
	}
	
if(GameCont.area == 5){
	sprite_replace(sprBossIntro,"sprBossIntro.png",10,150,0 );
	sprite_replace(sprBanditBossIdle,"sprSnowBigBanditIdle.png",6,16,16 );
	sprite_replace(sprBanditBossWalk,"sprSnowBigBanditWalk.png",8,16,16 );
	sprite_replace(sprBanditBossFire,"sprSnowBigBanditFire.png",2,16,16 );
	sprite_replace(sprBanditBossTell,"sprSnowBigBanditTell.png",2,16,16 );
	sprite_replace(sprBanditBossDash,"sprSnowBigBanditDash.png",2,16,16 );
	sprite_replace(sprBanditBossStop,"sprSnowBigBanditStop.png",2,16,16 );
	sprite_replace(sprBanditBossHurt,"sprSnowBigBanditHurt.png",3,16,16 );
	sprite_replace(sprBanditBossDead,"sprSnowBigBanditDead.png",9,16,16 );
	}

if(opt.IDPD_seek == 1 && GameCont.area == 106){
	instance_create(0,0,WantVan);
	}

if(opt.chest_replacments == true){
	chest_replacer ();
}

//Adding darknes to palace, jungles and night desert
if((GameCont.area == 7 || GameCont.area == 105 || GameCont.area == 0 || (GameCont.area == 106 && GameCont.subarea == 2)) && opt.add_dark == true){
	TopCont.darkness = 1;
}

if(GameCont.area == 106 && GameCont.subarea == 2){
	sound_play_music(mus106b);
	}

if (instance_exists(CarVenus) && opt.fix_venus_car)
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
if (opt.IDPD_seek > 1 && GameCont.crown != crwn_none && !(GameCont.area == 107) && global.no_idpd_for_cap == false){
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,WantPopo);
	}
	
if (opt.IDPD_seek > 1 && GameCont.seenhq == 1 && !(GameCont.area == 107) && global.no_idpd_for_cap == false){
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,WantPopo);
		instance_create(0,0,WantVan);
	}
	
if (opt.IDPD_seek > 1 && global.cap_spawned == true && !(GameCont.area == 107)){
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,WantPopo);
		instance_create(0,0,WantVan);
	}

if (opt.IDPD_seek > 0 && GameCont.area == 5 && GameCont.subarea == 1){
		instance_create(0,0,IDPDSpawn);
		instance_create(0,0,IDPDSpawn);
	}
	
if (opt.IDPD_seek > 0 && (GameCont.area == 5 && GameCont.subarea == 2) || (GameCont.area == 6 && GameCont.subarea == 1) || (GameCont.area == 7 && GameCont.subarea == 1)){
		repeat(4)instance_create(0,0,IDPDSpawn);
		instance_create(0,0,WantPopo);
		instance_create(0,0,WantVan);
	}
	
if (opt.IDPD_seek > 0 && (GameCont.area == 5 && GameCont.subarea == 3) || (GameCont.area == 7 && GameCont.subarea == 2)){
		repeat(4)instance_create(0,0,IDPDSpawn);
		instance_create(0,0,WantPopo);
		instance_create(0,0,WantVan);
	}

if (opt.IDPD_seek > 1 && (GameCont.area == 5 && GameCont.subarea == 3) || (GameCont.area == 7 && GameCont.subarea == 2)){
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
if (GameCont.crown == crwn_blood) global.factor = global.factor * opt.blood_factor;
var guarantee = opt.enemies_guaranteed + (GameCont.loops * opt.loop_guranteed_add);

var spawned = 0;

with(Floor){
    // Too close to spawn
    if(point_distance(x,y,Player.x,Player.x) < 7 * 16) continue;
    // Check if place is free
    if(!place_meeting(x, y, Wall) && !place_meeting(x, y, prop) && !place_meeting(x, y, chestprop) && !place_meeting(x, y, MaggotSpawn) && !place_meeting(x,y,enemy)) continue;
		
	/*if(GameCont.area == 105 && random(5) < 1 && opt.no_addinational_enemies != 4){
		instance_create(x,y,PortalClear);
		with(instance_create(x,y,Sapling)){
			team = 1;
			}
		}*/
	
	if(global.cap_spawned == false && GameCont.area == 0 && GameCont.loops == 5 && opt.l5cap == true){
            var can_spawn_cap = true; 
				
			if(can_spawn_cap == true){
			instance_create(x,y,Last);
			sound_play(sndUseVan);
			global.cap_spawned = true;
			}
        }
		
    if(!global.crown_guardian_spawned && GameCont.subarea == global.crown_guardian_sublocation && GameCont.vaults == 3 && opt.crown_guardian_on_max){
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

    if(irandom(opt.chance_to_not_spawn) <= global.factor * global.eem){
        instance_create(x + 16,y + 16,pull_from_pool(pool));
		instance_create(x + 16,y + 16,PortalClear);
        spawned++;
    }
}

//trace("Placed: " + string(spawned)+"/"+string(guarantee)); // Debug
			
if (GameCont.area == areas.jungle)
    add_ravens();

if (opt.cursing_enabled && GameCont.crown != crwn_none)
	curse_c();
	
#define curse_c
var curse_chance = opt.evry_cursed_crystal
if (GameCont.crown == crwn_curses)
	curse_chance = opt.cured_evry_cursed_crystal

with(Spider){
	if (random(1) <= curse_chance){
		instance_change(Wind,false);
		instance_create(x,y,InvSpider);
		count = 0;
	}
}

with(LaserCrystal){
	if (random(1) <= curse_chance){
		instance_change(Wind,false);
		instance_create(x,y,InvLaserCrystal);
		count = 0;
	}
}

// -------------- //
#define fix_car_venus
with(CarVenus){
    with(CarVenus){
        instance_change(Wind,false);
        instance_create(x,y,CarVenusFixed);
        for (i=0; i < array_length(global.CarVenus_Guards); i++) { 
            instance_create(x,y,global.CarVenus_Guards[i]);
			with (CarVenusFixed){
				my_health = 1000000000;
				}
        }
    }
}

// -------------- //
#define chest_replacer
switch (GameCont.area) {	
	case areas.pizza:
		with(RadChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		with(RogueChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		with(SuperMimic){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		with(AmmoChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		with(AmmoChestMystery){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		with(IDPDChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		with(Mimic){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		break;
	case "pizza":
		with(RadChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		with(RogueChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		with(SuperMimic){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		with(AmmoChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		with(AmmoChestMystery){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		with(IDPDChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		with(Mimic){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		break;	
	case "turtles":
		with(RadChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		with(RogueChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		with(SuperMimic){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		with(AmmoChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		with(AmmoChestMystery){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		with(IDPDChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		with(Mimic){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,RadChest);
		}
		break;		
	case areas.IDPD:
		with(RadChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		with(SuperMimic){ //IDPDChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		break;
	case "HQ":
		with(RadChest){//HealthChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		with(SuperMimic){ //IDPDChest
			instance_change(Wind,false);
			instance_create(x,y,HealthChest);
		}
		break;
	case areas.labs:
		with(AmmoChest){ //Mimic
			instance_change(Wind,false);
			instance_create(x,y,Mimic);
		}
		with(AmmoChestMystery){ //Mimic
			instance_change(Wind,false);
			instance_create(x,y,Mimic);
		}		
		with(HealthChest){//SuperMimic
			instance_change(Wind,false);
			instance_create(x,y,SuperMimic);
		}
		break;
	case "labs":
		with(AmmoChest){ //Mimic
			instance_change(Wind,false);
			instance_create(x,y,Mimic);
		}
		with(AmmoChestMystery){ //Mimic
			instance_change(Wind,false);
			instance_create(x,y,Mimic);
		}		
		with(HealthChest){//SuperMimic
			instance_change(Wind,false);
			instance_create(x,y,SuperMimic);
		}
		break;
}


// -------------- //
#define add_ravens
var need_to_add = GameCont.loops * (opt.more_ravens_in_jungle * 5);

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
    if(attempts >= opt.attmpts_to_add_enemies) {
        break;
    }
    attempts++;
}

return f_enemy;

#define get_pool

// No enemies mode
if (opt.no_addinational_enemies == true){ 
	var curr_loop = clamp(GameCont.loops ,0,array_length(global.empty_pool) - 1);
	return {
	p: global.empty_pool[curr_loop],
	w: global.empty_pool_w[curr_loop]
	}
}

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
        pool = global.pizza_pool;
        pool_w = global.pizza_pool_w;
        break;
	case "labs":
        pool = global.labs_pool;
        pool_w = global.labs_pool_w;
        break;	
	case "elevator":
        pool = global.pizza_pool;
        pool_w = global.pizza_pool_w;
        break;	
	case "palace":
        pool = global.palace_pool;
        pool_w = global.palace_pool_w;
        break;
	case "palace":
        pool = global.pizza_pool;
        pool_w = global.pizza_pool_w;
        break;
	case "venuz":
        pool = global.pizza_pool;
        pool_w = global.pizza_pool_w;
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
        pool = global.pizza_pool;
        pool_w = global.pizza_pool_w;
        break;
	case "terminal_transition":
        pool = global.pizza_pool;
        pool_w = global.pizza_pool_w;
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