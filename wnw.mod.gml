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
global.desert_pool =   [/*L0*/[FireBaller, Salamander]/*L0*/, /*L1*/[FireBaller, Salamander, Guardian, ExploGuardian, Wind]/*L1*/, /*L2*/[Salamander, Guardian, ExploGuardian, SuperFireBaller, DogGuardian, FireBaller]/*L2*/, /*L3*/[Salamander, Guardian, ExploGuardian, SuperFireBaller, DogGuardian, FireBaller]/*L3*/];
global.desert_pool_w = [      [0.03,       0.03],                   [0.8,        0.2,        0.2,      0.2,           1],                [1,          1,        1,             0.6,             0.4,         1],                      [1,          1,        1,             1,               1,           1]];
// Sewers
global.sewers_pool =   [/*L0*/[Turtle, FireBaller]/*L0*/, /*L1*/[Turtle, FireBaller, JungleBandit, Spider]/*L1*/, /*L2*/[Turtle, FireBaller, Spider, JungleFly, JungleBandit, JungleAssassinHide, RatkingRage]/*L2*/, /*L3*/[Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, JungleAssassinHide, JungleBandit, RatkingRage, RhinoFreak]/*L3*/, /*L4*/[Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, Guardian, ExploGuardian, JungleBandit, RatkingRage, RhinoFreak, JungleAssassinHide]/*L4*/, /*L5*/[Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, Guardian, ExploGuardian, DogGuardian, BanditBoss, RatkingRage, RhinoFreak, JungleAssassinHide, JungleBandit]/*L5*/, /*L6*/[Necromancer, Turtle, FireBaller, Spider, JungleFly, LightningCrystal, Guardian, ExploGuardian, DogGuardian, BanditBoss, RatkingRage, RhinoFreak, JungleAssassinHide, JungleBandit]/*L6*/];
global.sewers_pool_w = [      [0.25,    0.25],                  [1,      1,          1,            1],                  [1,      1,          1,      1,         1,            1,                  1],                       [1,           1,      1,           1,     1,         1,                1,                  1,            1,           1],                      [1,           1,      1,          1,      1,         1,                1,        1,             1,            1,           1,          1],                              [1,           1,      1,          1,      1,         1,                1,        1,             0.6,         0.25,       1,           1,          1,                  1],                        [1,           1,      1,          1,      1,         1,                1,        1,             0.9,         0.35,       1,           1,          1,                  1]];
// Scrapyard
global.scrapyard_pool =   [/*L0*/[Wolf, Tires, Wind]/*L0*/, /*L1*/[Crab, Wolf, Jock]/*L1*/, /*L2*/[ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret]/*L2*/, /*L3*/[ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret, Guardian, BecomeTurret, Ratking, RatkingRage]/*L3*/, /*L4*/[ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret, Guardian, ExploGuardian, DogGuardian, BecomeTurret, Ratking, RatkingRage]/*L4*/, /*L5*/[ToxicBarrel, Crab, Wolf, Jock, SnowTank, Turret, Guardian, ExploGuardian, DogGuardian, TechnoMancer, BecomeTurret, BanditBoss, Ratking, RatkingRage]]/*L5*/;
global.scrapyard_pool_w = [      [0.25,  0.03, 1],                [0.125,0.125,0.125],            [0.2,         1,    1,    0.2,  1,        1],                  [0.2,         1,    0.2,  1,    1,        1,      1,        1,            1,       1],                       [0.2,         1,    1,    0.2,  1,        1,      1,        1,             0.75,        1,            1,       1],                       [0.2,         1,    1,    0.2,  1,        1,      1,        1,             1,           0.35,         1,            0.35,       1,       1]];
// Crystal caves 
global.crystals_caves_pool =   [/*L0*/[Molesarge, CrystalProp]/*L0*/, /*L1*/[Molesarge, GoldScorpion, SuperFireBaller]/*L1*/, /*L2*/[Necromancer, Guardian, SuperFireBaller, GoldScorpion, Molesarge]/*L2*/, /*L3*/[Necromancer, Guardian, SuperFireBaller, ExploGuardian, DogGuardian, Molesarge, GoldScorpion]/*L3*/, /*L4*/[Necromancer, Guardian, SuperFireBaller, ExploGuardian, DogGuardian, BanditBoss, Molesarge, GoldScorpion]/*L4*/];
global.crystals_caves_pool_w = [      [0.05,      0.3],                     [0.65,      0.1,            0.1],                       [1,           1,        0.6,             0.3,          1],                     [1,           1,        1,               1,             0.5,         1,         1],                        [1,           1,        1,               1,             0.9,         0.35,       1,         1]];
// Winter
global.winter_pool =   [/*L0*/[PopoFreak, StreetLight, Wind, Molesarge]/*L0*/, /*L1*/[Jock, Sniper, PopoFreak, Molesarge]/*L1*/, /*L2*/[Jock, Sniper, PopoFreak, Turret, BecomeTurret, Guardian, Molesarge]/*L2*/, /*L3*/[Jock, Sniper, PopoFreak, Turret, BecomeTurret, Guardian, TechnoMancer, Molesarge]/*L3*/, /*L4*/[Jock, Sniper, PopoFreak, Turret, BecomeTurret, Guardian, TechnoMancer, Molesarge]/*L4*/];
global.winter_pool_w = [      [0.005,     0.25,        1,    0.25],                  [0.25, 0.25,   0.1,       1],                     [0.25, 1,      0.4,       1,      1,            1,        1],                     [1,    1,      1,         1,      1,            1,        0.1,          1],                     [1,    1,      1,         1,      1,            1,        0.35,         1]];
// Labs
global.labs_pool =   [/*L0*/[PopoFreak, BigMaggot, FrogEgg, Rat, Maggot]/*L0*/, /*L1*/[PopoFreak, JungleFly, FrogEgg, Exploder, BigMaggot, Rat, Gator, Bandit, RadMaggot, Maggot]/*L1*/, /*L2*/[PopoFreak, JungleFly, FrogEgg, BuffGator, LightningCrystal, RatkingRage, Exploder, BigMaggot, Rat, Gator, Bandit, Maggot, RadMaggot]/*L2*/, /*L3*/[PopoFreak, JungleFly, FrogEgg, SuperFrog, BuffGator, Guardian, Bandit, LightningCrystal, RatkingRage, BigMaggot, Exploder, Rat, Gator, Maggot, RadMaggot, MaggotSpawn]/*L3*/, /*L4*/[PopoFreak, JungleFly, FrogEgg, SuperFrog, BuffGator, Guardian, ExploGuardian, LightningCrystal, RatkingRage, DogGuardian, BigMaggot, Exploder, Bandit, Rat, Gator, Maggot, RadMaggot, RadMaggotChest, MaggotSpawn]/*L4*/, /*L5*/[PopoFreak, JungleFly, FrogEgg, SuperFrog, BuffGator, Guardian, ExploGuardian, LightningCrystal, RatkingRage, DogGuardian, BigMaggot, Exploder, BanditBoss, Bandit, Rat, Gator, Maggot, RadMaggot, RadMaggotChest, MaggotSpawn]/*L5*/];
global.labs_pool_w = [      [0.25,      0.4,       1,       1,   1],                  [0.35,      0.35,      1,       0.25,     0.3,       1,   1,     1,      1,         1],                  [1,         1,         1,       0.4,         0.4,            0.4,         1,        1,         1,   1,     1,      1,      1],                     [1,         1,         1,       1,         1,         1,        1,      0.4,              1,           1,         1,        1,   1,     1,      1,         1],                       [1,         1,         1,       1,         1,         1,        1,             0.4,              1,           1,           1,         1,        1,      1,   1,     1,      1,         1,              1],                       [1,         1,         1,       1,         1,         1,        1,             1,                1,           1,           1,         1,        1,          1,      1,   1,     1,      1,         1,              1]];
// Palace
global.palace_pool =   [/*L0*/[Gator, GatorSmoke, Pillar, SmallGenerator, BuffGator]/*L0*/, /*L1*/[Gator, JungleAssassin, BuffGator, GatorSmoke]/*L1*/, /*L2*/[Gator, JungleAssassin, PopoFreak, Turret, BuffGator]/*L2*/, /*L3*/[Gator, JungleAssassin, PopoFreak, Turret, BecomeTurret, BuffGator]/*L3*/];
global.palace_pool_w = [      [0.3,   0.3,        0.3,    0.3,       0.05],                       [1,     0.5,            0.3,       1],                      [1,     1,              1,         1,      0.25],                  [1,     1,              1,         1,      1,            1]];
// Vault
global.vault_pool = [[Torch]];
global.vault_pool_w = [[1]];
// Oasis
global.oasis_pool =   [/*L0*/[Turtle, Exploder, Gator, Freak]/*L0*/, /*L1*/[Turtle, Exploder, Gator, Freak, BuffGator, SuperFrog]/*L1*/, /*L2*/[Turtle, Exploder, Gator, Freak, BuffGator, SuperFrog, Guardian, ExploGuardian]/*L2*/, /*L3*/[Turtle, Exploder, Gator, Freak, BuffGator, SuperFrog, OasisBoss, Guardian, ExploGuardian, DogGuardian]/*L3*/, /*L4*/[Turtle, Exploder, Gator, Freak, BuffGator, SuperFrog, OasisBoss, Guardian, ExploGuardian, DogGuardian, BanditBoss]/*L4*/];
global.oasis_pool_w = [      [0.5,    1,        1,     1],                 [1,      1,        1,     1,     0.3,       0.3],                   [1,      1,        1,     1,     1,         1,         1,        1],                         [1,      1,        1,     1,     1,         1,         1,         1,        1,             1],                       [1,      1,        1,     1,     1,         1,         1,         1,        1,             1,           0.4]];
// PIZZA!
global.pizza_pool = [[Spider]];
global.pizza_pool_w = [[0.1]];
// Mansion
global.mansion_pool =   [/*L0*/[MoneyPile]/*L0*/, /*L1*/[GoldScorpion, GoldSnowTank, Wind, MoneyPile]/*L1*/, /*L2*/[GoldScorpion, GoldSnowTank, Guardian, ExploGuardian]/*L2*/, /*L3*/[GoldScorpion, GoldSnowTank, Guardian, ExploGuardian, DogGuardian]/*L3*/, /*L4*/[GoldScorpion, GoldSnowTank, Guardian, ExploGuardian, DogGuardian, BanditBoss]/*L4*/];
global.mansion_pool_w = [      [0],                     [0.05,         0.025,        1,    1],                     [0.25,         0.15,         1,        1],                         [0.75,         0.6,          1,        1,             0.5],                     [1,            1,            1,        1,             0.75,        0.4]];
// Cursed crystal caves
global.cursed_crystals_caves_pool =   [/*L0*/[InvCrystal, FireBaller, BonePile]/*L0*/, /*L1*/[MeleeFake, FireBaller, Scorpion]/*L1*/, /*L2*/[MeleeFake, FireBaller, Guardian, ExploGuardian, Scorpion]/*L2*/, /*L3*/[MeleeFake, FireBaller, Guardian, ExploGuardian, DogGuardian, BanditBoss, Scorpion]/*L3*/];
global.cursed_crystals_caves_pool_w = [      [0.33,      0.33,       0.33],                  [1,         1,         1],                     [1,         1,          1,        1,             1],                    [1,         1,          1,        1,             1,           0.35,       1]];
// Jungle
global.jungle_pool =   [/*L0*/[Raven, Gator, Exploder, Car]/*L0*/, /*L1*/[Raven, Gator, Exploder, SuperFrog, Car, BuffGator]/*L1*/, /*L2*/[Raven, Gator, Exploder, SuperFrog, ExploFreak, Sniper, Car, BuffGator]/*L2*/, /*L3*/[Raven, Gator, Exploder, SuperFrog, ExploFreak, Guardian, Sniper, ExploGuardian, Car, BuffGator]/*L3*/,/*L4*/[Raven, Gator, Exploder, SuperFrog, ExploFreak, Guardian, Sniper, ExploGuardian, Car, BuffGator, DogGuardian, BanditBoss]/*L4*/];
global.jungle_pool_w = [      [1,     1,     1,        1],               [1,     1,     1,        0.4,       1,   0.5],                   [1,     1,     1,        1,         1,          1,      1,   1],                     [1,     1,     1,        1,         1,          1,        1,      1,             1,   1],                    [1,     1,     1,        1,         1,          1,        1,      1,             1,   1,         1,           1]];
// IDPD palace
global.IDPD_pool =   [/*L0*/[Turret]/*L0*/,/*L1*/[Turret, BecomeTurret]/*L1*/,/*L2*/[Turret, BecomeTurret, PopoFreak]/*L2*/];
global.IDPD_pool_w = [      [0],                 [0.25,   0.25],                    [0.5,    0.5,          0.25]];
// Vacation
global.vacation_pool = [[GoldChest]];
global.vacation_pool_w = [[1]];
// Coast
global.nttecoast_pool =   [/*L0*/[Bandit, Maggot, BigMaggot, MaggotSpawn]/*L0*/, /*L1*/[Bandit, Maggot, BigMaggot, MaggotSpawn, Salamander, JungleFly]/*L1*/, /*L2*/[Bandit, Maggot, BigMaggot, MaggotSpawn, Salamander, JungleFly, Guardian, ExploGuardian]/*L2*/, /*L3*/[Bandit, Maggot, BigMaggot, MaggotSpawn, Salamander, JungleFly, Guardian, ExploGuardian, DogGuardian, BanditBoss]/*L3*/];
global.nttecoast_pool_w = [      [1,      1,      0.25,      0.5],                     [1,      1,      1,         1,           0.3,        0.5],                   [1,      1,      1,         1,           1,          1,         0.5,      0.5],                       [1,      1,      1,         1,           1,          1,         1,        1,             0.4,         0.25]];
// Abbyss
global.nttetrench_pool =   [/*L0*/[Freak, Freak, BoneFish, MeleeFake]/*L0*/, /*L1*/[Freak, Freak, BoneFish, MeleeFake, Guardian, ExploGuardian]/*L1*/, /*L2*/[Freak, Freak, BoneFish, MeleeFake, Guardian, ExploGuardian, DogGuardian]/*L2*/, /*L3*/[Freak, Freak, BoneFish, MeleeFake, Guardian, ExploGuardian, DogGuardian, OasisBoss]/*L3*/];
global.nttetrench_pool_w = [      [1,     1,     1,        1],                     [1,     1,     1,        1,         0.3,      0.1],                       [1,     1,     1,        1,         1,        1,             0.4],                     [1,     1,     1,        1,         1,        1,             0.4,         1]];
// Red
global.nttered_pool =   [/*L0*/[Molefish]/*L0*/, /*L1*/[Molefish, ExploFreak, SuperFireBaller]/*L1*/, /*L2*/[Molefish, ExploFreak, SuperFireBaller, Guardian, ExploGuardian]/*L2*/, /*L3*/[Molefish, ExploFreak, SuperFireBaller, Guardian, ExploGuardian, DogGuardian, BanditBoss]/*L3*/];
global.nttered_pool_w = [      [1],                    [1,        0.25,       0.2],                         [1,        0.5,        0.4,             0.5,      0.4],                       [1,        0.8,        1,               1,        1,             0.4,         0.25]];
// Ice Caves
global.hmicecaves_pool =   [/*L0*/[Jock, Necromancer]/*L0*/, /*L1*/[Jock, Necromancer, Guardian]/*L1*/, /*L2*/[Jock, Necromancer, Guardian, ExploGuardian, DogGuardian]/*L2*/];
global.hmicecaves_pool_w = [      [0.2,  0.1],                     [0.5,  0.5,         0.5],                  [1,    1,           1,        1,             1]];
// Hive
global.hive_pool =   [/*L0*/[Spider, LaserCrystal, Bandit]/*L0*/, /*L1*/[Spider, LaserCrystal, JungleFly, Molesarge, Bandit]/*L1*/, /*L2*/[Spider, LaserCrystal, JungleFly, RhinoFreak, Molesarge, GoldSnowTank, Bandit]/*L2*/, /*L3*/[Spider, LaserCrystal, JungleFly, RhinoFreak, Molesarge, GoldSnowTank, GoldScorpion, ExploFreak, Bandit]/*L3*/, /*L4*/[Spider, LaserCrystal, JungleFly, RhinoFreak, Molesarge, GoldSnowTank, GoldScorpion, ExploFreak, Bandit, Guardian, ExploGuardian]/*L4*/, /*L5*/[Spider, LaserCrystal, JungleFly, RhinoFreak, Molesarge, GoldSnowTank, GoldScorpion, ExploFreak, Bandit, Guardian, ExploGuardian, DogGuardian, BanditBoss]/*L5*/];
global.hive_pool_w = [      [0.125,  0.025,        1],                  [1,      0.75,         0.5,       1,         1],                  [1,      1,            1,         1,          1,         0.5,          1],                  [1,      1,            1,         1,          1,         1,            1,            1,          1],                  [1,      1,            1,         1,          1,         1,            1,            1,          1,      1,        1],                         [1,      1,            1,         1,          1,         1,            1,            1,          1,      1,        1,             1,           1]];
// Undergrowth
global.undergrowth_pool =   [/*L0*/[Salamander, FireBaller]/*L0*/, /*L1*/[Salamander, FireBaller, JungleBandit, JungleAssassin]/*L1*/, /*L2*/[Salamander, FireBaller, SuperFireBaller, JungleBandit, JungleAssassin, ExploFreak]/*L2*/, /*L3*/[Salamander, FireBaller, SuperFireBaller, JungleBandit, JungleAssassin, ExploFreak, Guardian, ExploGuardian]/*L3*/,/*L4*/[Salamander, FireBaller, SuperFireBaller, JungleBandit, JungleAssassin, ExploFreak, Guardian, ExploGuardian, DogGuardian, BanditBoss]/*L4*/];
global.undergrowth_pool_w = [      [0.07,       0.2],                    [0.6,        1,          0.5,          0.3],                        [1,          1,          0.8,             1,            1,              0.5],                    [1,          1,          1,               1,            1,              0.8,        1,        1],                        [1,          1,          1,               1,            1,              1,          1,        1,             1,           1]];
// Moon
global.moon_pool =   [/*L0*/[SnowTank]/*L0*/, /*L1*/[SnowTank, PopoFreak]/*L1*/, /*L2*/[SnowTank, PopoFreak, Guardian]/*L2*/, /*L3*/[SnowTank, PopoFreak, Guardian, ExploGuardian]/*L3*/, /*L4*/[SnowTank, PopoFreak, Guardian, ExploGuardian, DogGuardian]/*L4*/];
global.moon_pool_w = [      [0.125],                [0.125,    0.125],                 [0.25,     0.25,      0.25],                 [0.5,      0.5,       0.5,      0.5],                       [1,        1,         1,        1,             0.8]];
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
trace("Thanks for installing the Whole New World 1.0 Beta mod! Build 101225");
trace("Also look in the options and make your game as comfortable as possible!");

// -----Important----- //
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
//idpd seek ultra - idpd noticed your hyper weapon/rogue rifle
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

global.ultra_weapons_random = [94, 95, 87, 86, 93, 92];

global.used_skills = [0, 0, 0, 0, 0, 0];

global.ultrachest_spawned = false;

global.temp_skippedchests = 0;

global.aowb = 0;

global.target = 0;

global.no_addinational_yell = false;
global.idpdyell_playing = false;

global.early_hammerhead_compensation = false;

global.loop_check = GameCont.loops;

global.is_player_notified = false;

global.newwepareasarrays = [[16,69,50],[17,71,30,52],[21,6,7,8,20,72],[61,57,18],[112,70,58],[89,28,59,65],[66,15,78,117,55,90,67,36],[124,74],[26,22,113,64,84,106,85,96,118,115],[107,49,73,125,25,11,77,33],[97,51],[119,60,12]];

global.goldenweps = [40,41,42,43,44,45,98,99,100,101,102,103,122,123];

global.weps = [3,4,5,6,7,19,34,21,30,27,14,17,47,18];

global.remind_weps = [0];

global.areaSwitch = 0;

global.enemies_count = 0;

global.weapon_areas = ds_map_create();
//big throne generator death effect
global.dogguardian_amount = 0;

global.player1wep = 0;

global.player2wep = 0;
//HammerHeadTimeInterface
global.hhti = false;

global.idpd_band = [Grunt, Inspector, Shielder, EliteGrunt, EliteInspector, EliteShielder];

global.explosives = [Grenade, Rocket, JockRocket, PopoRocket, Nuke];

global.fsprites_restore = [sprBigSkull, sprBigSkullOpen, sprBigSkullHurt, sprBigSkullOpenHurt, sprBigSkullDead, sprBonePileIdle, sprBonePileHurt, sprBonePileDead, sprBones, sprCactus, sprCactusHurt, sprCactusDead, sprCactus2, sprCactus2Hurt, sprCactus2Dead, sprCactus3, sprCactus3Hurt, sprCactus3Dead, sprCactusB, sprCactusBHurt, sprCactusBDead, sprCactusB2, sprCactusB2Hurt, sprCactusB2Dead, sprCactusB3, sprCactusB3Hurt, sprCactusB3Dead, sprDebris1, sprDesertTopDecal, sprDetail1, sprFloor1, sprFloor1Explo, sprFloor1B, sprMSpawnIdle, sprMSpawnDead, sprMSpawnHurt, sprMSpawnChrg, sprWall1Bot, sprWall1Out, sprWall1Top, sprWall1Trans, sprWind, sprTires, sprTiresDead, sprTiresHurt, sprTopDecalScrapyard, sprFloor3, sprFloor3B, sprWall3Out, sprDetail3, sprWall3Bot, sprWall3Trans, sprWall3Top, sprFloor3Explo, sprDebris3, bak3, sprCarIdle, sprCarHurt, sprCarThrown, sprSnowBotRedCarIdle, sprSnowBotRedCarLift, sprSnowBotRedCarWalk, sprSnowBotRedCarHurt, sprSnowBotRedCarThrow, sprTrap, sprTrapGameover, sprTrapScorchMark, sprRainDrop, sprRainDropSlowmo, sprRainSplash, sprScrapDecal, sprSodaMachine, sprStreetLight, sprIcicle, sprWall5Trans, sprTopDecalCity, sprIceDecal, sprIcicleDead, sprIcicleHurt, sprSodaMachineDead, sprSodaCan, sprStreetLightDead, sprFloor5B, sprFloor5Explo, sprFloor5, sprWall5Out, sprWall5Top, sprDebris5, sprDetail5, sprWall5Bot, sprSodaMachineHurt, sprStreetLightHurt, sprSnowBotCarLift, sprFrozenCar, sprSnowBotCarIdle, sprSnowBotCarWalk, sprSnowBotCarHurt, sprSnowBotCarThrow, sprFrozenCarThrown, sprFrozenCarHurt, sprSnowFlake, sprHydrant, sprHydrantHurt, sprHydrantDead, sprSnowMan, sprSnowManHurt, sprPStat1Idle, sprPStat2Idle, sprSnowManDead, sprPStat1Hurt, sprPStat2Hurt, sprPStatDead, sprSnowManDead, sprSnowBotRedCarLift, sprRainDrop, sprRainDropSlowmo, sprRainSplash, sprBanditBossIdle, sprBanditBossWalk, sprBanditBossFire, sprBanditBossTell, sprBanditBossDash, sprBanditBossStop, sprBanditBossHurt, sprBanditBossDead, sprBossIntro, sprDebris7, sprFloor7, sprFloor7B, sprFloor7Explo, sprNuclearPillar, sprNuclearPillarDead, sprNuclearPillarHurt, sprPalaceTopDecal, sprSmallGenerator, sprSmallGeneratorDead, sprSmallGeneratorHurt, sprWall7Bot, sprWall7Out, sprWall7Top, sprWall7Trans, sprThroneStatueDead, sprThroneStatue, sprNothingSwitchOn, sprNothingDeathLoop, sprNothingDeath, sprNothingRight, sprNothingPipes, sprNothingOn, sprNothingOff, sprNothingMiddle, sprNothingLeft, sprCarpet, sprBigGeneratorInactive, sprBigGeneratorHurt, sprBigGeneratorDead, sprBigGeneratorActivate, sprBigGenerator, sprNothingActivate];

global.fsprites_replace = [[sprRainDrop,"resources/Areas/NightScrapyard/sprRainDrop.png",1],[sprRainDropSlowmo,"resources/Areas/NightScrapyard/sprRainDropSlowmo.png",1],[sprRainSplash,"resources/Areas/NightScrapyard/sprRainSplash.png",3],[sprBigSkull,"resources/Areas/NightDesert/sprBigSkull_strip1.png",1],[sprBigSkullOpen,"resources/Areas/NightDesert/sprBigSkullOpen_strip1.png",1],[sprBigSkullHurt,"resources/Areas/NightDesert/sprBigSkullHurt_strip3.png",3],[sprBigSkullOpenHurt,"resources/Areas/NightDesert/sprBigSkullOpenHurt_strip3.png",3],[sprBigSkullDead,"resources/Areas/NightDesert/sprBigSkullDead_strip3.png",3],[sprBonePileIdle,"resources/Areas/NightDesert/sprBonePileIdle_strip1.png",1],[sprBonePileHurt,"resources/Areas/NightDesert/sprBonePileHurt_strip3.png",3],[sprBonePileDead,"resources/Areas/NightDesert/sprBonePileDead_strip4.png",3],[sprBones,"resources/Areas/NightDesert/sprBones_strip2.png",2],[sprCactus,"resources/Areas/NightDesert/sprCactus_strip1.png",1],[sprCactusHurt,"resources/Areas/NightDesert/sprCactusHurt_strip3.png",3],[sprCactusDead,"resources/Areas/NightDesert/sprCactusDead_strip4.png",4],[sprCactus2,"resources/Areas/NightDesert/sprCactus2_strip1.png",1],[sprCactus2Hurt,"resources/Areas/NightDesert/sprCactus2Hurt_strip3.png",3],[sprCactus2Dead,"resources/Areas/NightDesert/sprCactus2Dead_strip4.png",4],[sprCactus3,"resources/Areas/NightDesert/sprCactus3_strip1.png",1],[sprCactus3Hurt,"resources/Areas/NightDesert/sprCactus3Hurt_strip3.png",3],[sprCactus3Dead,"resources/Areas/NightDesert/sprCactus3Dead_strip4.png",4],[sprCactusB,"resources/Areas/NightDesert/sprCactusB_strip1.png",1],[sprCactusBHurt,"resources/Areas/NightDesert/sprCactusBHurt_strip3.png",3],[sprCactusBDead,"resources/Areas/NightDesert/sprCactusBDead_strip4.png",4],[sprCactusB2,"resources/Areas/NightDesert/sprCactusB2_strip1.png",1],[sprCactusB2Hurt,"resources/Areas/NightDesert/sprCactusB2Hurt_strip3.png",3],[sprCactusB2Dead,"resources/Areas/NightDesert/sprCactusB2Dead_strip4.png",4],[sprCactusB3,"resources/Areas/NightDesert/sprCactusB3_strip1.png",1],[sprCactusB3Hurt,"resources/Areas/NightDesert/sprCactusB3Hurt_strip3.png",3],[sprCactusB3Dead,"resources/Areas/NightDesert/sprCactusB3Dead_strip4.png",4],[sprDebris1,"resources/Areas/NightDesert/sprDebris0_strip4.png",4],[sprDesertTopDecal,"resources/Areas/NightDesert/sprDesertTopDecal_strip3.png",3],[sprDetail1,"resources/Areas/NightDesert/sprDetail0_strip5.png",5],[sprFloor1,"resources/Areas/NightDesert/sprFloor1_strip4.png",4],[sprFloor1Explo,"resources/Areas/NightDesert/sprWall0Explo_strip4.png",4],[sprFloor1B,"resources/Areas/NightDesert/sprFloor1B_strip4.png",4],[sprMSpawnIdle,"resources/Areas/NightDesert/sprMSpawnIdle_strip4.png",4],[sprMSpawnDead,"resources/Areas/NightDesert/sprMSpawnDead_strip2.png",2],[sprMSpawnHurt,"resources/Areas/NightDesert/sprMSpawnHurt_strip3.png",3],[sprMSpawnChrg,"resources/Areas/NightDesert/sprMSpawnChrg_strip4.png",4],[sprWall1Bot,"resources/Areas/NightDesert/sprWall0Bot_strip4.png",4],[sprWall1Out,"resources/Areas/NightDesert/sprWall0Out_strip1.png",1],[sprWall1Top,"resources/Areas/NightDesert/sprWall0Top_strip8.png",8],[sprWall1Trans,"resources/Areas/NightDesert/sprWall0Trans_strip8.png",8],[sprWind,"resources/Areas/NightDesert/sprWind_strip9.png",9],[sprFloor5B,"resources/Areas/NightCity/sprFloor5B.png",8],[sprSnowFlake,"resources/Areas/NightCity/sprSnowFlake.png",3],[sprSnowBotCarLift,"resources/Areas/NightCity/sprSnowBotCarLift.png",4],[sprFrozenCar,"resources/Areas/NightCity/sprFrozenCar.png",1],[sprSnowBotCarIdle,"resources/Areas/NightCity/sprSnowBotCarIdle.png",6],[sprSnowBotCarWalk,"resources/Areas/NightCity/sprSnowBotCarWalk.png",8],[sprSnowBotCarHurt,"resources/Areas/NightCity/sprSnowBotCarHurt.png",3],[sprSnowBotCarThrow,"resources/Areas/NightCity/sprSnowBotCarThrow.png",5],[sprFrozenCarThrown,"resources/Areas/NightCity/sprFrozenCarThrown.png",6],[sprFrozenCarHurt,"resources/Areas/NightCity/sprFrozenCarHurt.png",3],[sprPStat1Idle,"resources/Areas/Night/sprPStat1Idle.png",1],[sprPStat1Hurt,"resources/Areas/Night/sprPStat1Hurt.png",3],[sprPStat2Idle,"resources/Areas/Night/sprPStat2Idle.png",1],[sprPStat2Hurt,"resources/Areas/Night/sprPStat2Hurt.png",3],[sprPStatDead,"resources/Areas/Night/sprPStatDead.png",3],[sprCarIdle,"resources/Areas/NightScrapyard/sprCarIdleNight.png",1],[sprCarHurt,"resources/Areas/NightScrapyard/sprCarHurtNight.png",3],[sprTires,"resources/Areas/NightScrapyard/sprTires.png",1],[sprTiresDead,"resources/Areas/NightScrapyard/sprTiresDead.png",3],[sprTiresHurt,"resources/Areas/NightScrapyard/sprTiresHurt.png",3],[sprTopDecalScrapyard,"resources/Areas/NightScrapyard/sprTopDecalScrapyard.png",3],[sprFloor3,"resources/Areas/NightScrapyard/sprFloor3_strip4.png",4],[sprFloor3B,"resources/Areas/NightScrapyard/sprFloor3B_strip4.png",3],[sprWall3Out,"resources/Areas/NightScrapyard/sprWall3Out.png",3],[sprDetail3,"resources/Areas/NightScrapyard/sprDetail3_strip5.png",5],[sprWall3Bot,"resources/Areas/NightScrapyard/sprWall3Bot_strip4.png",4],[sprWall3Trans,"resources/Areas/NightScrapyard/sprWall3Trans_strip8.png",3],[sprWall3Top,"resources/Areas/NightScrapyard/sprWall3Top_strip8.png",4],[sprFloor3Explo,"resources/Areas/NightScrapyard/sprFloor3Explo_strip4.png",4],[sprDebris3,"resources/Areas/NightScrapyard/sprDebris3_strip4.png",4],[bak3,"resources/Areas/NightScrapyard/bak3.png",1],[sprCarIdle,"resources/Areas/NightScrapyard/sprCarIdleNight.png",1],[sprCarHurt,"resources/Areas/NightScrapyard/sprCarHurtNight.png",3],[sprCarThrown,"resources/Areas/NightScrapyard/sprCarThrown.png",6],[sprSnowBotRedCarIdle,"resources/Areas/NightScrapyard/sprSnowBotRedCarIdle.png",6],[sprSnowBotRedCarLift,"resources/Areas/NightScrapyard/sprSnowBotRedCarLift.png",4],[sprSnowBotRedCarWalk,"resources/Areas/NightScrapyard/sprSnowBotRedCarWalk.png",8],[sprSnowBotRedCarHurt,"resources/Areas/NightScrapyard/sprSnowBotRedCarHurt.png",3],[sprSnowBotRedCarThrow,"resources/Areas/NightScrapyard/sprSnowBotRedCarThrow.png",5],[sprTrap,"resources/Areas/NightScrapyard/sprTrap.png",1],[sprTrapGameover,"resources/Areas/NightScrapyard/sprTrapGameover.png",1],[sprTrapScorchMark,"resources/Areas/NightScrapyard/sprTrapScorchMark.png",1],[sprScrapDecal,"resources/Areas/NightScrapyard/sprScrapDecal.png",2],[sprWind,"resources/Areas/NightDesert/sprWind_strip9.png",9],[sprFloor5B,"resources/Areas/NightCity/sprFloor5B.png",8],[sprSnowFlake,"resources/Areas/NightCity/sprSnowFlake.png",3],[sprSnowBotCarLift,"resources/Areas/NightCity/sprSnowBotCarLift.png",4],[sprFrozenCar,"resources/Areas/NightCity/sprFrozenCar.png",1],[sprSnowBotCarIdle,"resources/Areas/NightCity/sprSnowBotCarIdle.png",6],[sprSnowBotCarWalk,"resources/Areas/NightCity/sprSnowBotCarWalk.png",8],[sprSnowBotCarHurt,"resources/Areas/NightCity/sprSnowBotCarHurt.png",3],[sprSnowBotCarThrow,"resources/Areas/NightCity/sprSnowBotCarThrow.png",5],[sprFrozenCarThrown,"resources/Areas/NightCity/sprFrozenCarThrown.png",6],[sprFrozenCarHurt,"resources/Areas/NightCity/sprFrozenCarHurt.png",3],[sprPStat1Idle,"resources/Areas/Night/sprPStat1Idle.png",1],[sprPStat1Hurt,"resources/Areas/Night/sprPStat1Hurt.png",3],[sprPStat2Idle,"resources/Areas/Night/sprPStat2Idle.png",1],[sprPStat2Hurt,"resources/Areas/Night/sprPStat2Hurt.png",3],[sprPStatDead,"resources/Areas/Night/sprPStatDead.png",3],[sprSodaMachine,"resources/Areas/NightCity/sprSodaMachine.png",1],[sprStreetLight,"resources/Areas/NightCity/sprStreetLight.png",1],[sprIcicle,"resources/Areas/NightCity/sprIcicle.png",1],[sprWall5Trans,"resources/Areas/NightCity/sprWall5Trans.png",1],[sprTopDecalCity,"resources/Areas/NightCity/sprTopDecalCity.png",3],[sprIceDecal,"resources/Areas/NightCity/sprIceDecal.png",2],[sprIcicleDead,"resources/Areas/NightCity/sprIcicleDead.png",4],[sprIcicleHurt,"resources/Areas/NightCity/sprIcicleHurt.png",3],[sprSodaMachineDead,"resources/Areas/NightCity/sprSodaMachineDead.png",3],[sprSodaCan,"resources/Areas/NightCity/sprSodaCan.png",3],[sprStreetLightDead,"resources/Areas/NightCity/sprStreetLightDead.png",3],[sprFloor5B,"resources/Areas/NightCity/sprFloor5B.png",8],[sprFloor5Explo,"resources/Areas/NightCity/sprFloor5Explo.png",4],[sprFloor5,"resources/Areas/NightCity/sprFloor5.png",8],[sprWall5Out,"resources/Areas/NightCity/sprWall5Out.png",2],[sprWall5Top,"resources/Areas/NightCity/sprWall5Top.png",4],[sprDebris5,"resources/Areas/NightCity/sprDebris5.png",4],[sprDetail5,"resources/Areas/NightCity/sprDetail5.png",3],[sprWall5Bot,"resources/Areas/NightCity/sprWall5Bot.png",3],[sprSodaMachineHurt,"resources/Areas/NightCity/sprSodaMachineHurt.png",3],[sprStreetLightHurt,"resources/Areas/NightCity/sprStreetLightHurt.png",3],[sprSnowBotCarLift,"resources/Areas/NightCity/sprSnowBotCarLift.png",4],[sprFrozenCar,"resources/Areas/NightCity/sprFrozenCar.png",1],[sprSnowBotCarIdle,"resources/Areas/NightCity/sprSnowBotCarIdle.png",6],[sprSnowBotCarWalk,"resources/Areas/NightCity/sprSnowBotCarWalk.png",8],[sprSnowBotCarHurt,"resources/Areas/NightCity/sprSnowBotCarHurt.png",3],[sprSnowBotCarThrow,"resources/Areas/NightCity/sprSnowBotCarThrow.png",5],[sprFrozenCarThrown,"resources/Areas/NightCity/sprFrozenCarThrown.png",6],[sprFrozenCarHurt,"resources/Areas/NightCity/sprFrozenCarHurt.png",3],[sprSnowFlake,"resources/Areas/NightCity/sprSnowFlake.png",3],[sprHydrant,"resources/Areas/NightCity/sprHydrant.png",1],[sprHydrantHurt,"resources/Areas/NightCity/sprHydrantHurt.png",3],[sprHydrantDead,"resources/Areas/NightCity/sprHydrantDead.png",3],[sprSnowMan,"resources/Areas/NightCity/sprSnowMan.png",1],[sprSnowManHurt,"resources/Areas/NightCity/sprSnowManHurt.png",3],[sprSnowManDead,"resources/Areas/NightCity/sprSnowManDead.png",3],[sprWind,"resources/Areas/NightDesert/sprWind_strip9.png",9],[sprSnowFlake,"resources/Areas/NightCity/sprSnowFlake.png",3],[sprPStat1Idle,"resources/Areas/Night/sprPStat1Idle.png",1],[sprPStat1Hurt,"resources/Areas/Night/sprPStat1Hurt.png",3],[sprPStat2Idle,"resources/Areas/Night/sprPStat2Idle.png",1],[sprPStat2Hurt,"resources/Areas/Night/sprPStat2Hurt.png",3],[sprPStatDead,"resources/Areas/Night/sprPStatDead.png",3],[sprDebris7,"resources/Areas/DarkPalace/sprDebris7_strip4.png",4],[sprFloor7,"resources/Areas/DarkPalace/sprFloor7_strip8.png",8],[sprFloor7B,"resources/Areas/DarkPalace/sprFloor7B_strip4.png",4],[sprFloor7Explo,"resources/Areas/DarkPalace/sprFloor7Explo_strip4.png",4],[sprNuclearPillar,"resources/Areas/DarkPalace/sprNuclearPillar_strip11.png",11],[sprNuclearPillarDead,"resources/Areas/DarkPalace/sprNuclearPillarDead_strip3.png",3],[sprNuclearPillarHurt,"resources/Areas/DarkPalace/sprNuclearPillarHurt_strip3.png",3],[sprPalaceTopDecal,"resources/Areas/DarkPalace/sprPalaceTopDecal_strip2.png",2],[sprSmallGenerator,"resources/Areas/DarkPalace/sprSmallGenerator_strip11.png",11],[sprSmallGeneratorDead,"resources/Areas/DarkPalace/sprSmallGeneratorDead_strip3.png",3],[sprSmallGeneratorHurt,"resources/Areas/DarkPalace/sprSmallGeneratorHurt_strip3.png",3],[sprWall7Bot,"resources/Areas/DarkPalace/sprWall7Bot.png",8],[sprWall7Out,"resources/Areas/DarkPalace/sprWall7Out_strip1.png",1],[sprWall7Top,"resources/Areas/DarkPalace/sprWall7Top.png",8],[sprWall7Trans,"resources/Areas/DarkPalace/sprWall7Trans.png",8],[sprThroneStatueDead,"resources/Areas/DarkPalace/sprThroneStatueDead.png",13],[sprThroneStatue,"resources/Areas/DarkPalace/sprThroneStatue.png",14],[sprNothingSwitchOn,"resources/Areas/DarkPalace/sprNothingSwitchOn.png",8],[sprNothingDeathLoop,"resources/Areas/DarkPalace/sprNothingDeathLoop.png",2],[sprNothingDeath,"resources/Areas/DarkPalace/sprNothingDeath.png",7],[sprNothingLeft,"resources/Areas/DarkPalace/sprNothingLeft.png",1],[sprNothingPipes,"resources/Areas/DarkPalace/sprNothingPipes.png",1],[sprNothingRight,"resources/Areas/DarkPalace/sprNothingRight.png",1],[sprNothingMiddle,"resources/Areas/DarkPalace/sprNothingMiddle.png",1],[sprNothingOn,"resources/Areas/DarkPalace/sprNothingOn.png",1],[sprNothingOff,"resources/Areas/DarkPalace/sprNothingOff.png",1],[sprBigGeneratorInactive,"resources/Areas/DarkPalace/sprBigGeneratorInactive.png",1],[sprCarpet,"resources/Areas/DarkPalace/sprCarpet.png",1],[sprBigGeneratorHurt,"resources/Areas/DarkPalace/sprBigGeneratorHurt.png",3],[sprBigGeneratorDead,"resources/Areas/DarkPalace/sprBigGeneratorDead.png",3],[sprBigGeneratorActivate,"resources/Areas/DarkPalace/sprBigGeneratorActivate.png",7],[sprBigGenerator,"resources/Areas/DarkPalace/sprBigGenerator.png",11],[sprNothingActivate,"resources/Areas/DarkPalace/sprNothingActivate.png",20]];

#macro timer true

global.playercount = max(1,instance_number(Player));
global.areaname = " "
setname()

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

//Resources
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
global.sprOasisEnterIdleNight = sprite_add("resources/OtherObjects/OasisEnter/sprOasisScrapyardEnterIdleNight.png",1,16,16);
global.sprOasisEnterHurtNight = sprite_add("resources/OtherObjects/OasisEnter/sprOasisScrapyardEnterHurtNight.png",3,16,16);
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

global.sprCrabDeadS = sprite_add("resources/Enemies/Crab/sprCrabDead_3.png",10,12,12);
global.sprCrabDeadSN = sprite_add("resources/Enemies/Crab/sprCrabDead_3b.png",10,12,12);

global.sprVan = sprite_add_base64("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",18,38.5,19.5)
global.sprSiren = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAPkAAAAyCAYAAACeYH3nAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4QYREwgufEY9MwAAAelJREFUeNrt3UFOwzAURdG6Ys6iWDeLYgVmBEiFAUnsxH3/XKmTSkiN7Ztnfyem3Qrz+t7743cfb63dgBn03+Pt1uaPt0buvyE7psp9ouyN4ETHxYJPFr0RnOhYQPCJojeCEx2LCD5J9LveALIpkVBHUlya49QUn5DmkhwIh+QAyQE8My+awJpxOk09g+SL81RFt7MFHvWbkm4ErbWV+iFa8hFVdWJfcA2S/6c9BrRFI/iTp3gPvZEliD6qbw62RSN4wDQ9TfSkJF9A9EbwgHV4gvDJU/SLRVd4S5F7y0BQXb+mTy66AUdJXqbQRrqa9N739J2HYYBwSA6QHADJAZD8DI5Wxr0zjqlcVPCU5MAzsWMbjuRSHOFpHiX53n1ygiM5ze/VBQfSMV0HSJ6f4mYBIDkAkgM4iY0Veq+aVsSrpjXaneQG0lK/Kf1GcOHBERHT9fL73L33749rIPjjn6W0Y9ljnxzkSPAqkhOd4JF940hmoscIn7gmX+S/mzqSueJaX3W9lOSR1fUvOT3JRjp4GOaUGQFAcgAkB8otiwYtq0gOSHIAp6fxwOJofJX1SPHMsVAYxpbttMG7H5IcWCnRJ2xvlkiqPWkuxXFqqk98dqHMQN4iOsERNYmodLH/EZ3gIHmo7ORGKp/+TvJjblGySAAAAABJRU5ErkJggg==",3,38.5,23.5)
global.sprOutline = sprite_add_base64("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",18,38.5,19.5)
global.sprVanStop = sprite_add_base64("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",18,38.5,19.5)

global.sprEliteInspectorRadIdle = sprite_add("resources\Enemies\InfectedIDPD\EliteInspector\sprEliteInspectorRadIdle.png",15,12,12);
global.sprEliteInspectorRadWalk = sprite_add("resources\Enemies\InfectedIDPD\EliteInspector\sprEliteInspectorRadWalk.png",6,12,12);
global.sprEliteInspectorRadDead = sprite_add("resources\Enemies\InfectedIDPD\EliteInspector\sprEliteInspectorRadDead.png",6,12,12);
global.sprEliteInspectorRadHurt = sprite_add("resources\Enemies\InfectedIDPD\EliteInspector\sprEliteInspectorRadHurt.png",3,12,12);

global.sprEliteShielderRadIdle = sprite_add("resources\Enemies\InfectedIDPD\EliteShielder\sprEliteShielderRadIdle.png",15,12,12);
global.sprEliteShielderRadWalk = sprite_add("resources\Enemies\InfectedIDPD\EliteShielder\sprEliteShielderRadWalk.png",6,12,12);
global.sprEliteShielderRadDead = sprite_add("resources\Enemies\InfectedIDPD\EliteShielder\sprEliteShielderRadDead.png",6,12,12);
global.sprEliteShielderRadHurt = sprite_add("resources\Enemies\InfectedIDPD\EliteShielder\sprEliteShielderRadHurt.png",3,12,12);

global.sprEliteGruntRadIdle = sprite_add("resources\Enemies\InfectedIDPD\EliteGrunt\sprEliteGruntRadIdle.png",15,12,12);
global.sprEliteGruntRadWalk = sprite_add("resources\Enemies\InfectedIDPD\EliteGrunt\sprEliteGruntRadWalk.png",6,12,12);
global.sprEliteGruntRadDead = sprite_add("resources\Enemies\InfectedIDPD\EliteGrunt\sprEliteGruntRadDead.png",6,12,12);
global.sprEliteGruntRadHurt = sprite_add("resources\Enemies\InfectedIDPD\EliteGrunt\sprEliteGruntRadHurt.png",3,12,12);

global.sprInspectorRadIdle = sprite_add("resources\Enemies\InfectedIDPD\Inspector\sprInspectorRadIdle.png",15,12,12);
global.sprInspectorRadWalk = sprite_add("resources\Enemies\InfectedIDPD\Inspector\sprInspectorRadWalk.png",6,12,12);
global.sprInspectorRadDead = sprite_add("resources\Enemies\InfectedIDPD\Inspector\sprInspectorRadDead.png",6,12,12);
global.sprInspectorRadHurt = sprite_add("resources\Enemies\InfectedIDPD\Inspector\sprInspectorRadHurt.png",3,12,12);

global.sprShielderRadIdle = sprite_add("resources\Enemies\InfectedIDPD\Shielder\sprShielderRadIdle.png",15,12,12);
global.sprShielderRadWalk = sprite_add("resources\Enemies\InfectedIDPD\Shielder\sprShielderRadWalk.png",6,12,12);
global.sprShielderRadDead = sprite_add("resources\Enemies\InfectedIDPD\Shielder\sprShielderRadDead.png",6,12,12);
global.sprShielderRadHurt = sprite_add("resources\Enemies\InfectedIDPD\Shielder\sprShielderRadHurt.png",3,12,12);

global.sprGruntRadIdle = sprite_add("resources\Enemies\InfectedIDPD\Grunt\sprGruntRadIdle.png",15,12,12);
global.sprGruntRadWalk = sprite_add("resources\Enemies\InfectedIDPD\Grunt\sprGruntRadWalk.png",6,12,12);
global.sprGruntRadDead = sprite_add("resources\Enemies\InfectedIDPD\Grunt\sprGruntRadDead.png",6,12,12);
global.sprGruntRadHurt = sprite_add("resources\Enemies\InfectedIDPD\Grunt\sprGruntRadHurt.png",3,12,12);

//Resources

mod_current_type = script_ref_create(0)[0];

// values for your options should go in a global lightweight object
// you specify the global's name when adding, doesn't have to be `options`
global.options = {
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
	"bonus_loop_max_health": false,
	"special_code": "to be done",
	"reset": false,
	"rmb": true,
	"deflect_colour": true,
	"wild_idpd": false,
	"hardmodemod_3dvans": false,
	"hamamount": true,
	"chicken_reminder": true,
	"lootable_cars": true,
	"protochest_convert": true,
	"new_weptiers": true,
	"last_enemies_display": true,
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
	//GML Raw
	//Red - 4929511
	//Yellow - 4508129
	//Green - 4974406
	//Purple - 15156919

	call(scr.option_add_page, mod_current_type, mod_current, "options", "global_page", {
		"options": [
			{
				"option": "deflect_colour",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wPAINT DEFLECTED PROJECTILE@s"
				},
				"desc": {
					"text": "WHEN @rON@s
							#WILL PAINT @wDEFLECTED PROJECTILES@s
							#(DEFAULT @wON@s)"
				}
			},
            {
				"option": "fix_venus_car",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wFIXED VENUS CAR@s"
				},
				"desc": {
					"text": "WHEN @rON@s
							# @yVENUZ CAR@s WILL BE @wFIXED@s FROM START
							#+ IT WILL HAVE @wINF HP@s 
							#BUT @wEXPLODES@s WHEN @pPORTAL@s APPEARS
							#(DEFAULT @wON@s)"
				}
			},
            {
				"option": "bonus_loop_max_health",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wPOTENTIAL BONUS MAX HP@s"
				},
				"desc": {
					"text": "WHEN @rON@s
							#WITH EACH @yLOOP@s YOU GAIN
							#@w1 POTENTIAL BONUS MAX HEALTH@s
							#1 PICKED UP @rHEALTH CHEST@s =
							#@w-1 PBMH@s, @g+1 MAX HEALTH@s
							#(DEFAULT @wOFF@s)"
				}
			},
            {
				"option": "last_enemies_display",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wLAST ENEMIES DISPLAY"
				},
				"desc": {
					"text": "WHEN @rON@s
							#WILL @wSHOW@s IN WHICH DIRECTIONS
							#@wLAST ENEMIES@s ARE IN WHEN
							#THERE IS LESS THAN
							#@w10%@s OF ALL ENEMIES ON AREA
							#OR @pPORTAL@s IS OPENED
							#MADE BY @wGOLDEN EPSILON@s
							#(DEFAULT @wON@s)"
				}
			},
            {
				"option": "popups",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wPOPUPS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#IT WILL @wSHOW SOME NEW POPUPS@s
							#(DEFAULT @wON@s)"
				}
			},
            {
				"option": "no_jocks",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wNO JOCKS!"
				},
				"desc": {
					"text": "WHEN @rON@s
							#IT WILL @rDELETE@s @wALL JOCKS@s
							#(default @wOFF@s)"
				}
			},
            {
				"option": "rmb",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wTINTED WALLS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#WHEN YOU COME NEAR A WALL
							#MAY GENERATE A TINTED WALL
							#TINTED WALLS HAVE @wRANDOM@s PRIZES INSIDE
							#RANDOM PRIZES ARE
							#@g13 RADS@s, @yAMMO PICKUP@s, @rHP PICKUP@s
							#OR @wWEAPON CHEST@s
							#AMOUNT OF TINTED WALLS PER STAGE
							#SCALES WITH EACH STAGE
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "hammerhead_time",
				"kind": "choice",
				"name": {
					"text": "@(color:4974406)*@wHAMMERHEAD TIME"
				},
				"desc": {
					"text": "WHEN @wYES@s
							#IF YOU PICK @wHAMMERHEAD@s @gMUTATION@s
							#AWARDS WITH A @wMUTATION PICK@s
							#AFTER LOOPING
							#IF YOU DON'T PICK @wHAMMERHEAD MUT@s
							#@wAWARDS@s WITH IT AFTER @wLOOPING@s
							#WHEN @yMORE@s#@wALL@s OF THE ABOVE EFFECTS
							#GIVES @wMORE@s HAMMERHEADS WITH EACH LOOP
							#(DEFAULT @wYES@s)"
				},
				"values": [0, 1, 2],
				"display": ["NO", "YES", "@yMORE@s"]
			},
		]
	});

	call(scr.option_add_page, mod_current_type, mod_current, "options", "assist_page2", {
		"options": [
			 {
				"option": "nes",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wNO EARLY SHIELDERS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#IT WILL @wREPLACE ALL@s @bSHIELDERS@s
							#WITH @bINSPECTORS@s UNTIL YOU PASS
							#@w10 STAGES@s#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "no_guards",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wNO UBIQUITOUS GUARDIANS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#IT WILL DELETE @wALL@s @gGUARDS@s
							#WHICH HAVE BEEN ADDED BY @wESP@s
							#(DEFAULT @wOFF@s)"
				}
			},
            {
				"option": "hamamount",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wHAMMERHEAD DISPLAY"
				},
				"desc": {
					"text": "WHEN @rON@s
							#WILL SHOW @wHOW MANY
							#HAMMERHEAD USES YOU HAVE LEFT
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "lootable_cars",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wLOOTABLE CARS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#WHEN YOU COME @wCLOSE@s TO
							#@wCARS@s, THEY WILL GIVE YOU @yAMMO@s OR @rHP@s
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "chicken_reminder",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wSELFDAMAGE REMINDER"
				},
				"desc": {
					"text": "WHEN @rON@s
							#WILL @wREMIND@s YOU IF THERE'RE
							#@rSELF DAMAGE@s WEAPON ON FLOOR
							#P.S. EXCEPT FOR DISCS AND EXPLOSIONS
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "protochest_convert",
				"kind": "bool",
				"name": {
					"text": "@(color:4974406)*@wWEAPON CONVERT"
				},
				"desc": {
					"text": "WHEN @rON@s
							#IF @gPROTO CHEST@s CONTAINS A @wWEAPON@s
							#THAT HAS A @yGOLDEN COUNTERPART@s
							#TURNS THE SAID WEAPON INTO IT'S
							#GOLDEN COUNTERPART ON @wNEXT@s @gVAULT@s @wVISIT@s
							#@pPARTY GUN@s
							#WILL TURN INTO A @wRANDOM WEAPON@s
							#SAME RULES APPLIES FOR @pCURSE@s
							#(DEFAULT @wON@s)"
				}
			},
		]
	});
	
	call(scr.option_add_page, mod_current_type, mod_current, "options", "global_page2", {
		"options": [
			{
				"option": "no_throne_yell",
				"kind": "bool",
				"name": {
					"text": "@(color:15156919)*@wNO THRONE YELL"
				},
				"desc": {
					"text": "WHEN @rON@s
							#@wMUTANTS WILL NOT@s SAY
							#ANYTHING UPON ENTERING @g7-3@s
							#(DEFAULT @wOFF@s)"
				}
			},
			{
				"option": "no_new_tips",
				"kind": "bool",
				"name": {
					"text": "@(color:15156919)*@wNO NEW TIPS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#IT WILL @wDISABLE ALL NEW TIPS@s
							#(DEFAULT @wOFF@s)"
				}
			},
			{
				"option": "no_new_parcticles",
				"kind": "bool",
				"name": {
					"text": "@(color:15156919)*@wNO NEW PARCTILES"
				},
				"desc": {
					"text": "WHEN @rON@s
							#@rDISABLES@s SPAWN OF @gNEW PARTICLES@s
							#(DEFAULT @wOFF@s)"
				}
			},
			/*{
				"option": "no_floor_changes",
				"kind": "bool",
				"name": {
					"text": "@(sprFloor1:0) NO FLOOR CHANGES"
				},
				"desc": {
					"text": "WHEN @rON@s
							#IT WILL @wDISABLE ALL FLOOR@s CHANGES
							#FROM ANY OTHER OPTIONS
							#(DEFAULT @wOFF@s)"
				}
			},*/
		]
	});
			
	call(scr.option_add_page, mod_current_type, mod_current, "options", "global_page3", {
		"options": [
			{
				"option": "fire_explosions",
				"kind": "bool",
				"name": {
					"text": "@w*FIRE EXPLOSIONS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#WHEN @rFIRE@s @wCONTACTS@s WITH
							#@wANY@s @rEXPLOSIVE PROJECTILE@s OR CORPSE
							#DESTROYS IT
							#CORPSES NEEDS SOME TIME TO EXPLODE
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "cursed_caves_rework",
				"kind": "bool",
				"name": {
					"text": "@w*CURSED CAVES REWORK"
				},
				"desc": {
					"text": "WHEN @rON@s
							#@wALL WEAPONS@s THAT TOUCH FLOOR IN
							#@p4-?@s WILL BE @pCURSED@s
							#AFTER LEAVING @yL1+@s @pCURSED CRYSTAL CAVES@s
							#ALL CURSES WILL BE @yLIFTED@s
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "piov",
				"kind": "bool",
				"name": {
					"text": "@w*CAREFUL IDPD IN LABS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#IT WILL @wREPLACE EACH@s @bVAN@s WITH
							#@b4 IDPD PORTALS@s IN @wLABS@s
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "new_weptiers",
				"kind": "bool",
				"name": {
					"text": "@w*NEW WEAPON TIERS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#WILL CHANGE TIERS FOR @wMOST WEAPONS@s
							#SEE @wALL CHANGES@s ON A
							#@wSCREENSHOT@s IN RESOURCES
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "chest_replacments",
				"kind": "bool",
				"name": {
					"text": "@w*CHEST REPLACMENTS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#IT WILL @wREPLACE SOME CHESTS@s
							#@yPIZZA@s
							#@wAMMO CHEST@s-@yPIZZA CHEST@s
							#@bWINTER CITY@s
							#@wAMMO CHEST@s - @bIDPD CHESTS@s
							# IN @pLABS@s
							#@wAMMO CHEST@s - @wMIMIC@s
							#@rHEALTH CHEST@s - @rSUPER MIMIC@s
							#IN @bHQ@s
							#@wAMMO CHESTS@s - @bIDPD CHESTS@s
							#@gRAD CHESTS@s - @rHEALTH CHESTS@s
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "common_difficulty_multiplier",
				"kind": "slider",
				"name": {
					"text": "@w*RDM"
				},
				"desc": {
					"text": "RDM - @wREGULAR@s @rDIFFICULTY@s @yMULTIPLIER@s
							#SET MULTIPLIER FROM 0 TO 2
							#(DEFAULT @w1@s)"
				},
				"format": {
					"display_multiplier": 2
				}
			},
			{
				"option": "esp_difficulty_multiplier",
				"kind": "slider",
				"name": {
					"text": "@w*ESPDM"
				},
				"desc": {
					"text": "ESPDM - @bEXTENDED SPAWN POOLS@s
							#@rDIFFICULTY @yMULTIPLIER@s
							#SET MULTIPLIER FROM 0 TO 2
							#(DEFAULT @w1@s)"
				},
				"format": {
					"display_multiplier": 2
				}
			},
		]
	});

	call(scr.option_add_page, mod_current_type, mod_current, "options", "global_page4", {
		"options": [	
			{
				"option": "more_ravens_in_jungle",
				"kind": "slider",
				"name": {
					"text": "@(color:4508129)*@wJUNGLE RAVENS@s"
				},
				"desc": {
					"text": "CONTROLS @ySPAWNRATE@s
							#OF @rRAVENS@s IN @gJUNGLE@s
							#(DEFAULT @wx5@s)"
				},
				"format": {
					"display_multiplier": 5
				}
			},
			{
				"option": "diropf",
				"kind": "bool",
				"name": {
					"text": "@(color:4508129)*@wEARLY POPO FREAKS REVIVES"
				},
				"desc": {
					"text": "WHEN @rON@s
							#IT WILL @wENABLE ALL@s @bPOPO FREAKS REVIVES@s
							#BEFORE @g3RD LOOP@s
							#(DEFAULT @wOFF@s)"
				}
			},
			{
				"option": "add_dark",
				"kind": "bool",
				"name": {
					"text": "@(color:4508129)*@wMORE DARKNESS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#APLLIES @pDARKNESS@s ON 
							#@wPALACE, JUNGLES AND NIGHT DESERT@s
							#+ @y25% CHANCE FOR NIGHT VERSION OF AREA@s
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "cursing_enabled",
				"kind": "bool",
				"name": {
					"text": "@(color:4508129)*@wSPREADING CURSE"
				},
				"desc": {
					"text": "WHEN @rON@s
							#@yCRYSTALS@s AND @ySPIDERS@s WILL BE @pCURSED@s
							#WITH @wCHANCE 1/7@s,
							#IF YOU HAVE @pCURSED CROWN@s
							#@wCHANCE WILL BE 2/3@s,
							#IF @wNO CROWNS@s
							#NO @pCURSED CRYSTALS@s AND @pSPIDERS@s
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "crown_guardian_help",
				"kind": "bool",
				"name": {
					"text": "@(color:4508129)*@wCROWN GUARDIANS HELP"
				},
				"desc": {
					"text": "WHEN @rON@s
							# WHEN YOU ACTIVATE @gCROWN PED@s
							#OR BREAK @gCROWN GUARDIAN STATUE@s
							#IN @w1ST@s VAULT
							#@gGUARDIANS@s WILL REPLACE @wALL TORCHES@s
							#IN @w2ND@s VAULT
							#@wTURRETS@s WILL COME OUT
							# AND IN @w3RD@s ONE
							#EACH @gTORCH@s WILL SUMMON @bIDPD@s
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "crown_guardian_on_max",
				"kind": "bool",
				"name": {
					"text": "@(color:4508129)*@wCROWN GUARDIANS ON MAX@s"
				},
				"desc": {
					"text": "WHEN @rON@s
							#AND AFTER YOU VISITED @w3RD@s @gVAULT@s
							#ON EACH @wN-2@s STAGE
							#WILL SPAWN @g2 CROWN GUARDIANS@s
							#AND IF @wLOOP@s IS HIGHER THAN 2
							#IT WILL SPAWN @r4 BIG BANDITS@s
							#(EXCEPT FOR @yDESERT@s)
							#IF YOU SKIPPED @wN-2@s AREA
							#ON @wN-2@s WILL SPAWN @g2 MORE GUARDIANS@s
							#(DEFAULT @wON@s)"
				}
			},
			{
				"option": "enemies_mutations",
				"kind": "bool",
				"name": {
					"text": "@(color:4508129)*@wENEMIES MUTATIONS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#STARTING FROM @gL1@s
							#ALL @gGATORS@s @pTELEPORT@s RANDOMLY
							#ON @rGETTING HIT@s
							#FROM @bL3@s
							#@wREPLACE@s @wSNIPER AND SNOW TANK BULLETS@s
							# WITH @wBOUNCERS@s
							#AND @yGOLDEN TANK ROCKETS@s
							#WITH @yGOLDEN DISCS@s
							#@pCURSED HYPER CRYSTAL@s @wRANDOMLY TELEPORTS@s
							#(DEFAULT @wON@s)"
				}
			},
			/*{ i left it in case i will make wnw compatible with v9940 and 9944
				"option": "area_display",
				"kind": "bool",
				"name": {
					"text": "AREA DISPLAY"
				},
				"desc": {
					"text": "WHEN @rON@s
							#WILL SHOW ON WHICH @wAREA AND LOOP@s
							#YOU ARE ON
							#CODE BY @wBLAAC@s
							#(AND MODIFIED BY @wSERAFIMGWS@s)
							#(DEFAULT @wON@s)"
				}
			},*/
		]
	});

	call(scr.option_add_page, mod_current_type, mod_current, "options", "global_page5", {
		"options": [
			{
				"option": "l5cap",
				"kind": "bool",
				"name": {
					"text": "@(color:4929511)*@wL5 CAPTAIN"
				},
				"desc": {
					"text": "WHEN @rON@s
							#YOU WILL @rFIGHT@s THE @bCAPTAIN@s
							#BEFORE @gTHRONE 2@s ON @w0-1 L5@s
							#(DEFAULT @wOFF@s)"
				}
			},
			{
				"option": "hardmodemod_3dvans",
				"kind": "bool",
				"name": {
					"text": "@(color:4929511)*@w3D VANS FROM HARDMODE MOD"
				},
				"desc": {
					"text": "WHEN @rON@s
							#WILL MAKE @bVANS@s @y3D@s AND
							# @wACT@s AS IN @rHARDMODE MOD@s
							#CODE BY @wBLAAC@s
							#SPRITES BY @yJSBURG@s
							#(DEFAULT @wOFF@s)"
				}
			},
			{
				"option": "death_effects",
				"kind": "bool",
				"name": {
					"text": "@(color:4929511)*@wDEATH EFFECTS"
				},
				"desc": {
					"text": "WHEN @rON@s
							#IT WILL ENABLE @wEFFECTS@s
							#WHICH WILL HAPPEN AFTER
							#@rDEATH@s OF @wCERTAIN ENEMIES@s
							#AFTER @wCERTAIN LOOP@s
							#(DEFAULT @wON@s)"
				}
			},	
			{
				"option": "idpd_mashup",
				"kind": "bool",
				"name": {
					"text": "@(color:4929511)*@wIDPD MASHUP"
				},
				"desc": {
					"text": "WHEN @rON@s
							#@yL2@s: @w1/3@s @bPORTALS@s AND @bVANS@s
							#WILL CONTAIN @bPOPO FREAKS@s
							#@gL3@s: @w1/2@s @bPORTALS@s AND @bVANS@s
							#WILL CONTAIN @yELITES@s
							#P.S. VANS ON L3 CAN ALSO CONTAIN
							#NON ELITE IDPD
							#BECAUSE I CAN'T CONTROL
							#IF VAN WILL CONTAIN ELITES
							#(DEFAULT @wON@s)"
				}
			},		
			{
				"option": "idpd_seek",
				"kind": "choice",
				"name": {
					"text": "@(color:4929511)*@wIDPD SEEK"
				},
				"desc": {
					"text": "SWITCH BETWEEN IDPD SEEK MODES.
							#@wNO@s
							# NO ADDINATIONAL @bIDPD@s. 
							#@yYES@s
							# ADDS MORE @bIDPD@s TO 
							#@wSNOW TOWN@s, @wLABS@s AND @wPALACE@s. 
							#@gULTRA@s
							# ADDS EVEN MORE @bIDPD@s TO 
							#@wSNOW TOWN@s AND @wPALACE@s
							#+ VISITING @bHQ@s 
							#OR HAVING A @pCROWN@s 
							#OR KILLING @bCAP@s 
							#WILL ADD ADDINATIONAL @bIDPD@s
							#AFTER PASSING @w10 STAGES@s
							#@wNON ELITE@s @bIDPD@s MAY CARRY @gRADCHESTS@s
							#(DEFAULT @wYes@s)"
				},
				"values": [0, 1, 2],
				"display": ["NO", "YES", "@gULTRA@s"]
			},
			{
				"option": "wild_idpd",
				"kind": "bool",
				"name": {
					"text": "@(color:4929511)*@wWILD IDPD"
				},
				"desc": {
					"text": "WHEN @rON@s
							#@rWILD@s @bIDPD@s WILL SPAWN ON
							#@wEVERY AREA@s EXCEPT @bHQ@s AND @wLABS@s
							#@yELITE@s WILD IDPD WILL
							#ONLY SPAWN IF @wLOOP > 0@s
							#@gWILD IDPD@s ARE @bIDPD@s BUT ON
							#THE @rENEMY TEAM@s
							#@wEACH@s WILD IDPD WILL
							#HAVE A @wRANDOM RADDROP@s
							#WHICH RANGES FROM 1 TO 25
							#@gRADDROP@s FLOOR @wSCALES@s WITH LOOPS
							#@wIDPDMASHUP@s SLOWS DOWN FLOOR SCALING
							#IF @gRADDROP@s = @w25@s
							#@bIDPD@s BECOMES A @rPOPO FREAK@s
							#(DEFAULT @wOFF@s)"
				}
			},
		]
	});

	call(scr.option_add_page, mod_current_type, mod_current, "options", "credits", {
			"reference": script_ref_create(page_credits_draw)
	});

	call(scr.option_add_page, mod_current_type, mod_current, "options", "credits_2", {
			"reference": script_ref_create(page_credits_draw_2)
	});

	call(scr.option_add_page, mod_current_type, mod_current, "options", "options_reset", {
		"options": [
			{
				"option": "reset",
				"kind": "bool",
				"name": {
					"text": "OPTIONS RESET"
				},
				"desc": {
					"text": "WHEN @rON@s
							#LOADS PRESETS"
				}
			},		
		]
	});
	
	call(scr.option_set_mod_display_name, mod_current_type, mod_current, "   WNW#SETTINGS");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page", "ASSISTANCE I");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "assist_page2", "ASSISTANCE II");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page2", "COSMETICS");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page3", "REBALANCE");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page4", "CHALLENGE");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page5", "MAJOR CHALLENGE");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "credits", "CREDITS I");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "credits_2", "CREDITS II");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "options_reset", "OPTIONS RESET");
	
	exit;
}

CustomOptions_load();

//death messages for checking
global.SnowSniperHitid = [global.SnowSniperIdle, "Snow Sniper"];

global.JungleSniperHitid = [global.sprJungleSniperIdle, "Jungle Sniper"];

global.RadEliteGruntHitid = [global.sprEliteGruntRadIdle, "Wild Elite Grunt"];

global.RadEliteInspectorHitid = [global.sprEliteInspectorRadIdle, "Wild Elite Inspector"];

global.RadEliteShielderHitid = [global.sprEliteShielderRadIdle, "Wild Elite Shielder"];

global.RadGruntHitid = [global.sprGruntRadIdle, "Wild Grunt"];

global.RadInspectorHitid = [global.sprInspectorRadIdle, "Wild Inspector"];

global.RadShielderHitid = [global.sprShielderRadIdle, "Wild Shielder"];

global.RadInspectorDEHitid = [global.sprInspectorRadDead, "Wild Inspector"];
// -----Tick------ //
#define game_start

sprite_restore(sprDeskIdle);
sprite_restore(sprDeskIdleTrans);
sprite_restore(sprDeskIdleWait);
sprite_restore(sprDeskIdleTurn);
sprite_restore(sprLastSit);

restoring_sprites();

//last enemies display
global.enemies_count = 0;
//last enemies display

global.playercount = max(1,instance_number(Player));

array_set(global.remind_weps, 0, 0);

//new weapons tiers
if(global.options.new_weptiers == true){
	global.weapon_areas = ds_map_create();

	for (var i=0;i<128;i++;) {
        ds_map_set(global.weapon_areas,i,weapon_get_area(i));
    }

	weapon_set_area(91,-1);
	weapon_set_area(105,13);
	weapon_set_area(111,14);
	//weapon_set_area(121,15);
	weapon_set_area(35,17);

	for (var a=0;a<array_length(global.newwepareasarrays);++a){    
		for (var i=0;i<array_length(global.newwepareasarrays[a]);++i){
			if(a == 0) {
				weapon_set_area(global.newwepareasarrays[a][i],a+1);            
			}
			else {
				weapon_set_area(global.newwepareasarrays[a][i],a+2); 
			}
		}
	}
	for (var g=0;g<array_length(global.goldenweps);++g){
		weapon_set_area(global.goldenweps[g],-1)
	}
}
else{
	for (var i=0;i<128;i++;) {
        weapon_set_area(i,global.weapon_areas[? i]);
    }
    if ds_map_valid(global.weapon_areas) ds_map_destroy(global.weapon_areas); 
}
//new weapons tiers

//amount of wall bonuses
global.aowb = 2 + (GameCont.hard / 2);
//amount of wall bonuses

//reset of showed status for onetime tips
global.onetimetip_shown = {
	"chicken": false,
	"sans": false,
	"dof": false,
}
//reset of showed status for onetime tips

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

global.is_player_notified = false;

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

global.attmpts_to_add_enemies = 15 * (GameCont.loops + 1);
//times by time because slider is actually range from 0 to 1, and i want it to be from 0 to 2
global.cem = global.options.common_difficulty_multiplier * 2;
global.eem = global.options.esp_difficulty_multiplier * 2;
//times by time because slider is actually range from 0 to 1, and i want it to be from 0 to 2

//area display
with instances_matching(GenCont,"areadisplay",null){
    level_start()
    areadisplay = true;
}
//area display

//options preset
if(global.options.reset){
	global.options = {
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
		"bonus_loop_max_health": false,
		"special_code": "to be done",
		"reset": false,
		"rmb": true,
		"deflect_colour": true,
		"wild_idpd": false,
		"hardmodemod_3dvans": false,
		"hamamount": true,
		"chicken_reminder": true,
		"lootable_cars": true,
		"protochest_convert": true,
		"new_weptiers": true,
		"last_enemies_display": true,
	};
	call(scr.options_refresh)
}
//options preset

//fix of crab dead sprites
if(GameCont.area == 3 || GameCont.area == "junkyard" || GameCont.area == "ravenboss"){
	with(Crab){
		if(global.options.add_dark != true && global.abd != true){
			if(spr_dead != global.sprCrabDeadS){
				spr_dead = global.sprCrabDeadS;
			}
		}
		else{
			if(spr_dead != global.sprCrabDeadSN){
				spr_dead = global.sprCrabDeadSN;
			}
		}
	}
}
//fix of crab dead sprites

//onfire corpses
with(Corpse){
	if(global.options.fire_explosions == true && place_meeting(x,y,Flame)){
		if("onfire" not in self){
			onfire = 1;
			heat = 0;
			image_blend = c_red;
		}
	}
	if("onfire" in self && place_meeting(x,y,Flame)){
		image_blend -= make_colour_rgb(1, 0, 0);
		heat += 1;
		with instance_create(x,y,Smoke){
			from_corpse = 1;
		}
	}
	if("heat" in self){
		if(heat >= 255){
			if(size >= 2){
				instance_create(x,y,MeatExplosion);
				instance_create(x,y,MeatExplosion);
			}
			instance_create(x,y,MeatExplosion);
			instance_create(x,y,MeltSplat);
			sound_play(sndCorpseExplo);
			sound_play(sndExplosion);
			instance_destroy();
		}
	}
}

with instances_matching(Smoke,"from_corpse",1){
	y -= 1;
}
//onfire corpses

//new wep tiers
//robot ultra defined taste
if(ultra_get(8,1)){
	with(Player){
		if("taste" not in self){
			taste = 1;
			for (var b=0;b<array_length(global.weps);++b){
				weapon_set_area(global.weps[b],-1)
			}
			for (var g=0;g<array_length(global.goldenweps);++g){
				weapon_set_area(global.goldenweps[g],10)
			}
		}
	}
}
else{
	for (var g=0;g<array_length(global.goldenweps);++g){
		weapon_set_area(global.goldenweps[g],-1)
	}
}
//new wep tiers

with(WepPickup){

	//cursed gun gun
	/*for (var c=0;c<array_length(global.goldenweps);++c){
		if(global.player1wep == global.goldenweps[c] || global.player2wep == global.goldenweps[c] || (global.player1wep == global.goldenweps[c] && global.player2wep == global.goldenweps[c])){
			if((wep == global.player1wep || wep == global.player2wep) && curse >= 1){
				wep = 125;
			}
		}
	}*/
	//cursed gun gun

	//cursed wep convert
	if(global.options.protochest_convert == true && curse >= 1){
		switch (wep){
			//machine gun
			case 4:
				wep = 41;
				break;
			//screwdriver
			case 27:
				wep = 101;
				break;
			//crossbow
			case 6:
				wep = 43;
				break;
			//grenade launcher
			case 7:
				wep = 44;
				break;
			//shotgun
			case 5:
				wep = 42;
				break;
			//splinter gun
			case 30:
				wep = 100;
				break;
			//nuke launcher
			case 47:
				wep = 122;
				break;
			//disc gun
			case 18:
				wep = 123;
				break;
			//slugger
			case 21:
				wep = 99;
				break;
			//bazooka
			case 14:
				wep = 102;
				break;
			//wrench
			case 3:
				wep = 40;
				break;
			//laser pistol
			case 19:
				wep = 45;
				break;
			//plasma gun
			case 34:
				wep = 98;
				break;
			//assault rifle
			case 17:
				wep = 103;
				break;
			//revoulver
			case 1:
				wep = 39;
				break;
			//party gun
			case 82:
				wep = 29;//blood launhcer
				break;
			//chicken sword
			case 46:
				wep = 121;//black sword
				break;
			default:
				break;
		}
	}
	//cursed wep convert

}

//no weather in vault
if(game_version > 9944){
	with(BackCont){
		if("it_is_vault" in self){
			if(it_is_vault == true){
				alarm0 = 0;
			}
		}
	}
}
//no weather in vault

//last enemies display
with(enemy){
	if("counted" not in self){
		counted = true;
		global.enemies_count += 1;
		global.enemies_on_start += 1;
		//trace(global.enemies_count);
	}
}

with instances_matching_le(instances_matching(enemy,"counted",true), "my_health", 0) {
			global.enemies_count -= 1;
			//trace(global.enemies_count);
}
//last enemies display

//cursed hyper crystall recolour
if(global.areaSwitch != GameCont.area){
	if(GameCont.area == 104){
		sprite_replace_base64(sprHyperCrystalIdle, "iVBORw0KGgoAAAANSUhEUgAAAkAAAABgCAYAAAD1qc0pAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAABtdSURBVHhe7ZzBkexIckRXEopADWhGowi8UxfywCsloQiUggrNhqPhaEeUZyIB1No/RDyzZ11AJjK7X1bX/zsztn9rmqZpmqZpmqZpmqZpmqZpmqZpmqZpmqZpmqZpmqZpmqZpmqZpmqZpmjP/+p/vDf5y9+9aEdfhrkH3f4jrcNeg+z/Edbhr0P0f4jrcNej+D3Ed7hp0/6e4EHcN+gAe4jrcNej+D3Ed7hp0/4e4DncNuv9DXIe7Bt3/Ia7DXYPu/xQX4o7BX//7P///F7668TtWxHW4Y9D9X+A63DHo/i9wHe4YdP8XuA53DLr/C1yHOwbd/w0uxB2DvwC+uvE7VsR1uGPQvwAvcB3uGHT/F7gOdwy6/wtchzsG3f8FrsMdg/7z9w0uxKrB9uYH//Xv//f6ECriOqwadP+XuA6rBt3/Ja7DqsHWHnT/Z7gOqwZ7/e7/FNdh1eD4/PnGX0JL4kKsGmzxQf8CPMN1WDXoP4Bf4jqsGnT/l7gOqwb9B8BLXIdVg6096Pf/M1yHVYO9fvd/jAuxYnD68MEBvD2EirgOKwZHf8AzwH03f8WKuA4rBt3/C7gOKwZHd37t/vdxHVYMju4A7fEa9938FSviOqwYfLz3u/8DXIgVgy0+4AH0B9B9XIcVg+MXAPAMcN/NX7EirsOKQff/Aq7DisFHf4j7bv6KFXEdVgyO7qD/AH6G67BisHUH6N5//j7EhbgyON74gG/+t4dQEdfhyqD7fwnX4crg1B/gmmeAcffclRVxHa4Mjuak+z/Ddbgy+GgOeY1x99yVFXEdrgy2zjwDtudXjLvnriyJC3FlsMUH+QAgxt1zV1bEdbgy2HoT9ucZYNw9d2VFXIcrg+7/JVyHK4NTf6BngHH33JUVcR2uDLbm7A3Qn2eAcffclRVxHa4MtuYAvdmdZ4Bx99yVJXEhVgyOA6Bv4sOKuA4rBh/9Ie67+StWxHVYMdj6g+7/HNdhxWCv/8PbP3xhRVyHFYPjPc/+/fl/H9dhxeDUH1+7/wNciFWDLbjq5q1aEddh1aD7v8R1WDXo/i9xHVYNuv9LXIdVg+7/Etdh1aD7v8WF+FNWxHX4U1bEdfhTVsR1+FNWxHX4U1bEdfhTlsSFWDXov4G+xHVYNej+L3EdVg26/0tch1WD7v8S12HVoPu/xHVYNej+b3EhVgyOf+9O+99B3sd1WDHo/l/AdVgx6P5fwHVYMej+X8B1WDHo/l/AdVgx6P7fwIW4Mjji4yt9ewgVcR2uDLr/l3Adrgy6/5dwHa4Muv+XcB2uDLr/l3Adrgy6/7dwIWYGW2j+l+dZ3sc89/zMirgOM4NT5yzvY557fmZFXIeZwdYY5PYQPP0QqojrMDPYGoPu/x7XYWawNQbd/z2uw8xgawy6/xdwIWYGR2gH4mMc89zzMyviOswMLvv3L8A6rsPMYC/t6f73cB1mBntpT/e/h+swM9hLe7r/PVyHmcFe2tP9b+JCjAw+/vDFNWV8iGvMd+uMrIjrMDI4mivuDLr/Gq7DyODUm/Aa6u8A5rt1RlbEdRgZ7MXHvwPd/x6uw8hgr/2DngHb6xlgvltnZEVch5HBXvuX/J6HvIf5bp2RJXEhRganNz3ANc2HgPlunZEVcR1GBkdzZXQGmO/WGVkR12FkcOpNtD/s/uu4DiODvfja7wDmu3VGVsR1GBnstX/QM2D37n8P12FksNf+ba+9Ke9hvltnZElcCGdwRFdwj7qDwHNuPWdFXAdncOqt8B7s/vdwHZzBqbXCe1TPAM+59ZwVcR2cwV773u8AnnPrOSviOjiDvfQP+QzYvfvfw3VwBnvpH9ie56DN9R6ec+s5S+JCOIMjusLYDJ4PAs+59ZwVcR2cwdE7MzsDPOfWc1bEdXAGp9aK9ofdfx3XwRnste/9DuA5t56zIq6DM9hL/5DPgN3zGeA5t56zIq6DM9hL/8D+uTflPTzn1nOWxIXIBkdwhfFVdxB43q2brYjrkA1OvRXeU7v/Oq5DNji1zvA+1f4Qz7t1sxVxHbLBXvrZGeB5t262Iq5DNtgr/5LPQLt3/3Vch2ywV/6F/bW7qvfxvFs3WxIXIhscwRVGVt1B4Hm3brYirkM2OHpntD3NZ4Dn3brZirgO2eDUOqPtafdfw3XIBnvp9TPo/mu4Dtlgr/xLPgPtns8Az7t1sxVxHbLBXvkX9s+tVd7H827dbElcCDU4YmcYX82HAHEf67j11Yq4Dmpwap3hfbX7r+M6qMFH54yO0XwGWMetr1bEdVCDvfIP7JvR9rD7r+E6qMFe+Bc2VnJ7fu3+c1wHNdgLn9HeVHtDvY913PpqSVwINdgiOjSwvs7iPtZx66sVcR3U4GjtYHfVnQHWceurFXEd1ODU2aHtafdfw3VQg73yD2jryP1h97/GdVCDvfAv7Kvk7vza/ee4DmqwF/5FW6vam/I+1nHrqyVxIWiwBRyh8Wk+AIoxrOf2oRVxHWhw6uzgWLb7r+E60GCv/J0zwHpuH1oR14EGe+Ef2NWh3Wn3v8Z1oMFe9wzaKq67vu7+Y1wHGuyFz2hrVVtTHcN6bh9aEheCBls8B8Mybo6dxX2s5/ahFXEdaHBqneF9pzsDrOf2oRVxHWjw0dmh42r3v8Z1oMFe+Ad2dWh32v2vcR1osNf9hW0VbU7Rm1+7/xjXgQZ74TOj1nyd5X2s5/ahJXEhYLCFG8HgznwAFGNY1+0HK+I6wODU2cExZ/dfw3WAwV55fgaA41l3BljX7Qcr4jrAYK/7C7s6tLva/ee4DjDYy55hV0V7U7TW193f4zrAYK/7iXbOamuqY1jX7QdL4kLAYIs2wgV391SMYV23H6yI6wCDU2cHx2DunO9RrOv2gxVxHWDw0XhE7p2vVazr9oMVcR1gsNf9gU1HcDzb/ee4DjDYy55hV0V7U/bW193/E9cBBnvdM7POep3lGNZ1+8GSDEJswWa44O5eFuNYf7BvOQYdTo1HcBzmxvmejmH9wb7lGHTYC58bj+C4Ns736H/8y393f2HQYS/7C3uO0OZq7g+x/mDfcgw67FU/YVdFW/N1vu7+nkGHvewn2le75uusjmP9wb71GITYYs1wwd09fOBDnYP1B/uWY9Dh1HgEx6E2d/f0HLD+YN9yDDrsha/PAOTevNZ7kGeA9Qf7lmPQYS/7g/Ycob11Pu/pGWD9wb7lGHTYq57RporeV/Usur9n0GEv+4n21a6udZZjWH+wbz1MhC3UjFlojvHDHuK+XmMc+5i9y2EanBrP4BzozkC7c6z7nzEN9rrnvjM4J/fnPXcG2MfsXQ7TYK/6i/Ycob11Pu/lM8A+Zu9ymAZ70U/YM6Od+ZrXvIev7N/v/19Mg72qR/tqY3bO9yDf+xzv/oKJsEWaMQoN3RgPQA8C+5i9y2EanBrPcK0h7+tYPgPsY/Yuh2mw1z1/2IzQOe4M9F73/8Q02Mv+wpYztDdf6718BtjH7F0O02Av+gl7ZrQzX1O05uvu/4lpsFf9RLtCoO9t3mdjynG85jj2MXvXIwU4ws5gaI1PdUwPIYs52C/tX47085/6whE6J58B5JhrDzGG/dL+5Ug//1537QyAznP9oesPsV/avxzp59+r/qIdZ3CO6w+7vyf9/HvNT7Rlhvdde73u/p+kn38v6tGuELC5dtZ7UJtzTvffSQGOsDNGoaEGnok52C/tX47085/6zuAc+PQcsF/avxzp59/rnvvO4JxRf+jaQ+yX9i9H+vn3qr9oxxmc4/rD7u9JP/9e8xNtmeH92Xs/X3f/H9LPvxf1aFcI2Dy3185ZjmO/tH89ND6jXsHIOf7qAVDMw76VD0D7a1s4Q+fNzgG69hBj2Lf7by/3sj9ovxmc86Q/xL7df3u5Fz2jHWdwjusPXXuIfbv/9nIv6dGWGd6ftdfX3f+X1f5AmxI2z+1zZ1XnYN/K/U8HoGFHMF4Or2rgmZiDfSsfgPbXvldwnusPOQ5de4p9u//2ci/rP2hGcN7TM8C+3X97uRf9RftdwXmuPe3+n8z6E23o4NjVez9fd/+1/kB7QqLNtbs2dnIO9q3c/4ivUWcwcA6vck6O7sQ87F/1APTNz27wCs5z/aGu5bpTjGP/7v+LtruC896cAfbv/p9ovys4b9QfuvYQ+3f/MdrQwbGr9vq6+/+w0h9oS/Ql2ly758ZZnYf9q/Y/DgAxVmC4HF7VuFdiHvbvX4DftldwHnT9Kee47ir27/4/aFt4BefN+kPXnWL/7v+J9ruC80b9oWsPsX/3H6MNHRy7ap+vu/9af6Dt0Jdoc+oaO7kW9q/aH2whVmFchAMannKOi54FmIvv4+fbKcf287MDX8/gPOj6U53n2kOuh+/j59spx/bzE22m90dwXvd/zPbzZ7SdG89w3qg/7f4fbD//DO3n4NisPXvnaz6P7+Pn2ynH9vNfwW4QfYk2p5zHxiMxB+Arvo+fb6ceR7AVMI+hgYZXMc9Fp4R74/v4+XbKcTRYhfNdd5XzYPcfcjQg+XoG5171h93fcjRQeC/fH8G5s/6w+39wNHBwbGXOSnu+JrzG9/Hz7ZTjo0mG4xR9iTannMf3upNwLr6Pn2+nGPxHcAwBR3CcoYGGVzn3KjzE/tX/Eaj2uILzXHdV1+z+nif9FT5z1R+6/riH/av3114kX8/g3Fl/SHjd/bcvtj/gvXxf4bi2d/37/f/JVX/A+248N9d1IPqqROdg/6r9T38A5IAZ3sccwmeynDsKz/t4jf2r/wKgQ243guPa28l5uhav2R9i/+r9cy+4Aufm9nk9wuvu/4P2z93uwGfcOroWr7v/Dyv983WG47qGrqPP6tzuv/b5z+t8H/CZLOeyMdH7nIf9q/bfDsAdgkYkvMYY0fnq6FkeCA8A+8r3UI47/Qnv61ynPstntD/Evt1/e3k0Y1u+nqHzs/os53X/M7m/tqMrcG5eg+h49/9l1J/9tOEIbZufJ5yD5hjr/j/c6Z+vQX6Gjp5ld54D9q3c/3QACJRDwhzzDjn8P//Tvx1ibexb+QByf/iP6I919M3f/X/Q/tqazb7VH83dGWDf7r+9PHqzub7+Rn93Bti3+28vj94q++H1E3J/iLW6/w/an52dGHuC68/P/u4f8IdfPQQGvBLz8AyjU45jDPul/cuRfv7L/lRbjtTueD4/g/3S/uVIP/+ps7Z399lVm6ra383Ffmn/cqSf/2gL8xnk61lbqOO81nnYL+1fjvTzn/rC/J5XtS/vsS17OzkP+6X9y5F+/qNjNn/uaOcs52TzHOyX9q9HCjB8s0OMuZhZzsEzo3GMYb+0fznSzz/9wKE8B9eW8gxG54B72C/tX4708x99r84AjtpS9sdrNw/7pf3LkX7+U9+rc2Df0TnoOK7zHOyX9i9H+vlPfenoDLQv72lfHdd53f+X9PMPW+t9dNTOWc6hbhxfsV/avx4aYI8wPYRRVJVz8MzoPvYxe5fDNBj2pzwHbZtla/bO97GP2bscpsHR+Ooc0BFztLvK1njN+RT7mL3LYRqcGs/OQHvietQf5jPAPmbvcpgGp8Zw9LugfXlv1l/PAPuYvcthGhwtVe2vPZ2co/N4DTGOfcze9TARhh86uJ/DOjU0X+szuI99zN7lMA2GHziU56DNs9odz/A1xnCNfcze5TANjsazM6CYk9tD7Y9rzNVx7GP2Lodp8NF3dA7aGNfaF+o4rnUO9jF7l8M0ODWGozPQvrzHvlDHdV73/8U0GL7feZ8ttTXVcVXH8RX7mL3rkSPsIaaHoEGdGMdcN4b7WH+wbzkGHYb96dU58I3vzgLrD/Ytx6DD0VibOzFH29Luv8agw0djvVZHjSHH8FrHsf5g33IMOpwaQ3cG7Mv+MLenegZYf7BvOQYdjp6qngGbZjmm3fM41h/sW49BiOGHDu6P4lOMY64bw32sP9i3HIMOW+fRGcDZOfDN784B11h/sG85Bh2OxrMzgBjXvnR2Blh/sG85Bh0+Go/OYdRY++Nax7H+YN9yDDqcGkPXXxvjmn2hjvEe52D9wb7lGHSwvfWedlU5NhvH+oN96+FCwGB4CLPAHMPcPIZ7WNftByviOsDA9qc8h9wY8gzcOWBdtx+siOsAg6Ozds9iXPtC7Z/PAOu6/WBFXAcYfHTWa+oa5zPANcexrtsPVsR1gMGpM/q7M+j+73AdYHDqDLU/u2Y55sYxhnXdfrAkLgQM7Bse90aBIccwN4/hHtZ1+8GKuA4wGH7oQJ5Dbgx5Bvkc8Brruv1gRVwHGBydR2cAMabt4ag/xLpuP1gR1wEGH531mo46j84A67r9YEVcBxicOkN3Blf9ec1xrOv2gxVxHWBge/OetlU55sYxhnXdfrAkLgQNhocwOgDcx5x8H/ewntuHVsR1oIHtD3kG+Rx4z50D1nP70Iq4DjQ4Wmt7FWPaGI7OAOu5fWhFXAcanDqPzsG9190ZYD23D62I60CDU2fXPzfO7XHNMazn9qEVcR1ocGoNeQZsm+VYHsd9rOf2oSVxIWhg3/S45yLzHubofYh7WM/tQyviOtBga/3kDPI54DXWc/vQirgONDhas3sWY6P++QywntuHVsR1oMFHa72mubP2xzXHsJ7bh1bEdaDBqbPrz854nfvzmmNYz+1DK+I60OCjuV6zr4r7uT/vYz23Dy2JC6EG9hBcZN7DHL2/Eh9WxHVQA/vBc3UG+RywjltfrYjroAZHb+1Pcb/7P8d1UINTa75Wc2v2x2vexzpufbUiroManFrnM3Dvde3PM8A6bn21Iq6DGpx6a39trK27/w1cCDX4eNPjOkeGvIc5er8PYIzroAZb75Uz4HU+g+4/xnVQg6M326s8h6szwDpufbUiroManFrztTo6A7zGePcf4zqowUdrvYb5vd7913Ed1ODUHK95zcYq7+sY7mEdt75aEhciG3y88XHN0CrG8oHgebdutiKuQzb46A9HZwAxzjPA827dbEVch2xw9Nb+vOf6Q4x3/zmuQzY49eZrvdf9n+E6ZINTa76maO3OoD//r3EdssGpN88g94Z6v/sv4EJkg483Pt/wiEx5AHqvD2CO65ANtt6jM9Bz4DXPofvPcR2ywdGb7Wn+Pcj9IZ5362Yr4jpkg1NvvtZ77K5irPvPcR2ywal1PgO0dmeAse4/x3XIBqfmfM3O/JzRe7yPe3jerZstiQvhDD4OQWNTjOmB4Dm3nrMiroMzOPVfPQM859ZzVsR1cAZH8ztngOfces6KuA7OwPbnve7/DNfBGZx687Xe0/79+b+G6+AMPnrjqzbnNT/7cY3n3HrOkrgQzuD0xtc3PGLrIfQBrOM6OIOt+Z0z6P7XuA7O4GjO/rxmdxVjOAM859ZzVsR1cAa2P+91/2e4Ds7g1Juv9V73v4/r4AxO3fmavfl5j68U13jOrecsiQsxMjjC5zc85SHcjQ8r4jqMDD5+CUZn0P3XcB1GBkf32RngPn4HMN+tM7IirsPI4KP/7Aww360zsiKuw8jg6H11Bt1/DddhZHDq7Zo//csPLIkLMTI4vfH7AN7jOowMjje+66/n0P3XcB1GBkd3NnZngPv9F6A1XIeRwUd/dwbdfx3XYWRwas7XvM5ngPlunZEVcR1GBqfuo/d9//l7AxdiZnAcwugAnsSHFXEdZgbD/jyD7r+O6zAzOPrPzgDz3PMzK+I6zAxO/d0ZdP91XIeZwdF8dgaY556fWRHXYWZwtHfv+/7z9yYuxJXBFnj0wQPdc1dWxHW4MrD9Icfcc1dWxHW4Mtgajz74oXvuyoq4DlcGR/98Bhxzz11ZEdfhyuDUn3b/+7gOVwZb4/7z9wu4EKsGR3Dq5q1aEddh1aD7v8R1WDXo/i9xHVYNuv9LXIdVg+7/Etdh1aD7v8WF+FNWxHX4U1bEdfhTVsR1+FNWxHX4U1bEdfhTlsSFWDH4+NsndfNXrIjrsGJg20M3f8WKuA4rBrY9dPNXrIjrsGJg20M3f8WKuA4rBrY9dPNXrIjrsGJg20M3f8WSuBAzgy1y/ve/Kue452dWxHWYGXT/L+I6zAy6/xdxHWYG3f+LuA4zg+7/RVyHmUH3/yYuxMhg+w+vGFr/Ayz9D7Eg5mG+W2dkRVyHkUH3/zKuw8ig+38Z12Fk0P2/jOswMuj+X8Z1GBl0/2/jQowMtrCjQ9D4+Ir5bp2RFXEdRganvrD7v8N1GBmc+sLu/w7XYWRw6gtH/fv/B2gN12Fk0P2/jOswMtjarvTHV8x364wsiQsxMzgOYeST+LAirsPMwDZXn3z4wIq4DjMD21zt9/86rsPM4PiQH9nv/3Vch5lB9/8irsPMwDZX+/PnBi7EzOCIjL914rX+DRRv/j6AdVyHmcHxAeT6U8xzz8+siOswMzj6U1zn3wHMc8/PrIjrMDM49dffAX724DXmuednVsR1mBl89OcZ8L2Pr5jnnp9ZEddhZnC01v4Q93gGmOeen1kSF+LK4OMQGB5fMe6eu7IirsOVgf0lePPmhxVxHa4Mtu4U3fUDCOPuuSsr4jpcGRzvfYr3fX/+3Md1uDI4+uOrfvb05889XIcrg+N9z89+vvf7/X8TF+LK4Hjz8xD4C9AHcA/X4crgaN/93+E6XBmc+uM17T8A7uE6XBmc+kO+9/G7gHH33JUVcR2uDI7+fN/D/vy5j+twZXC0x1d+/vMMMO6eu7IkLsSKwfHho38DxX03f8WKuA4rBqf+b9/8sCKuw4rB0f8bHz6wIq7DisHWnGfQnz/PcB1WDI7+fP93//u4DisGx3tf/wKE+27+iiVxIVYMTgeADyB8xX03f8WKuA4rBtsbXvv3L8B9XIcVg6M/xOv+C9B9XIcVg4/+/flzH9dhxeDor19x381fsSKuw4rB8d7nX4D68+cBLsSqwfHGf/vmhxVxHVYNjv5v3/ywIq7DqsHxIdT9n+E6rBps733+DuDazVu1Iq7DqsHx2Y8zwLWbt2pFXIdVg607/gLU/R/iQqwaHB/+b//XF6yI67Bq0H8AvMR1WDU4+vdfgJ7hOqwaHP378+cZrsOqwdafZ4BrN2/VirgOqwbHZ39//jzEhbhjsB0AvrrxO1bEdbhj8JUPH1gR1+GOQfd/getwx6D7v8B1uGPQn/8vcB3uGPT7/w0uxB2Dr/yvL1gR1+GOQX8AvcB1uGPQH0AvcB3uGHT/F7gOdwy6/wtchzsGX/mnP7AkLsRdg9fxYUVch7sG3f8hrsNdg+7/ENfhrkH3f4jrcNeg+z/Edbhr0P2f4kLcNegDeIjrcNeg+z/Edbhr0P0f4jrcNej+D3Ed7hp0/4e4DncNun/TNE3TNE3TNE3TNE3TNE3TNE3TNE3TNE3TNE3TNE3TNE3TNE3TNE3zD+Vvf/s7vsjaWf3lIQwAAAAASUVORK5CYII=", 6);
		
		sprite_replace_base64(sprHyperCrystalHurt, "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", 3);
		
		sprite_replace_base64(sprHyperCrystalFire, "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", 3);
		
		sprite_replace_base64(sprHyperCrystalDead, "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", 23);
		
		sprite_replace_base64(sprHyperCrystalShard, "iVBORw0KGgoAAAANSUhEUgAAAGAAAAAQCAYAAADpunr5AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAFbSURBVFhH7ZPNTcQwFIRTCSXQARKiBO70shy4UgklUAUNZfN5M9bExM4LHFbZ9SeNkjx7/H68O3Q6nU5neD6ta2JE9t1psTY8UxX3uf/99ft+LsCbn5vNw7NYE/d+ff4kaYgpWkE+9+O72wuYGEFD5DsygDWv/GmlgudFeK5xAcpj+VS71KTln7/ruInGGYIGqUGk1Tbj29NH2i+IbSX3vMqtJ3GrrYn26TxTiNILXkdaaVD61Q/vc7yOjEqoQRIzbZH9PDmD2FZyz40HAef4JWyhcxBY/SG8DgReQ1pts8iN9vizQYNDFCUFSH7O8eEHvNmDVAPsaWAinyMvsctSiNUZoD39I+VXT6xdttT5lbBUgNXhB7zZR9GPDy9l4dIW5X4pysLn9Qd6gMUF0BMxFPT/m78Wn395Gj4xtOOMqzPXmGtHR6k//115R174ERo4Os3BS51O53YYhjOcv+9A8v03uQAAAABJRU5ErkJggg==", 6);

		sprite_replace_base64(sprBossIntro, "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", 9);
	}
	else{
		sprite_restore(sprHyperCrystalIdle);
		sprite_restore(sprHyperCrystalHurt);
		sprite_restore(sprHyperCrystalFire);
		sprite_restore(sprHyperCrystalDead);
		sprite_restore(sprHyperCrystalShard);
		sprite_restore(sprBossIntro);
	}
}
//cursed hyper crystall recolour

global.areaSwitch = GameCont.area;

//wild idpd
if(global.options.wild_idpd == true){
	for (i = 0; i < array_length(global.idpd_band);i++){
		with (global.idpd_band[i]){
			if(raddrop > 24 && team == 1){
				instance_create(x,y,PopoFreak);
				instance_delete(self);
			}
		}
	}
}
//wild idpd

//lootable cars
if(global.options.lootable_cars == true && instance_exists(Player)){
	with(Car){
		if(place_meeting(x,y,Player)){
			if("looted" not in self){
				looted = true;
				if(irandom(Player.maxhealth) > Player.my_health){
					instance_create(x,y,HPPickup);
					instance_create(x,y,HPPickup);
				}
				else{
					instance_create(x,y,AmmoPickup);
					instance_create(x,y,AmmoPickup);
				}
			}
		}
	}
}
//lootable cars

//chicken reminder
if(global.options.chicken_reminder == true){
	if(instance_exists(Portal) && instance_exists(Player) && instance_exists(WepPickup)){
		with (Player){
			if(global.is_player_notified == false && (race == "chicken")){
				suffered_player();
			}
		}
	}

	if(!instance_exists(Portal) && global.is_player_notified == true){
		global.is_player_notified = false
	}
}
//chicken reminder

//hardmode mod vans
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
//hardmode mod vans

//bugfix to prevent unwanted addinational guardians on crown pickup/statue destroyment
with(Torch){
	if(place_meeting(x,y,GuardianStatue)){
		instance_delete(self);
	}
}
//bugfix to prevent unwanted addinational guardians on crown pickup/statue destroyment

//increased ESP enemies factor
if(GameCont.crown == crwn_blood && global.enemy_factor != 1.5){
	global.enemy_factor = 1.5;
}
//increased ESP enemies factor

//Potential fix of idpd spawning in first ending
if(instance_exists(LastCutscene)){
	instance_delete(IDPDSpawn);
}
//Potential fix of idpd spawning in first ending


with(Player){

	//cursed gun gun
	if(race != "steroids"){
		if(global.player1wep != wep){
			global.player1wep = wep;
		}
		if(global.player2wep != bwep){
			global.player2wep = bwep;
		}
	}
	//cursed gun gun

	//captain speech if it is unused
	if(GameCont.area == 106 && GameCont.subarea == 3){
		if(snd_cptn != null){
			if(snd_spch != snd_cptn){
				snd_spch = snd_cptn;
			}
		}
	}
	//captain speech if it is unused

	if(snd_idpd != null){
		if(audio_is_playing(snd_idpd) && global.idpdyell_playing == false){
			global.idpdyell_playing = true;
		}
		if(!audio_is_playing(snd_idpd) && global.idpdyell_playing == true){
			snd_idpd = null;
		}
	}
}

//projectile changes colours on deflect
if(global.options.deflect_colour == true){
	with(projectile){
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
//projectile changes colours on deflect

//range meta buff
if(global.options.rmb == true){
	//too many rads
	if(instance_exists(enemy) && global.options.idpd_seek == 2 && GameCont.hard > 9 && global.options.wild_idpd == true){
		with(enemy){
			if("lessrads" not in self && "raddrop" in self){
				lessrads = 1;
				raddrop -= 1;
			}
		}
	}
	//too many rads

with(Wall){
	if(instance_exists(Player) && GameCont.area != 0){
		target_x = instance_nearest(x,y,Player).x;
    	target_y = instance_nearest(x,y,Player).y;
    	if(point_distance(x,x,target_x,target_x) < 300 && point_distance(y,y,target_y,target_y) < 150 && !point_in_circle(x,y,10016,10016, 75)){
			if("goodiescheck" not in self && global.aowb > 0 && GameCont.area != 106 && GameCont.area != 107){
				if(random(50) < 1){
					goodiescheck = true;
					/*if(global.aowb != 0 && global.aowb <= 1){
						with instance_create(Player.x,Player.y,PopupText) text = "@pall stashes found@s";
					}*/
					global.aowb -= 1;
					with(instance_create(x,y,CustomObject)){
					//trace("Bonus!");
						sprite_index = global.sprWallBonus;
						image_index = irandom(1);
						if(irandom(1) < 1){
							image_xscale = -1;
						}
						else{
							image_xscale = 1;
						}
						if(random(1) > 0){
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
	}
}

with(CustomObject){
	if(place_meeting(x,y,FloorExplo)){
		if("bonus_type" in self){
			switch (bonus_type){
				case 0:
					if(GameCont.crown == crwn_guns){
						instance_create(x,y,WeaponChest);
					}
					else{
						instance_create(x,y,AmmoPickup);
					}
					break;
				case 1:
					repeat(13) with instance_create(x,y,Rad){
                		speed = random_range(-5,5);
                		direction = random(360);
            		}
					break;
				case 2:
					if(GameCont.crown == crwn_life){
						instance_create(x,y,AmmoPickup);
					}
					else{
						instance_create(x,y,HPPickup);
					}
					break;
				default:
					if(GameCont.crown == crwn_love){
						instance_create(x,y,AmmoChest);
					}
					else{
						instance_create(x,y,WeaponChest);
					}
					break;
			}
			instance_delete(id);
		}
	}
}
//range meta buff

//idpd seek nerf of ultra option
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
//idpd seek nerf of ultra option

//We are in a game so sprites after we come back in menu will restore
if(!instance_exists(MenuGen)){
	global.srim = false;
}
//We are in a game so sprites after we come back in menu will restore

//We are in a menu and we need to restore sprites which was replaced
if(instance_exists(MenuGen) && global.srim == false){
	restoring_sprites();
	global.srim = true;
}
//We are in a menu and we need to restore sprites which was replaced

//ultra chest
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
				name = "accept @gchallenge?@s";
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
//ultra chest

/*with(WepPickup){
	if(place_meeting(x,y,global.ultrachest_id) && id != global.ultraweapon_id && global.ultrachest_frame > 2 && global.weapon_deleted == false){
		instance_delete(id);
		global.weapon_deleted = true;
	}
}*/

//nerf of lightning crystal death effect
with(Lightning){
	if(team == 1){
		damage = 5;
	}
}
//nerf of lightning crystal death effect

//replacing enemy fire proj with correct one
with (Flame){
	if(team == 1){
		instance_change(TrapFire,false);
		damage = 1;
		event_perform(ev_create, 0);
	}
}
//replacing enemy fire proj with correct one

//fire explosions
if(global.options.fire_explosions == true){
	
	//flares will not selfdetonate
	with instances_matching(Grenade,"sprite_index",sprFlare){
		fireproof = true;
	}
	//flares will not selfdetonate

	for (i = 0; i < array_length(global.explosives);i++){
		if(instance_exists(global.explosives[i])){
			with (global.explosives[i]){
				if("fireproof" not in self){
					if(place_meeting(x,y,Flame) || place_meeting(x,y,FireBall) || place_meeting(x,y,TrapFire)){
						instance_destroy();
					}
				}
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
//fire explosions

//hammerhead time
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
/*if(global.options.hammerhead_time > 0){
	if(GameCont.loops > 0 && global.early_hammerhead_compensation == false){
		GameCont.skillpoints += 1;
		if(!skill_get(26)){
			global.hhti = true;
		}
		global.early_hammerhead_compensation = true;
	}
}

//hammerhead time interface
if(global.hhti == true){
	with (SkillIcon){
    	if(num > 0){
        	instance_delete(self);
    	}
    	else{
        	skill = 26;
        	image_index = 26;
        	name = "you will need it";
        	text = "can disable in @wsettings@s#";
        	LevCont.maxselect = 0;
        	loc_set("LevCont:LevelUp","HAMMERHEAD TIME");
        	loc_set("LevCont:SelectMutations","YOU WILL NEED IT");
        	loc_set("LevCont:SelectMutations:1","YOU WILL NEED IT");
        	loc_set("LevCont:InstallUpdates","YOU WILL NEED IT");
        	loc_set("LevCont:InstallUpdates:1","YOU WILL NEED IT");
    	}
	}
	global.hhti = false;
}*/
//hammerhead time interface
//hammerhead time

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

//snow big bandit hitid
if(GameCont.area == 5){
	with(BanditBoss){
		hitid = [sprBanditBossIdle,"Snow Big Bandit"];
	}
}
//snow big bandit hitid	

//jungle big bandit hitid
if(GameCont.area == 105){
	with(BanditBoss){
		hitid = [sprBanditBossIdle,"Jungle Big Bandit"];
	}
}
//jungle big bandit hitid

//slowdown for new projectiles which isn't affected by euphoria (like some death effect projectiles)
if(skill_get(12)){
	with instances_matching(projectile,"newprojectile",true){
		if("slowed" not in self){
			slowed = true;
			speed -= speed * 0.25;
		}
	}
}
//slowdown for new projectiles which isn't affected by euphoria (like some death effect projectiles)

//healthdown for new enemies health of which were reweritten by this mod
if(skill_get(11)){
	with instances_matching(Inspector,"IDPDTurret",1){
		if("scared" not in self){
			scared = true;
			my_health -= my_health * 0.2;
			maxhealth -= maxhealth * 0.2;
		}
	}
}
//healthdown for new enemies health of which were reweritten by this mod

//Just in case, i don't know any mods which gives you the possibility to escape the captain office legally (like it's supposed to be escapable) before L3 and which gaves you possibility to eneter HQ on later loops
//captain dissappear because she is dead
if(GameCont.area == 106 && GameCont.subarea == 3 && instance_exists(Player) && GameCont.loops == 3 && global.cap_dead == true){
	if(instance_exists(LastIntro)){
		wait 5;
		with(LastIntro){
			instance_destroy();
		}
		with(Player){
		if("finale" not in self){
			finale = 1;
			with(instance_create(x,y,LastExecute)){
				sprite_index = mskNone;
				spr_shadow = mskNone;
				spr_dead = mskNone;
				spr_hurt = mskNone;
				spr_idle = mskNone;
				spr_walk = mskNone;
				snd_dead = 0;
				snd_hurt = 0;
			}
		}
	}
	}
	instance_delete(Last);
	sound_play_music(musBossDead);
	with(LastExecute){
		instance_destroy();
	}
}
//captain dissappear because she is dead

//scrapyard osasis enter
//scrapyard osasis enter dosen't move on inch
with instances_matching(CustomHitme,"oasis_enter_scrapyard",1){
	speed = 0;
	}
//scrapyard osasis enter dosen't move on inch

//scrapyard osasis enter spawn
if(global.jungle_enabler_spawned == false && instance_exists(Portal) && GameCont.area == 3 && GameCont.subarea == 1 && global.rest_room == false){
	global.jungle_enabler_spawned = true;
	wait 20;
	with(instance_create(10016,10016,CustomHitme)){
		oasis_enter_scrapyard = 1;
		sprite_index = spr_idle;
		if(global.abd == true && global.options.add_dark == true){
			spr_idle = global.sprOasisEnterIdleNight;
			spr_hurt = global.sprOasisEnterHurtNight;
		}
		else{
			spr_idle = global.sprOasisEnterIdle;
			spr_hurt = global.sprOasisEnterHurt;
		}
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
//scrapyard osasis enter spawn

with instances_matching(CustomHitme,"oasis_enter_scrapyard",1){
	if (my_health <= 0) {
    	instance_destroy();
	}
}
//scrapyard osasis enter

//jungle car sprites
if(GameCont.area == 105 && instance_exists(Car)){
	with(Car){
		if(spr_idle != global.sprJungleCarIdle){
			spr_idle = global.sprJungleCarIdle;
			spr_hurt = global.sprJungleCarHurt;
		}
	}
}
//jungle car sprites

//sand parcticles
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
//sand parcticles

//rad parcticles	
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
//rad parcticles

//parctilces resprites
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
//parctilces resprites

//free jungles for winter city (i need to add random spawn point near player but away from portal and on floor)	
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
//free jungles for winter city
	
//Salamander sound fix
if(!instance_exists(Salamander) && audio_is_playing(sndSalamanderFireLoop)){
	sound_stop(sndSalamanderFireLoop);
	}
//Salamander sound fix	
	
//Tips
if(global.inner_chance_proc == false){
	var r5 = irandom(2);
	global.inner_chance_proc = true;
	}
	
if(instance_exists(Portal)){
	portal_exists();
	}

var r4 = irandom(200);

if(instance_exists(GenCont) && global.options.no_new_tips == false && global.tip_shown == false){

	if(r4 == 0){
		with(Player){
			if(race == "horror"){
				GenCont.tip = "are you feeling it? ";
			}
		}
	}

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
	
	if(r4 == 6 && (GameCont.area == 2 || (GameCont.area == 7 && global.eem > 0) || (GameCont.loops > 0 && (GameCont.area == 3 || GameCont.area == 4 || (GameCont.area == 6 || GameCont.area == 101 || GameCont.area == 105) && global.eem > 0)))){
		GenCont.tip = "eat @yflakes@s, not @rflaks@s";
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
	
	if(r4 == 8 && global.options.fix_venus_car == true){
		with(Player){
			if(race == "venuz"){
				GenCont.tip = "they fixed the best @ycar!@s";
			}
		}
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
		GenCont.tip = "generating @wcobweb@s";
	}
	
	//ultra shovel
	/*if(r4 == 14 && Player.wep == 92 && GameCont.loops > 2){
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
	
	//ultra crossbow
	with(Player){
		if(wep == 94 && race == "chicken" && global.onetimetip_shown.chicken == false){
			GenCont.tip = "why did the chicken @gultracross@s the road";
			global.onetimetip_shown.chicken = true;
		}
	}
	//ultra crossbow
	
	if(r4 == 20 && GameCont.loops > 2){
		GenCont.tip = "not the freaks!";
	}
	
	//all golden weapons
	if(r4 == 21){
		with(Player){
			if(wep == 39 || wep == 40 || wep == 41 || wep == 42 || wep == 43 || wep == 44 || wep == 45|| wep == 98 || wep == 99 || wep == 100 || wep == 101 || wep == 102 || wep == 103 || wep == 122 || wep == 123 || wep == 127){
				GenCont.tip = "you are filled with a sense of @yjuandice@s";
			}
		}
	}
	//all golden weapons
	
	if(r4 == 22 && skill_get(mut_throne_butt) == 1){
		with(Player){
			if(race == "eyes"){
				GenCont.tip = "2attractive4em";
			}
		}
	}
	
	//laser cannon
	if(r4 == 23 && skill_get(mut_laser_brain) == 1){
		with(Player){
			if(wep == 55){
				GenCont.tip = "ama firin' mah @glasor@s. @qblaaarg!@s";
			}
		}
	}
	//laser cannon
	
	if(r4 == 24){
		with(Player){
			if(race == "skeleton"){
				GenCont.tip = "call an @rambulance@s... but not for me!";
			}
		}
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
	
	if(r4 == 28 && GameCont.loops > 1 && GameCont.area == 6 && global.options.death_effects == true){
		GenCont.tip = "emerjency @rcluster@s ejection";
	}
	
	if(r4 == 29 && GameCont.loops > 1 && global.options.death_effects == true){
		GenCont.tip = "spawning season";
	}

	//it`s part of a history ;)
	/*if(r4 == 30 && GameCont.hard < 10 && global.options.nes == true){
		GenCont.tip = "@bshielder@s jumpscare";
	}*/

	if(r4 == 31 && ((GameCont.area == 5 || GameCont.area == 6 || ((GameCont.area == 7 || GameCont.area == 106) && GameCont.loops == 2)) || global.options.wild_idpd == true) && global.options.diropf == true && global.eem > 0){
		GenCont.tip = "@bthey@s will @wsleep...@s @rforever...@s";
	}

	if(r4 == 32 && global.options.idpd_seek == 2 && GameCont.crown != 0 && global.idpd_noticed_your_weapon == true && GameCont.seenhq == 1 && global.cap_spawned == true){
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
		if(global.options.wild_idpd == false){
			if(global.options.diropf == true){
				if(GameCont.loops > 2){
					GenCont.tip = "@bthe dead@s are @rrestless!@s";
				}
			}
			else{
				if(((GameCont.area == 5 || GameCont.area == 6 || ((GameCont.area == 7 || GameCont.area == 106) && GameCont.loops > 1)) && global.eem > 0) || (global.options.idpd_mashup == true && GameCont.loops > 1) || GameCont.loops > 2){
					GenCont.tip = "@bthe dead@s are @rrestless!@s";
				}
			}
		}
		else{
			GenCont.tip = "@bthe dead@s are @rrestless!@s";
		}
	}

	if(r4 == 37 && global.options.popups == false){
		GenCont.tip = "did you enable @radblock?@s";
	}

	if(r4 == 38){
		with (Player){
			if(race == "robot"){
				GenCont.tip = "every line of code written with love";
			}
		}
	}

	//TRUEКонь: Отсылка на spelunky 2 и город золота, легендарное место
	if(r4 == 39 && GameCont.area == 7 && GameCont.subarea == 1){
		GenCont.tip = "you feel a burst of excitement!";
	}
	//TRUEКонь: Отсылка на spelunky 2 и город золота, легендарное место

	//party gun
	if(r4 == 40){
		with(Player){
			if(wep == 82){
				GenCont.tip = "you feel strangely at peace";
			}
		}
	}
	//party gun

	if(r4 == 41){
		with(Player){
			if(chickendeaths > 0){
				GenCont.tip = "why i am @wfelling@s @rhunger?@s";
			}
		}
	}

	if(r4 == 42 && global.options.rmb == true){
		GenCont.tip = "could a crawlspace be there?";
	}

	if(r4 == 43 && global.options.rmb == true){
		with(Player){
			if(race == "eyes"){
				GenCont.tip = "@wkeep your eyes@s buttered till the end";
			}
		}
	}

	//golden grenade launcher
	if(r4 == 44 && global.options.rmb == true){
		with(Player){
			if(wep == 44){
				GenCont.tip = "i wish there would be a @ygolden bomb@s. @woh. wait.@s";
			}
		}
	}
	//golden grenade launcher

	if(r4 == 45 && GameCont.area == 103){
		with(Player){
			if(race == "venuz"){
				GenCont.tip = "@yb@s movie";
			}
		}
	}

	//TRUEКонь: Кроме просто шутки я ничего не помню
	if(r4 == 46 && GameCont.area == 103 && GameCont.loops > 0){
		GenCont.tip = "@ybusiness@s is @rbooming@s";
	}
	//TRUEКонь: Кроме просто шутки я ничего не помню

	if(r4 == 47){
		with(Player){
			if(race == "robot"){
				GenCont.tip = "sample text";
			}
		}
	}

	if(r4 == 48 && global.options.wild_idpd == true){
		GenCont.tip = "@rwild@s @whunt@s";
	}

	if(r4 == 49 && global.options.rmb == true){
		GenCont.tip = "roll for perception check";
	}

	if(r4 == 50 && GameCont.area == 105 && global.options.more_ravens_in_jungle >= 1){
		GenCont.tip = "birds are singing, flowers are blooming";
	}

	if(r4 == 51 && GameCont.area == 105 && global.options.more_ravens_in_jungle >= 1){
		GenCont.tip = "black parrots";
	}

	//cursed non golden versions of golden weapons with weapon convertions option
	if(global.options.protochest_convert == true){
		with(Player){
			if(((wep == 1 || wep == 3 || wep == 4 || wep == 5 || wep == 6 || wep == 7 || wep == 17 || wep == 18 || wep == 19 || wep == 21 || wep == 27 || wep == 30 || wep == 34 || wep == 46 || wep == 47 || wep == 82 || wep == 120) && curse > 0) || ((bwep == 1 || bwep == 3 || bwep == 4 || bwep == 5 || bwep == 6 || bwep == 7 || bwep == 17 || bwep == 18 || bwep == 19 || bwep == 21 || bwep == 27 || bwep == 30 || bwep == 34 || bwep == 46 || bwep == 47 || bwep == 82 || bwep == 120) && bcurse > 0) || (((wep == 1 || wep == 3 || wep == 4 || wep == 5 || wep == 6 || wep == 7 || wep == 17 || wep == 18 || wep == 19 || wep == 21 || wep == 27 || wep == 30 || wep == 34 || wep == 46 || wep == 47 || wep == 82 || wep == 120) && curse > 0) && ((bwep == 1 || bwep == 3 || bwep == 4 || bwep == 5 || bwep == 6 || bwep == 7 || bwep == 17 || bwep == 18 || bwep == 19 || bwep == 21 || bwep == 27 || bwep == 30 || bwep == 34 || bwep == 46 || bwep == 47 || bwep == 82 || bwep == 120) && bcurse > 0))){
				GenCont.tip = "@q@pc@qu@qr@qs@qe@qd @qi@qm@qa@qg@qe";
			}
		}
	}
	//cursed non golden versions of golden weapons with weapon convertions option
	
	//r4 > 52 && r4 < 99
	
	if(r4 > 99 && r5 == 1 && (GameCont.area == 1 || GameCont.area == 3) && global.eem > 0){
		GenCont.tip = "@wsalamanders@s love the sun";
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.area == 1 && GameCont.loops > 0 && global.options.death_effects == true){
		GenCont.tip = "@wthe flies@s are getting louder";
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.area == 2 && global.eem > 0){
		GenCont.tip = "the gun godz cameo we deserve";
	}
	
	if(r4 > 99 && r5 == 1 && GameCont.area == 104 && global.options.cursed_caves_rework == true){
		GenCont.tip = "floor here is made out of @p@qc @qu @qr @qs @qe @qs@s";
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.area == 104){
		GenCont.tip = "@ppurple@s suits you better~";
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.subarea == 1 && GameCont.area == 3 && global.options.fix_venus_car == true){
		GenCont.tip = "@wmolefish@s forgot to close the @ycar@s";
	}
	
	if(r4 > 99 && r5 == 1 && GameCont.area == 7 && global.options.add_dark == true){
		GenCont.tip = "it's @pdark@s with no lamps or windows";
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.area == 7){
		GenCont.tip = "power of @gplutonium@s shines within you!";
	}
	
	if(r4 > 99 && r5 == 1 && GameCont.area == 5 && GameCont.subarea == 1){
		GenCont.tip = "the jungle grows relentless...";
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.area == 5 && global.onetimetip_shown.sans == false){
		GenCont.tip = "hey. is your refrigerator running?";
		global.onetimetip_shown.sans = true;
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.area == 105){
		GenCont.tip = "28 years in that godforsaken jungle...";
	}
	
	if(r4 > 99 && r5 == 1 && GameCont.area == 105){
		GenCont.tip = "don't let grass touch you";
	}
	
	if(r4 > 99 && r5 == 1 && GameCont.area == 103 && GameCont.loops < 3 && GameCont.loops > 0 && global.options.enemies_mutations == true){
		GenCont.tip = "even @wrockets@s are @ygold!@s";
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.area == 103 && GameCont.loops > 2 && global.options.enemies_mutations == true){
		GenCont.tip = "even @wdisks@s are @ygold?!@s";
	}
	
	if(r4 > 99 && r5 == 1 && GameCont.area == 102){
		GenCont.tip = "pizza time!";
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.area == 102){
		GenCont.tip = "you hear the sounds of @grevelry!@s";
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.area == 101){
		GenCont.tip = "it's on the house";
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.area == 6 && GameCont.loops > 1){
		GenCont.tip = "they're practicing gemmation";
	}
	
	if(r4 > 99 && r5 == 2 && GameCont.area == 6 && GameCont.loops > 2){
		GenCont.tip = "ever tried mitosis? you'd better now";
	}
	
	if(GameCont.area == 106 && GameCont.subarea == 3 && GameCont.loops < 2){
		GenCont.tip = "one way ticket";
	}
	
	if(global.cap_dead == false && ((GameCont.area == 106 && GameCont.subarea == 3 && GameCont.loops > 1) || (GameCont.area == 0 && GameCont.subarea == 1 && GameCont.loops > 4))){
		GenCont.tip = "last remote";
	}

	if(r4 > 99 && r5 == 1 && GameCont.area == 107){
		GenCont.tip = "it's!! tv!! time!!!";
	}
	global.tip_shown = true;
}
//Tips

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
//Horror taunting

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
	sound_play_music(mus1b);
	replacing_sprites();
	background_color = make_color_rgb(106, 122, 175);
	BackCont.shadcol = c_black;
	TopCont.fog = sprFog2;
	global.sprites_swapped = true;
}


if(global.abd == true && GameCont.area == 3 && global.sprites_swapped == false && instance_exists(BackCont)){
	sound_play_music(mus3b);
	replacing_sprites();
	//background_color = make_color_rgb(51, 57, 71);
	background_color = make_color_rgb(40, 43, 91);
	BackCont.shadcol = c_black;
	TopCont.fog = sprFog2;
	global.sprites_swapped = true;
}
	
if(global.abd == true && GameCont.area == 5 && global.sprites_swapped == false && instance_exists(BackCont)){
	sound_play_music(mus5b);
	replacing_sprites();	
	background_color = make_color_rgb(59, 55, 124);
	BackCont.shadcol = c_black;
	TopCont.fog = sprFog2;
	global.sprites_swapped = true;
}
//Changing sprites

//guaranteed escape from hq
if(GameCont.area == 106 && GameCont.subarea = 3){
	with(Van){
		freak = 0;
	}
}
//guaranteed escape from hq

//enemies mutations
if(GameCont.loops > 0 && global.options.enemies_mutations == true){

	if(instance_exists(Gator) || instance_exists(BuffGator)){
		with (Gator) {
			gator_tp()
		}
		with (BuffGator) {
			gator_tp()
		}
	}

	if(GameCont.area == 104 && instance_exists(HyperCrystal)){
		with (HyperCrystal) {
			var teleport = 0;
			if !irandom(4) && !teleport teleport = irandom(45);

			if(teleport > 43){

				var _dir = random(360)
				var _dis = random(40)

				var X = x + lengthdir_x(_dis, _dir)
				var Y = y + lengthdir_y(_dis, _dir)

				if !place_meeting(X, Y, Wall) && place_meeting(X, Y, Floor) {
					x = X
					y = Y

				if !irandom(7) {
					teleport = 15
					}
				} else {
					teleport = 1
					x = xprevious
					y = yprevious
				}
			}
		}
	}

}
	
if(GameCont.loops > 2 && global.options.enemies_mutations == true){	
	with instances_matching(JockRocket,"hitid",98){
		instance_change(Disc,false);
		newprojectile = true;
		speed = 8;
		sprite_index = sprGoldDisc;
		event_perform(ev_create, 0);
	}
	
	with instances_matching(EnemyBullet4,"hitid",98){
		instance_change(LHBouncer,false);
		newprojectile = true;
		speed = 4;
		team = 1;
		hitid = 98;
		event_perform(ev_create, 0);
	}
	
	with instances_matching(EnemyBullet4,"hitid",17){
		instance_change(LHBouncer,false);
		newprojectile = true;
		speed = 4;
		team = 1;
		hitid = 17;
		event_perform(ev_create, 0);
	}
	
	with instances_matching(EnemyBullet4,"hitid",26){
		instance_change(LHBouncer,false);
		newprojectile = true;
		speed = 4;
		team = 1;
		hitid = 26;
		event_perform(ev_create, 0);
	}
	
	with instances_matching(EnemyBullet4,"hitid",global.SnowSniperHitid){
		instance_change(LHBouncer,false);
		newprojectile = true;
		speed = 4;
		team = 1;
		hitid = global.SnowSniperHitid;
		event_perform(ev_create, 0);
	}
	
	with instances_matching(EnemyBullet4,"hitid",global.JungleSniperHitid){
		instance_change(LHBouncer,false);
		newprojectile = true;
		speed = 4;
		team = 1;
		hitid = global.JungleSniperHitid;
		event_perform(ev_create, 0);
	}
}
//enemies mutations

//night areas
//area tries to became dark
if(global.iattbd == false){
	if(irandom(4) < 1 && global.options.add_dark == true && (GameCont.area == 1 || GameCont.area == 3 || GameCont.area == 5 || GameCont.area == 103)){
		global.iattbd = true;
		TopCont.darkness = 1;
		global.abd = true;
	}
	else{
		global.iattbd = true;
	}
}
//area tries to became dark
	/*if(global.options.add_dark == true){
		if(GameCont.area == 1 || GameCont.area == 3 || GameCont.area == 5){
			if(GameCont.subarea == GameCont.loops){
				if(GameCont.loops < 4 && GameCont.loops > 0){
					TopCont.darkness = 1;
					global.abd = true;
				}
			}
			if(GameCont.loops > GameCont.subarea){
				if(GameCont.loops == 4){
					if(GameCont.subarea < 3){
						TopCont.darkness = 1;
						global.abd = true;
					}
				}
				if(GameCont.loops == 5){
					if(GameCont.subarea == 1 || GameCont.subarea == 3){
						TopCont.darkness = 1;
						global.abd = true;
					}
				}
				if(GameCont.loops == 6){
					if(GameCont.subarea > 1){
						TopCont.darkness = 1;
						global.abd = true;
					}
				}
				if(GameCont.loops == 7){
					TopCont.darkness = 1;
					global.abd = true;
				}
				if(GameCont.loops > 7){
					if(irandom(2) < 1){
						TopCont.darkness = 1;
						global.abd = true;
					}
				}
			}
		}
		if(GameCont.area == 101 || GameCont.area == 103){
			if(irandom(3) < 1){
				TopCont.darkness = 1;
				global.abd = true;
			}
		}
		global.iattbd = true;
	}
}*/
//night areas

//music for bosses	
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
//music for bosses

//Makes IDPD seek the player if he holds IDPD Weapon
with (Player){
	//hyper weapons and rogue rifle
	if((wep == 26 || wep == 54 || wep == 118 || (wep == 81 && race != "rogue")) && global.idpd_noticed_your_weapon == false && global.options.idpd_seek == 2){
		global.idpd_noticed_your_weapon = true;
		instance_create(0,0,WantPopo);
	}
}
//Makes IDPD seek the player if he holds IDPD Weapon	

//Makes weapons cursed in cursed crystal caves
if(GameCont.area == 104 && global.options.cursed_caves_rework == true){
	with(WepPickup){
		curse = 1;
	}
	if(global.ccc == false && GameCont.loops > 0){
	global.ccc = true;
	}
}
//Makes weapons cursed in cursed crystal caves

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
//Uncurse your weapons after exiting cursed crystal caves on L1+ 
		
//Death effects
//Giving death effect tags and some stat changes
if (global.options.death_effects == true) {
	//L1+
	if(GameCont.loops > 0){

		with(JungleFly){
			if("death_effect" not in self){
				death_effect = true;
			}
		}

		with(SmallGenerator){
			if("death_effect" not in self){
				death_effect = true;
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

		if(GameCont.area == 104){
			with instances_matching_le(HyperCrystal, "my_health", 0) {
				repeat (14) with instance_create(x,y,InvLaserCrystal){
					motion_add(irandom_range(5,10),4);
				}
			}
		}	
	}
	//L1+

	//L2+
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
				raddrop += 2;
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
	//L2+

	//L3+
	if (GameCont.loops > 2) {

		with(DogGuardian){
			if("death_effect" not in self){
				if(irandom(2) < 1){
					death_effect = true;
					raddrop += 12;
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
				raddrop += 2;
			}
		}

		with(JungleAssassin){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 2;
			}
		}

		with instances_matching(Sniper,"hit_id",global.JungleSniperHitid){
			if("death_effect" not in self){
				death_effect = true;
				raddrop += 6;
			}
		}
		
		if(GameCont.area == 105){
			with (BanditBoss) {
				if("death_effect" not in self){
				death_effect = true;
				raddrop += 12;
				}
			}
		}

		with(EliteGrunt){
			if("death_effect" not in self){
				death_effect = true;
			}
		}
	}
	//L3+

	//L4+
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
					instance_create(Corpse.x, Corpse.y, NecroReviveArea);
					augh_imDead = 1800;
					sound_play(sndNecromancerRevive);
					instance_destroy();
					}
				}
			}
	}
	//L4+
}
//Giving death effect tags and some stat changes

//what does enemy does after death
with instances_matching_le(Last, "my_health", 0) {
			global.cap_dead = true;
			sprite_replace(sprDeskIdle,"resources/Enemies/Cap/sprDeskIdle.png",1);
			sprite_replace(sprDeskIdleTrans,"resources/Enemies/Cap/sprDeskIdle.png",1);
			sprite_replace(sprDeskIdleTurn,"resources/Enemies/Cap/sprDeskIdle.png",1);
			sprite_replace(sprDeskIdleWait,"resources/Enemies/Cap/sprDeskIdle.png",1);
			sprite_replace(sprLastSit,"resources/Enemies/Cap/sprLastSit.png",1);
		}

with instances_matching_le(instances_matching(JungleFly,"death_effect",true), "my_health", 0) {
			instance_create(x,y,MaggotExplosion);
		}

//fire cannon explosion
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

//shoots bullet in direction of player
with instances_matching_le(instances_matching(Bandit,"death_effect",true), "my_health", 0) {
			bandit_death();
			sound_play(sndEnemyFire);
		}

//shoots 3 bullets in direction of player
with instances_matching_le(instances_matching(Wolf,"death_effect",true), "my_health", 0) {
			wolf_death();
			sound_play(sndEnemyFire);
		}

//shoots 5 pellets in direction of player
with instances_matching_le(instances_matching(Molesarge,"death_effect",true), "my_health", 0) {
			molesarge_death();
			sound_play(sndMolesargeFire);
		}

with instances_matching_le(instances_matching(OasisBoss,"death_effect",true), "my_health", 0) {
			repeat (5) instance_create(x + irandom(20),y + irandom(20),BoneFish);
		}

//shoots bullet in direction of player
with instances_matching_le(instances_matching(Grunt,"death_effect",true), "my_health", 0) {
			grunt_death();
			sound_play(sndRogueRifle)
		}

//shoots slug in direction of player
with instances_matching_le(instances_matching(Inspector,"death_effect",true), "my_health", 0) {
			inspector_death();
			sound_play(sndRogueRifle);
		}

with instances_matching_le(instances_matching(Last,"death_effect",true), "my_health", 0) {
			instance_create(0,0,VanSpawn);
			global.cap_spawned = true;
			global.cap_dead = true;
			sprite_replace(sprDeskIdle,"resources/Enemies/Cap/sprDeskIdle.png",1);
			sprite_replace(sprDeskIdleTrans,"resources/Enemies/Cap/sprDeskIdle.png",1);
			sprite_replace(sprDeskIdleTurn,"resources/Enemies/Cap/sprDeskIdle.png",1);
			sprite_replace(sprDeskIdleWait,"resources/Enemies/Cap/sprDeskIdle.png",1);
			sprite_replace(sprLastSit,"resources/Enemies/Cap/sprLastSit.png",1);
		}

//big guardian bullet explosion
with instances_matching_le(instances_matching(DogGuardian,"death_effect",true), "my_health", 0) {
			dog_guardian_death();
		}

with instances_matching_le(instances_matching(Turret,"death_effect",true), "my_health", 0) {
			instance_create(x,y,Explosion);
			sound_play(sndExplosion);
		}

//spawns ultra grenade
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

//spawns idpd grenade
with instances_matching_le(instances_matching(EliteGrunt,"death_effect",true), "my_health", 0) {
			elite_grunt_death();
		}

//lightning cannon ball explosion
with instances_matching_le(instances_matching(LightningCrystal,"death_effect",true), "my_health", 0) {
			lightning_crystal_death();
		}

with instances_matching_le(instances_matching(BanditBoss,"death_effect",true),"my_health", 0) {
			instance_create(x,y,ToxicDelay);
			sound_play(sndToxicBoltGas);
		}

with instances_matching(Corpse, "sprite_index", sprSmallGeneratorDead) {
			if("generated" not in self){
				if(global.options.death_effects == true && GameCont.loops > 0){
					instance_create(x,y,ExploGuardian);
				}
				else{
					instance_create(x,y,Rad);
				}
				generated = true;
			}
		}

with instances_matching(Corpse, "sprite_index", sprBigGeneratorDead) {
			if("generated" not in self){
				if(global.options.death_effects == true && GameCont.loops > 1){
					if(global.dogguardian_amount < 2){
						instance_create(x,y,DogGuardian);
						global.dogguardian_amount = 2;
					}
					else{
						instance_create(x,y,DogGuardian);
						instance_create(x,y,DogGuardian);
						global.dogguardian_amount = 1;
					}
				}
				else{
					instance_create(x,y,Rad);
				}
				generated = true;
			}
		}

//jungle sniper death effect
with instances_matching_le(instances_matching(instances_matching(Sniper,"hit_id",global.JungleSniperHitid),"death_effect",true), "my_health", 0) {
			instance_create(x,y,ToxicDelay);
		}
//what does enemy does after death
//Death effects

//pizza chest instead of hp chest in pizza sewers
if(GameCont.area == 102 || GameCont.area == "pizza" || GameCont.area == "turtles"){
	with(HealthChest){
		sprite_index = sprPizzaChest1;
		spr_dead = sprPizzaChestOpen;
	}
}
//pizza chest instead of hp chest in pizza sewers

//No IDPD Portals for Captain
if(GameCont.area == 106 && GameCont.subarea == 3){
	global.no_idpd_for_cap = true;
}
//No IDPD Portals for Captain

//Disabling Darkness when Throne 2 appears
if(instance_exists(Nothing2)){
	TopCont.darkness = 0;
	global.throne2_spawned = true;
}
//Disabling Darkness when Throne 2 appears

//idpd mashup
if(global.options.idpd_mashup == true){
	//1-1 L2 - 0-1 L3
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
	//1-1 L2 - 0-1 L3

	//1-1 L3 - 0-1 L4
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
	//1-1 L3 - 0-1 L4
}
//idpd mashup

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
//QOL thing. When musBossDead playing and next area will be same b theme will play

//Fix of when boss is down in palace, nothing plays instead of musBossDead	
if(GameCont.area == 7 && GameCont.subarea < 3){
	if(audio_is_playing(sndBossWin)){
		global.palace_boss_dead = true;
	}
	if(!audio_is_playing(sndBossWin) && global.palace_boss_dead == true){
		sound_play_music(musBossDead);
		global.palace_boss_dead = false;
	}
}
//Fix of when boss is down in palace, nothing plays instead of musBossDead	

//No Jocks
if (global.options.no_jocks != false){
	with(Jock){
		instance_delete(id);
	}
}
//No Jocks

//No Early Shielders	
if(GameCont.hard < 10 && global.options.nes == true){
	if(GameCont.popolevel > 4){
		GameCont.popolevel = 4;
	}
}
//No Early Shielders

//4 IDPD Portals instead of van in Labs
with(WantVan){
	if (GameCont.area == 6 && global.options.piov == true){
		instance_create(x,y,WantPopo);
		instance_create(x,y,WantPopo);
		instance_delete(id);
	}
}
//4 IDPD Portals instead of van in Labs

//No early Popo Freak revives
with(WantRevivePopoFreak){
	if (GameCont.loops < 3 && global.options.diropf == false){
		instance_delete(id);
	}
}
//No early Popo Freak revives

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
// Help in vault for CrownGuardian

// LilHunter help
if(instance_exists(LilHunterDie) && !global.lilhunter_revenged && global.options.death_effects == true){
    instance_create(0,0,VanSpawn);
    global.lilhunter_revenged = true;
}
// LilHunter help

#define replacing_sprites

for (i = 0; i < array_length(global.fsprites_replace);i++){
	sprite_replace(global.fsprites_replace[i][0],global.fsprites_replace[i][1],global.fsprites_replace[i][2]);
}

#define restoring_sprites

for (i = 0; i < array_length(global.fsprites_restore);i++){
	sprite_restore(global.fsprites_restore[i]);
}

//area name display
#define level_start
setname();

#define setname
switch(GameCont.area){
    case(100):  
        global.areaname = "???"; 
        break;
    case(107):  
        global.areaname = "???"; 
        break;
    case(106):
		
        global.areaname = "HQ"+string(GameCont.subarea); 
        break;
    default:
		if(GameCont.loops == 0){
			global.areaname = 
			is_string(GameCont.area) ? 
				mod_script_call("area",string(GameCont.area),"area_name",GameCont.subarea,GameCont.loops) 
				:
				string(GameCont.area mod 100)+"-"+(GameCont.area>=100?"?":string(GameCont.subarea));
			break;
		}
		else{
			global.areaname = 
			is_string(GameCont.area) ? 
				mod_script_call("area",string(GameCont.area),"area_name",GameCont.subarea,GameCont.loops) 
				:
				string(GameCont.area mod 100)+"-"+(GameCont.area>=100?"?":string(GameCont.subarea))+" L"+string(GameCont.loops);
			break;
		}
        
}
//area name display

//last enemies display
#define draw

if(global.options.last_enemies_display == true && global.enemies_count <= (global.enemies_on_start / 10) && (GameCont.area != 7 && GameCont.subarea != 3) && GameCont.area != 0){
	with(enemy){
		if(x > view_xview_nonsync - 10 + game_width || x < view_xview_nonsync + 10 || y > view_yview_nonsync - 10 + game_height || y < view_yview_nonsync + 10){
			draw_sprite_ext(sprite_index, 0, 
			(x > view_xview_nonsync - 10 + game_width) ? (view_xview_nonsync - 10 + game_width) : ((x < view_xview_nonsync + 10) ? view_xview_nonsync + 10 : x), 
			(y > view_yview_nonsync - 10 + game_height) ? (view_yview_nonsync - 10 + game_height) : ((y < view_yview_nonsync + 10) ? view_yview_nonsync + 10 : y),
			0.5, 0.5, 0, c_red, 1);
		}
	}
	with(instances_matching(CustomObject,"is_enemy",true)){
		if(variable_instance_exists(self, "deactivateName") && variable_instance_exists(self, "storage") && deactivateName == "deactivated"){
			if(x > view_xview_nonsync - 10 + game_width || x < view_xview_nonsync + 10 || y > view_yview_nonsync - 10 + game_height || y < view_yview_nonsync + 10){
				draw_sprite_ext(storage[array_find_index(storageVars, "sprite_index")], 0, 
				(x > view_xview_nonsync - 10 + game_width) ? (view_xview_nonsync - 10 + game_width) : ((x < view_xview_nonsync + 10) ? view_xview_nonsync + 10 : x), 
				(y > view_yview_nonsync - 10 + game_height) ? (view_yview_nonsync - 10 + game_height) : ((y < view_yview_nonsync + 10) ? view_yview_nonsync + 10 : y),
				0.5, 0.5, 0, c_red, 1);
			}
		}
	}
}
//last enemies display

//area name display
#define draw_gui

/*if (instance_exists(Player) && global.options.area_display == true){
    switch(global.playercount){
        case(1):
            draw_set_halign(fa_right);
            draw_text_nt(game_width-2,(game_height-game_height/12)+10*(timer=false),global.areaname);
            break;
        case(2):
            draw_set_halign(fa_left);
            draw_text_nt(2,(game_height-game_height/12)+10*(timer=false),global.areaname);
            break;
        default:
            draw_set_halign(fa_center);
            draw_text_nt(game_width/2,game_height/12,global.areaname);
            break;
    }
    draw_set_halign(fa_left);
}*/
//area name display
if(global.options.hamamount == true){
	with (Player) {
		if(hammerhead != 0){
			draw_set_halign(fa_center);
			draw_text(124, 7, `${hammerhead}`);
			draw_text_shadow(124, 7, `${hammerhead}`);
			draw_sprite(sprHammerHeadNear, current_frame * 0.4, 124, 13);
			break;
		}
	}
}


//hardmode mod van
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
//hardmode mod van

//monster style for inspectors with rad chests
#define rad_inspector

with Player {
	if distance_to_object(other) <= 72 && speed < 16 { 
		motion_add(point_direction(other.x, other.y, x, y), 0.4)
		}
	}
//monster style for inspectors with rad chests

//drawing telekenesis
#define telekenesis

with(Inspector){
    if("RadHolder" in self){
        if(RadHolder == 1){
            draw_sprite_ext(sprEyesB, -1, x, y, 1, 1, angle, c_white, 1);
        }
    }
}
//drawing telekenesis

//drawing rad chests
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
//drawing rad chests

//which ultra weapon you will get on ultra chest
#define ultra_weapon

if(skill_get(13) && !global.used_skills [0]){
	global.used_skills [0] = true;
	return 92;
}
if(skill_get(21) && !global.used_skills [1]){
	global.used_skills [1] = true;
	return 94;
}
if(skill_get(16) && !global.used_skills [2]){
	global.used_skills [2] = true;
	return 86;
}
if(skill_get(14) && !global.used_skills [3]){
	global.used_skills [3] = true;
	return 95;
}
if(skill_get(17) && !global.used_skills [4]){
	global.used_skills [4] = true;
	return 87;
}
if(skill_get(15) && !global.used_skills [5]){
	global.used_skills [5] = true;
	return 93;
}
with(Player){
	//all vanilla ultra weapons
	if(wep == 86 || wep == 94 || wep == 92 || wep == 95 || wep == 93 || wep == 87){
		if(random(1) < 1){
			return wep;
		}
		else{
			var wep_choice = irandom(5);
			return global.ultra_weapons_random [wep_choice];
		}
	}
	else if(bwep == 86 || bwep == 94 || bwep == 92 || bwep == 95 || bwep == 93 || bwep == 87){
		if(random(1) < 1){
			return bwep;
		}
		else{
			var wep_choice = irandom(5);
			return global.ultra_weapons_random [wep_choice];
		}
	}
	else if((wep == 86 || wep == 94 || wep == 92 || wep == 95 || wep == 93 || wep == 87) && (bwep == 86 || bwep == 94 || bwep == 92 || bwep == 95 || bwep == 93 || bwep == 87)){
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
	else{
		var wep_choice = irandom(5);
		return global.ultra_weapons_random [wep_choice];
	}
}
//which ultra weapon you will get on ultra chest

#define page_credits_draw
	#macro spec_x screen_center_x - 150
	#macro spec_y screen_center_y - 60
	#macro cred_x screen_center_x + 20 
	#macro cred_y screen_center_y - 64 // -48
	
	var _halign = draw_get_halign(),
		_valign = draw_get_valign();
	
	draw_set_valign(0)	
	draw_set_halign(0)

	draw_text_nt(spec_x, cred_y,		"   SERAFIMGWS");
	draw_set_font(fntChat)
	draw_text_nt(spec_x - 4, cred_y + 10,		"@(color:65280)     MOD IDEA, MOST IDEAS,
												#CODE, TESTING AND QUALITY CONTROL");
	draw_set_font(fntM);

	draw_text_nt(spec_x - 5, cred_y + 35,		"   TRUECOINESS");
	draw_set_font(fntChat)
	draw_text_nt(spec_x + 5, cred_y + 45,		"@(color:30719)   MOST IDEAS, A LOT OF
												#TESTING AND QUALITY CONTROL");
	draw_set_font(fntM);

	draw_text_nt(spec_x + 5, cred_y + 70,		"   SUPERMANY");
	draw_set_font(fntChat)
	draw_text_nt(spec_x + 16, cred_y + 81,		"@(color:16749678)EXTENDED SPAWN POOLS,
												#MOD START IN GENERAL,
												#SPRITES FOR WILD IPDP
												# AND CODE ASSISTANCE");
	draw_set_font(fntM);

	draw_text_nt(cred_x + 4, cred_y,		"    BLAAC");
	draw_set_font(fntChat)
	draw_text_nt(cred_x - 4, cred_y + 10,		"@(color:16767324)        INSPIRATION,
												#3D VAN AND JUNGLE ENTER CODE,
												# SPRITES FOR SNOW SNIPERS
												#  AND BIG JUNGLE BANDITS");
	draw_set_font(fntM);

	draw_text_nt(cred_x, cred_y + 60,		"    SQUIDDY");
	draw_set_font(fntChat)
	draw_text_nt(cred_x, cred_y + 70,		"@(color:4974406)    CUSTOM OPTIONS MOD");
	draw_set_font(fntM);

	draw_text_nt(cred_x + 4, cred_y + 83,		"NUCLEAR THRONE#DISCORD SERVER");
	draw_set_font(fntChat)
	draw_text_nt(cred_x, cred_y + 98,		"@g      CODE ASSISTANCE");
	draw_set_font(fntM);
	
	draw_set_halign(_halign);
	draw_set_valign(_valign);

#define page_credits_draw_2
	#macro spec_x screen_center_x - 150
	#macro spec_y screen_center_y - 60
	#macro cred_x screen_center_x + 20 
	#macro cred_y screen_center_y - 64 // -48
	
	var _halign = draw_get_halign(),
		_valign = draw_get_valign();
	
	draw_set_valign(0)	
	draw_set_halign(0)

	draw_text_nt(spec_x + 3, cred_y,		"    LUKLAKA");
	draw_set_font(fntChat)
	draw_text_nt(spec_x - 4, cred_y + 10,		"@pMISSING NIGHT AREAS SPRITES AND
												#   SNOW BIG BANDIT SPRITES");
	draw_set_font(fntM);

	draw_text_nt(spec_x - 5, cred_y + 35,		"     CZIMBALA");
	draw_set_font(fntChat)
	draw_text_nt(spec_x + 5, cred_y + 45,		"@s   DARK PALACE SPRITES");
	draw_set_font(fntM);

	draw_text_nt(spec_x + 3, cred_y + 60,		"  WIGGLERCOLA");
	draw_set_font(fntChat)
	draw_text_nt(spec_x + 2, cred_y + 71,		"       @yGATOR TP CODE,
												#   SAVE SYSTEM FOR OPTIONS
												# AND CREDITS PAGE REFERENCE");
	draw_set_font(fntM);

	/*draw_text_nt(spec_x + 3, cred_y + 60,		" YELLOWAFTERLIFE");
	draw_set_font(fntChat)
	draw_text_nt(spec_x - 5, cred_y + 71,		"@y        SPECIAL THANKS FOR#CREATING NUCLEAR THRONE TOGETHER");
	draw_set_font(fntM);*/

	draw_text_nt(cred_x, cred_y,		"   VLAMBEER");
	draw_set_font(fntChat)
	draw_text_nt(cred_x, cred_y + 10,		"@b   SPECIAL THANKS FOR#CREATING NUCLEAR THRONE");
	draw_set_font(fntM);

	draw_text_nt(cred_x - 2, cred_y + 35,		" E.O. LISSANDR");
	draw_set_font(fntChat)
	draw_text_nt(cred_x + 4, cred_y + 45,		"@(color:31231)     SOME TESTING,#   MORAL SUPPORT AND# FUN DEEPLOOP COOP RUNS");
	draw_set_font(fntM);

	draw_text_nt(cred_x + 4, cred_y + 83,		"     MXI");
	draw_set_font(fntChat)
	draw_text_nt(cred_x - 4, cred_y + 93,		"@(color:4508129)SOME GITHUB HELP AND TESTING");
	draw_set_font(fntM);
	
	draw_set_halign(_halign);
	draw_set_valign(_valign);		

#define cleanup

restoring_sprites();

sprite_restore(sprDeskIdle);
sprite_restore(sprDeskIdleTrans);
sprite_restore(sprDeskIdleWait);
sprite_restore(sprDeskIdleTurn);
sprite_restore(sprLastSit);

if global.loaded {
	// remove the mod from Custom Options
	call(scr.option_remove_mod, mod_current_type, mod_current);
}

with(SnowFlake){
	sprite_index = sprSnowFlake;
}

// save in cleanup, just in case
CustomOptions_save();

#macro scr global.scr
#macro call script_ref_call

#macro mod_current_type global.mod_current_type

#define ExternalOptions_load
	var _options = global.options;
    	
     // Main:
	mod_variable_set("mod", "wnw", "deflect_colour", 						_options.deflect_colour);
	mod_variable_set("mod", "wnw", "fix_venus_car", 						_options.fix_venus_car);
	mod_variable_set("mod", "wnw", "bonus_loop_max_health", 				_options.bonus_loop_max_health);
	mod_variable_set("mod", "wnw", "last_enemies_display", 					_options.last_enemies_display);
	mod_variable_set("mod", "wnw", "popups", 								_options.popups);
	mod_variable_set("mod", "wnw", "no_jocks", 								_options.no_jocks);
	mod_variable_set("mod", "wnw", "rmb", 									_options.rmb);
	mod_variable_set("mod", "wnw", "hammerhead_time", 						_options.hammerhead_time);
	mod_variable_set("mod", "wnw", "nes", 									_options.nes);
	mod_variable_set("mod", "wnw", "no_guards", 							_options.no_guards);
	mod_variable_set("mod", "wnw", "hamamount", 							_options.hamamount);
	mod_variable_set("mod", "wnw", "lootable_cars", 						_options.lootable_cars);
	mod_variable_set("mod", "wnw", "chicken_reminder", 						_options.chicken_reminder);
	mod_variable_set("mod", "wnw", "protochest_convert", 					_options.protochest_convert);

	mod_variable_set("mod", "wnw", "no_throne_yell", 						_options.no_throne_yell);
	mod_variable_set("mod", "wnw", "no_new_tips", 							_options.no_new_tips);
	mod_variable_set("mod", "wnw", "no_new_parcticles", 					_options.no_new_parcticles);

	mod_variable_set("mod", "wnw", "fire_explosions", 						_options.fire_explosions);
	mod_variable_set("mod", "wnw", "cursed_caves_rework", 					_options.cursed_caves_rework);
	mod_variable_set("mod", "wnw", "piov", 									_options.piov);
	mod_variable_set("mod", "wnw", "new_weptiers", 							_options.new_weptiers);
	mod_variable_set("mod", "wnw", "chest_replacments", 					_options.chest_replacments);
	mod_variable_set("mod", "wnw", "common_difficulty_multiplier", 			_options.common_difficulty_multiplier);
	mod_variable_set("mod", "wnw", "esp_difficulty_multiplier", 			_options.esp_difficulty_multiplier);

	mod_variable_set("mod", "wnw", "more_ravens_in_jungle", 				_options.more_ravens_in_jungle);
	mod_variable_set("mod", "wnw", "diropf", 								_options.diropf);
	mod_variable_set("mod", "wnw", "add_dark", 								_options.add_dark);
	mod_variable_set("mod", "wnw", "cursing_enabled", 						_options.cursing_enabled);
	mod_variable_set("mod", "wnw", "crown_guardian_help", 					_options.crown_guardian_help);
	mod_variable_set("mod", "wnw", "crown_guardian_on_max", 				_options.crown_guardian_on_max);
	mod_variable_set("mod", "wnw", "enemies_mutations", 					_options.enemies_mutations);

	mod_variable_set("mod", "wnw", "l5cap", 								_options.l5cap);
	mod_variable_set("mod", "wnw", "hardmodemod_3dvans", 					_options.hardmodemod_3dvans);
	mod_variable_set("mod", "wnw", "death_effects", 						_options.death_effects);
	mod_variable_set("mod", "wnw", "idpd_mashup", 							_options.idpd_mashup);
	mod_variable_set("mod", "wnw", "idpd_seek", 							_options.idpd_seek);
	mod_variable_set("mod", "wnw", "wild_idpd", 							_options.wild_idpd);

#define CustomOptions_init
// a script that runs when Custom Options loads, if this mod exists first

#define CustomOptions_load

	if (fork()){
    	var _path = CONFIG_FILE;
    	
    	file_load(_path);
    	
    	while (!file_loaded(_path)){
    		wait(0);
    	}
    	
    	if (file_exists(_path)){
    		var _options = json_decode(string_load(_path));
    		
    		if (_options == json_error){
    			trace(json_error_text);
    			exit;
    		}
    		
    		var option_count = lq_size(global.options);
    		
    		var _obj = {};
    		
    		for (var i = 0; option_count > i; i ++){
    			var _key = lq_get_key(global.options, i);
    			lq_set(_obj, _key, lq_defget(_options, _key, lq_get(global.options, _key)));
    		}
    		
    		global.options = _obj;
    	}
    	
    	else{
    		CustomOptions_save();
    	}
    	
    	file_unload(_path);
    	
    	global.loaded = true;
    	
    	exit;
    }

	ExternalOptions_load();

#define CustomOptions_open
// a script that runs when a user selects your mod through Custom Options' GUI
// you can load your options file here or in `#define init`
/*if (fork()) {
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
}*/
//trace(`${mod_current}.${mod_current_type}::CustomOptions_open`);

#define CustomOptions_save
// a script that runs when Custom Options detects the menu closing
// you can save your options file here or in `#define cleanup`

string_save(json_encode(global.options, chr(9)), CONFIG_FILE);

ExternalOptions_load();
//string_save(json_encode(global.options, "  "), global.OPTIONS_FILE);
//trace(`${mod_current}.${mod_current_type}::CustomOptions_save`);
	#macro call                             script_ref_call
	#macro CONFIG_FILE                      mod_current + " config.json"
	#macro screen_center_x					(game_width / 2)
	#macro screen_center_y 					(game_height / 2)
	#macro screen_x 						view_xview_nonsync + (game_width / 2)
	#macro screen_y 						view_yview_nonsync + (game_height / 2)

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
	//fx
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
	//fx
    x = next_floor.x + 16;
    y = next_floor.y + 16;
	sound_play(global.sndGatorTeleport);
	
	//fx
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
	//fx

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
	sprite_index = spr_hurt;
	if(image_index > 0){
		image_index = 0;
	}
}
else{
	sprite_index = spr_idle;
}

#define enter_to_oasis_hurt (damage)

nexthurt = current_frame + 6;
sound_play(sndOasisHurt);
my_health -= damage;

//sprite_index = spr_hurt;
//image_index = 0;

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
global.enemies_count = 0;

if(global.options.fix_venus_car == true){
	with(CarVenusFixed){
		instance_destroy();
	}
}

if(global.options.popups == true){
	if(instance_exists(Player)){
		if(GameCont.area == 3 && GameCont.subarea == 1 && global.popup_shown._oasis == false){
			with instance_create(Player.x,Player.y,PopupText) text = "@yCHECK OUT SPAWN"
			global.popup_shown._oasis = true;
		}
	}
	
	if(instance_exists(Player)){
		if(GameCont.area == 5 && GameCont.subarea == 1 && global.popup_shown._jungle == false){
			with instance_create(Player.x,Player.y,PopupText) text = "@yCHECK OUT SPAWN"
			global.popup_shown._jungle = true;
		}
	}
}

//death effects	
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
		image_blend = c_red;
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
		team = 3;
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
//death effects

#define suffered_player

with(WepPickup){
	if(global.remind_weps[0] == 0){
		switch (wep){
			case 67:
				array_set(global.remind_weps, 0, wep);
				trace(global.remind_weps[0]);
				break;
			case 107:
				array_set(global.remind_weps, 0, wep);
				trace(global.remind_weps[0]);
				break;
			case 29:
				array_set(global.remind_weps, 0, wep);
				trace(global.remind_weps[0]);
				break;
			case 31:
				array_set(global.remind_weps, 0, wep);
				trace(global.remind_weps[0]);
				break;
			case 72:
				array_set(global.remind_weps, 0, wep);
				trace(global.remind_weps[0]);
				break;
			default:
				break;				
		}
	}
	else{
		if(wep == global.remind_weps[0]){
			switch (wep){
				case 67:
					with instance_create(Player.x,Player.y,PopupText) text = "@q@rBLOOD HAMMER!!!@s";
					sound_play(sndBloodHammer);
					global.is_player_notified = true;
					break;
				case 107:
					with instance_create(Player.x,Player.y,PopupText) text = "@q@rBLOOD WEAPON!!!@s";
					sound_play(sndBloodLauncher);
					global.is_player_notified = true;
					break;
				case 29:
					with instance_create(Player.x,Player.y,PopupText) text = "@q@rBLOOD WEAPON!!!@s";
					sound_play(sndBloodLauncher);
					global.is_player_notified = true;
					break;
				case 31:
					with instance_create(Player.x,Player.y,PopupText) text = "@q@gTOXIC WEAPON!!!@s";
					sound_play(sndToxicBoltGas);
					global.is_player_notified = true;
					break;
				case 72:
					with instance_create(Player.x,Player.y,PopupText) text = "@q@gTOXIC WEAPON!!!@s";
					sound_play(sndToxicBoltGas);
					global.is_player_notified = true;
					break;
				default:
					break;
			}
		}
	}
	/*for (i=0; i < array_length(global.remind_weps); i++) {
		if(wep == global.remind_weps[i]){
			switch (wep){
				case 67:
					with instance_create(Player.x,Player.y,PopupText) text = "@q@rBLOOD HAMMER!!!@s";
					sound_play(sndBloodHammer);
					global.is_player_notified = true;
					break;
				case 107:
					with instance_create(Player.x,Player.y,PopupText) text = "@q@rBLOOD WEAPON!!!@s";
					sound_play(sndBloodLauncher);
					global.is_player_notified = true;
					break;
				case 29:
					with instance_create(Player.x,Player.y,PopupText) text = "@q@rBLOOD WEAPON!!!@s";
					sound_play(sndBloodLauncher);
					global.is_player_notified = true;
					break;
				case 31:
					with instance_create(Player.x,Player.y,PopupText) text = "@q@gTOXIC WEAPON!!!@s";
					sound_play(sndToxicBoltGas);
					global.is_player_notified = true;
					break;
				case 72:
					with instance_create(Player.x,Player.y,PopupText) text = "@q@gTOXIC WEAPON!!!@s";
					sound_play(sndToxicBoltGas);
					global.is_player_notified = true;
					break;
				default:
					break;
			}
		}
	}*/
	/*for (i=0; i < array_length(global.remind_weps); i++) {
		if(global.remind_weps[i] == 67){
			if(wep == global.remind_weps[i]){
				with instance_create(Player.x,Player.y,PopupText) text = "@q@rBLOOD HAMMER!!!@s";
				sound_play(sndBloodHammer);
				global.is_player_notified = true;
			}
		}
		if(global.remind_weps[i] == 107 || global.remind_weps[i] == 29){
			if(wep == global.remind_weps[i]){
				with instance_create(Player.x,Player.y,PopupText) text = "@q@rBLOOD WEAPON!!!@s";
				sound_play(sndBloodLauncher);
				global.is_player_notified = true;
			}
		}
		if(global.remind_weps[i] == 31 || global.remind_weps[i] == 72){
			if(wep == global.remind_weps[i]){
				with instance_create(Player.x,Player.y,PopupText) text = "@q@gTOXIC WEAPON!!!@s";
				sound_play(sndToxicBoltGas);
				global.is_player_notified = true;
			}
		}
    }*/
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

global.is_player_notified = false;

array_set(global.remind_weps, 0, 0);

with (instance_create(10016,10016,FloorMiddle)){
	//wall bonus spawn block
	image_alpha = 0;
}

if(game_version > 9944){
	with(BackCont){
		if(global.last_vault == true && global.options.no_new_parcticles == true && it_is_vault != true){
			it_is_vault = true;
		}
		else{
			it_is_vault = false;
		}
	}
}

with(WeaponChest){
	if(global.options.chest_replacments == true && GameCont.area == 102){
		with(instance_create(x,y,WepPickup)){
			//party gun
			wep = 82;
		}
		instance_delete(self);
	}
}

if(global.options.protochest_convert == true){
	with(ProtoChest){
		switch (wep){
			//machine gun
			case 4:
				wep = 41;
				break;
			//screwdriver
			case 27:
				wep = 101;
				break;
			//crossbow
			case 6:
				wep = 43;
				break;
			//grenade launcher
			case 7:
				wep = 44;
				break;
			//shotgun
			case 5:
				wep = 42;
				break;
			//splinter gun
			case 30:
				wep = 100;
				break;
			//nuke launcher
			case 47:
				wep = 122;
				break;
			//disc gun
			case 18:
				wep = 123;
				break;
			//slugger
			case 21:
				wep = 99;
				break;
			//bazooka
			case 14:
				wep = 102;
				break;
			//wrench
			case 3:
				wep = 40;
				break;
			//laser pistol
			case 19:
				wep = 45;
				break;
			//plasma gun
			case 34:
				wep = 98;
				break;
			//assault rifle
			case 17:
				wep = 103;
				break;
			//revoulver
			case 1:
				wep = 39;
				break;
			//smartgun into sentry gun
			case 65:
				wep = 32;
				break;
			//laser cannon into ion cannon
			case 55:
				wep = 48;
				break;
			//chikcen sword becomes black
			case 46:
				wep = 121;
				break;
			//party gun
			case 82:
				wep = irandom(126) + 1;
				break;
			default:
				break;
		}
	}
}

with(Player){
	if(global.options.no_throne_yell == false && GameCont.area == 7 && GameCont.subarea == 3 && global.no_addinational_yell == false){
		sound_play(snd_thrn);
		global.no_addinational_yell = true;
	}
}

//fix of cursed 3-3 chest
if(global.temp_skippedchests > 0){
GameCont.nochest = global.temp_skippedchests;
}
if(GameCont.nochest > 0){
	global.temp_skippedchests = 0;
}
//fix of cursed 3-3 chest

global.aowb = 2 + (GameCont.hard / 2);


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

if(GameCont.loops == 1 && global.eem > 0){
	if(GameCont.area == 1 || GameCont.area == 7){
		with(Sniper) instance_delete(self);
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

//i forgot what supposed to happen here
if(global.cap_spawned == true && global.cap_dead == false){
}
//i forgot what supposed to happen here

if(GameCont.vaults > 2 && (GameCont.area == 105 || GameCont.area == 103 || GameCont.area == 101)){
	global.amount_of_crown_guardians += 2;
	}
else{
	for (i=0; i < array_length(global.crown_guardian_locations); i++) { 
        if(global.crown_guardian_locations[i] == GameCont.area)
                global.amount_of_crown_guardians += 2;
    }
}

if(global.options.hammerhead_time == 2 && GameCont.loops > 0){
	Player.hammerhead = 20 * GameCont.loops;
	}

if(irandom(1) == 1){
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
	restoring_sprites();
	}

with(Player){
	if((irandom(my_health) + 1) <= 2 && GameCont.area == 106 && GameCont.subarea == 1){
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
	if(GameCont.area == 7){
		replacing_sprites();
		background_color = make_color_rgb(45, 22, 56);
	}
}
else{
	restoring_sprites();
}

if(GameCont.area == 106 && GameCont.subarea == 2 && global.options.add_dark == true){
	sound_play_music(mus106b);
	}

if (instance_exists(CarVenus) && global.options.fix_venus_car){
	 with(CarVenus){
        with instance_create(x,y,CarVenusFixed){
			my_health = 1000000000;
		}
        for (i=0; i < array_length(global.CarVenus_Guards); i++) { 
            instance_create(x,y,global.CarVenus_Guards[i]);
        }
		instance_delete(self);
    }
}

add_more_enemies();

// Считаем сколько врагов на локации
global.enemies_on_start = 0;

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

if((GameCont.area == 1 || GameCont.area == 2 || GameCont.area == 3 || GameCont.area == 4 || GameCont.area == 5 || GameCont.area == 7 || GameCont.area == 101 || GameCont.area == 102 || GameCont.area == 103 || GameCont.area == 104 || GameCont.area == 105) && global.options.wild_idpd == true){
		if(random(300) < ((GameCont.hard * global.eem)+1)){
			if(GameCont.loops < 1){
				if(global.options.nes == true && GameCont.hard < 10){
					var random_idpd = choose(Grunt,Grunt,Grunt,Inspector,Inspector);
				}
				else{
					var random_idpd = choose(Grunt,Grunt,Grunt,Inspector,Shielder);
				}
				with instance_create(x,y,random_idpd){
					switch (random_idpd){
						case Grunt:
							spr_idle = global.sprGruntRadIdle;
							spr_walk = global.sprGruntRadWalk;
							spr_hurt = global.sprGruntRadHurt;
							spr_dead = global.sprGruntRadDead;
							hitid = global.RadGruntHitid;
							break;
						case Inspector:
							spr_idle = global.sprInspectorRadIdle;
							spr_walk = global.sprInspectorRadWalk;
							spr_hurt = global.sprInspectorRadHurt;
							spr_dead = global.sprInspectorRadDead;
							hitid = global.RadInspectorHitid;
							break;
						case Shielder:
							spr_idle = global.sprShielderRadIdle;
							spr_walk = global.sprShielderRadWalk;
							spr_hurt = global.sprShielderRadHurt;
							spr_dead = global.sprShielderRadDead;
							hitid = global.RadShielderHitid;
							break;
						default:
							image_blend = make_color_hsv(100,150,255);
							break;
					}
					raddrop = irandom(24) + 1;
					team = 1;
					//image_blend = make_color_hsv(100,150,255);
					my_health = irandom(maxhealth) + 1;
					RadHolder = 0;
				}
				instance_create(x,y,PortalClear);
			}
			else{
				var random_idpd = choose(Grunt,Grunt,Grunt,Inspector,Shielder,EliteGrunt,EliteInspector,EliteShielder);
				with instance_create(x,y,random_idpd){
					switch (random_idpd){
						case EliteGrunt:
							spr_idle = global.sprEliteGruntRadIdle;
							spr_walk = global.sprEliteGruntRadWalk;
							spr_hurt = global.sprEliteGruntRadHurt;
							spr_dead = global.sprEliteGruntRadDead;
							hitid = global.RadEliteGruntHitid;
							break;
						case EliteInspector:
							spr_idle = global.sprEliteInspectorRadIdle;
							spr_walk = global.sprEliteInspectorRadWalk;
							spr_hurt = global.sprEliteInspectorRadHurt;
							spr_dead = global.sprEliteInspectorRadDead;
							hitid = global.RadEliteInspectorHitid;
							break;
						case EliteShielder:
							spr_idle = global.sprEliteShielderRadIdle;
							spr_walk = global.sprEliteShielderRadWalk;
							spr_hurt = global.sprEliteShielderRadHurt;
							spr_dead = global.sprEliteShielderRadDead;
							hitid = global.RadEliteShielderHitid;
							break;
						case Grunt:
							spr_idle = global.sprGruntRadIdle;
							spr_walk = global.sprGruntRadWalk;
							spr_hurt = global.sprGruntRadHurt;
							spr_dead = global.sprGruntRadDead;
							hitid = global.RadGruntHitid;
							break;
						case Inspector:
							spr_idle = global.sprInspectorRadIdle;
							spr_walk = global.sprInspectorRadWalk;
							spr_hurt = global.sprInspectorRadHurt;
							spr_dead = global.sprInspectorRadDead;
							hitid = global.RadInspectorHitid;
							break;
						case Shielder:
							spr_idle = global.sprShielderRadIdle;
							spr_walk = global.sprShielderRadWalk;
							spr_hurt = global.sprShielderRadHurt;
							spr_dead = global.sprShielderRadDead;
							hitid = global.RadShielderHitid;
							break;
						default:
							image_blend = make_color_hsv(100,150,255);
							break;
					}
					if(global.options.idpd_mashup == false){
						raddrop = irandom(24) + 1 + (GameCont.loops * 8);
					}
					else{
						raddrop = irandom(24) + 1 + (GameCont.loops * 6);
					}
					team = 1;
					//image_blend = make_color_hsv(100,150,255);
					my_health = irandom(maxhealth) + 1;
					RadHolder = 0;
				}
				instance_create(x,y,PortalClear);
			}
		}
	}
	
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

if (global.eem <= 0){ 
	var curr_loop = clamp(GameCont.loops,0,array_length(global.empty_pool) - 1);
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
	draw_circle(x, y, 40+random(3), false)
	}
	
with SmallGenerator{
	draw_circle(x, y, 60+random(3), false)
	}
	
if (instance_exists(Nothing)){
with Generator{
	draw_circle(x+(11*image_xscale), y+7, 120+random(3), false)
	}
}

with Guardian{
	draw_circle(x, y, 60+random(3), false)
	}

with ExploGuardian{
	draw_circle(x, y, 60+random(3), false)
	}
	
with DogGuardian{
	draw_circle(x, y, 100+random(3), false)
	}
	
with EnemyHorror{
	draw_circle(x, y, 60+random(3), false)
	}
	
with GuardianBullet{
	draw_circle(x, y, 40+random(3), false)
	}
	
with BigGuardianBullet{
	draw_circle(x, y, 100+random(3), false)
	}	
	
with(NothingBeam){
    draw_rectangle(creator.x-32,creator.y+64,x+32,y+32,false);
    draw_circle(creator.x+16,creator.y+64,24,false);
	}
	
with Nothing{
	draw_circle(x, y, 200+random(3), false)
	}

with Van{
	if(drive == 1) 	draw_circle(x, y, 75+random(3), false)
	}

with BlueFlame{
	draw_circle(x, y, 30+random(3), false)
	}	
	
with Campfire{
	draw_circle(x, y, 60+random(3), false)
	}
	
with CaveSparkle{
	draw_circle(x, y, 10+random(3), false)
	}
	
with EliteGruntFlame{
	draw_circle(x, y, 10+random(3), false)
	}
	
with EnemyLaser{
	draw_circle(x, y, 10+random(3), false)
	}
	
with EnemyLightning{
	draw_circle(x, y, 10+random(3), false)
	}	
	
with EnergyHammerSlash{
	draw_circle(x + 30, y, 100+random(3), false)
	}

with EnergyShank{
	draw_circle(x + 10, y, 40+random(3), false)
	}
	
with EnergySlash{
	draw_circle(x + 30, y, 80+random(3), false)
	}

with FireBall{
	draw_circle(x, y, 40+random(3), false)
	}

with FireFly{
	draw_circle(x, y, 2+random(3), false)
	}
	
with FlameShell{
	draw_circle(x, y, 30+random(3), false)
	}
	
with GammaBlast{
	draw_circle(x, y, 40+random(3), false)
	}

with GroundFlame{
	draw_circle(x, y, 10+random(3), false)
	}
	
with GunGun{
	draw_circle(x, y, 20+random(3), false)
	}
	
with IDPDBullet{
	draw_circle(x, y, 20+random(3), false)
	}
	
with IDPDPortalCharge{
	draw_circle(x, y, 10+random(3), false)
	}

with Laser{
	draw_circle(x, y, 10+random(3), false)
	}

with LaserCannon{
	draw_circle(x, y, 40+random(3), false)
	}

with LaserCharge{
	draw_circle(x, y, 10+random(3), false)
	}
	
with Lightning{
	draw_circle(x, y, 10+random(3), false)
	}

with LightningBall{
	draw_circle(x, y, 50+random(3), false)
	}
	
with LightningSlash{
	draw_circle(x + 30, y, 60+random(3), false)
	}
	
with LightningHit{
	draw_circle(x, y, 10+random(3), false)
	}
	
with LightningSpawn{
	draw_circle(x, y, 10+random(3), false)
	}
	
with NecroReviveArea{
	draw_circle(x, y, 30+random(3), false)
	}

with PlasmaBall{
	draw_circle(x, y, 40+random(3), false)
	}

with PlasmaBig{
	draw_circle(x, y, 80+random(3), false)
	}
	
with PlasmaHuge{
	draw_circle(x, y, 120+random(3), false)
	}
	
with PlasmaImpact{
	draw_circle(x, y, 40+random(3), false)
	}
	
with PlasmaTrail{
	draw_circle(x, y, 10+random(3), false)
	}
	
with PopoPlasmaBall{
	draw_circle(x, y, 40+random(3), false)
	}

with PopoRocket{
	draw_circle(x, y, 30+random(3), false)
	}

with PopoSlug{
	draw_circle(x, y, 30+random(3), false)
	}
	
with RadChest{
	draw_circle(x, y, 30+random(3), false)
	}
	
with RevivePopoFreak{
	draw_circle(x, y, 40+random(3), false)
	}
	
with Rocket{
	draw_circle(x, y, 20+random(3), false)
	}
	
with Salamander{
	draw_circle(x, y, 40+random(3), false)
	}

with StreetLight{
	draw_circle(x, y, 30+random(3), false)
	}

if((GameCont.area == 1 || GameCont.area == 3 || GameCont.area == 5) && global.last_vault == false){	
with Player{
	draw_circle(x, y, 200+random(3), false)
	}
}

if(skill_get(19)){	
	with Player{
		draw_circle(x, y, 350+random(3), false)
	}
}

#define draw_dark_end
with Pillar{
	draw_circle(x, y, 20+random(3), false)
	}
	
with SmallGenerator{
	draw_circle(x, y, 30+random(3), false)
	}
	
if (instance_exists(Nothing)){
with Generator{
	draw_circle(x+(11*image_xscale), y+7, 60+random(3), false)
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
	
with(NothingBeam){
    draw_rectangle(creator.x-16,creator.y+32,x+16,y+16,false);
    draw_circle(creator.x,creator.y+32,16,false);
	}
	
with Nothing{
	draw_circle(x, y, 100+random(3), false)
	}

with BlueFlame{
	draw_circle(x, y, 15+random(3), false)
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
	draw_circle(x, y, 1+random(3), false)
	}
	
with FlameShell{
	draw_circle(x, y, 15+random(3), false)
	}
	
with GammaBlast{
	draw_circle(x, y, 20+random(3), false)
	}

with GroundFlame{
	draw_circle(x, y, 5+random(3), false)
	}
	
with GunGun{
	draw_circle(x, y, 10+random(3), false)
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
	draw_circle(x, y, 15+random(3), false)
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
	draw_circle(x, y, 10+random(3), false)
	}
	
with Salamander{
	draw_circle(x, y, 20+random(3), false)
	}
	
with StreetLight{
	draw_circle(x, y, 15+random(3), false)
	}

with Van{
	if(drive == 1) 	draw_circle(x, y, 50+random(3), false)
	}

if(skill_get(19) || ((GameCont.area == 1 || GameCont.area == 3 || GameCont.area == 5) && global.last_vault == false)){	
	with Player{
		if(race == "eyes")	draw_circle(x, y, 350+random(3), false);
	}
}
