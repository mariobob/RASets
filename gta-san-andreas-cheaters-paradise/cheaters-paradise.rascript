// =============================================================================
// GTA: San Andreas - Cheaters Paradise Subset
// RetroAchievements RAScript
// =============================================================================
//
// Memory addresses sourced from https://retroachievements.org/codenotes.php?g=2772
// Cheat flags are individual bytes at specific addresses
//
// List of cheat codes from IGN: https://www.ign.com/wikis/grand-theft-auto-san-andreas/Cheat_Codes_and_Secrets
// Full info on cheat codes from GTA Fandom: https://gta.fandom.com/wiki/Cheats_in_GTA_San_Andreas
//
// =============================================================================

// #ID = 2772
// GTA: San Andreas on RetroAchievements
// Note: The #ID comment tells RATools which game ID to use for output files

// =============================================================================
// CHEAT ACTIVATION FLAGS
// =============================================================================
// Each cheat has its own address, value 0x01 when active
// These are PERSISTENT flags that stay on until game reload (for most)

// Time/clock cheats
CHEAT_FASTER_CLOCK       = 0x88d70b  // Time goes by faster

// Pedestrian cheats (some cannot be turned off)
CHEAT_PED_RIOT           = 0x88d70e  // Pedestrians riot (CANNOT TURN OFF)
CHEAT_PEDS_ATTACK        = 0x88d70f  // Pedestrians attack you (CANNOT TURN OFF)
CHEAT_PEDS_WEAPONS       = 0x88d710  // Pedestrians wield weapons
CHEAT_ALL_ELVIS          = 0x88d727  // All pedestrians are Elvis
CHEAT_PEDS_ATTACK_GUNS   = 0x88d728  // Pedestrians attack you with guns
CHEAT_BEACH_PARTY        = 0x88d729  // Beach party mode (bikinis, beach cars)
CHEAT_GANG_MODE          = 0x88d72a  // Gang members spawn faster
CHEAT_GANG_CONTROL       = 0x88d72b  // All peds become brawling gang members
CHEAT_TRIAD_THEME        = 0x88d72c  // Asians with katanas, black vehicles
CHEAT_KINKY_THEME        = 0x88d72d  // Attract prostitutes with sex toys/gimp suit

// Vehicle cheats
CHEAT_INVISIBLE_CARS     = 0x88d71b  // All vehicles invisible (except motorcycles)
CHEAT_PERFECT_HANDLING   = 0x88d71c  // Improved car handling
CHEAT_GREEN_LIGHTS       = 0x88d71e  // All traffic lights are green
CHEAT_AGGRESSIVE_TRAFFIC = 0x88d71f  // Aggressive Drivers
CHEAT_PINK_CARS          = 0x88d720  // All vehicles become pink
CHEAT_BLACK_CARS         = 0x88d721  // All vehicles become black
CHEAT_DRIVE_ON_WATER     = 0x88d722  // Cars can drive on water
CHEAT_FLYING_BOATS       = 0x88d723  // Flying Boats
CHEAT_JUNK_CARS          = 0x88d72e  // All traffic is junk cars
CHEAT_FAST_CARS          = 0x88d72f  // Improved car speed
CHEAT_FLYING_CARS        = 0x88d730  // Flying Cars
CHEAT_SUPER_BUNNY_HOP    = 0x88d731  // Jump ~100 feet on a bicycle
CHEAT_CARS_EXPLODE_BUMP  = 0x88d734  // Bumping into a car makes it explode
CHEAT_ALL_NITRO          = 0x88d735  // All cars have nitro
CHEAT_MOON_GRAVITY       = 0x88d736  // Bumping cars makes them float away

// Time/weather cheats
CHEAT_ALWAYS_MIDNIGHT    = 0x88d737  // Always midnight (clock is 00:00)
CHEAT_ALWAYS_2100        = 0x88d738  // Dusk/Evening (21:00)
// Note: Weather cheats (foggy, stormy, sunny, sandstorm) are different addresses

// Player ability cheats
CHEAT_MEGA_JUMP          = 0x88d73c  // Jump ~10 times higher
CHEAT_INFINITE_HEALTH    = 0x88d73d  // Infinite health (lose from explosions, drowning, falling)
CHEAT_INFINITE_LUNG      = 0x88d73e  // Infinite lung capacity
CHEAT_WANTED_LOCK        = 0x88d741  // Locks wanted level at current level
CHEAT_SUPER_PUNCH        = 0x88d743  // Super-powerful punches
CHEAT_NEVER_HUNGRY       = 0x88d744  // Never become hungry
CHEAT_CHAOS_MODE         = 0x88d745  // Enable Chaos Mode
CHEAT_FUNHOUSE           = 0x88d746  // Fast food workers/clowns theme
CHEAT_SLOW_MOTION        = 0x88d747  // Adrenaline pill effect (slow motion)
CHEAT_INFINITE_AMMO      = 0x88d748  // Infinite ammunition
CHEAT_FREE_AIM           = 0x88d749  // Full weapon aiming while driving
CHEAT_REDUCED_TRAFFIC    = 0x88d74a  // Most pedestrians and traffic vanish
CHEAT_RURAL_THEME        = 0x88d74b  // Traffic is country vehicles
CHEAT_RECRUIT_PISTOL     = 0x88d74c  // All wield 9mm pistols and are recruitable
CHEAT_RECRUIT_ROCKET     = 0x88d74e  // All wield Rocket Launchers and are recruitable
CHEAT_MAX_RESPECT        = 0x88d74f  // Maximum Respect
CHEAT_MAX_SEX_APPEAL     = 0x88d750  // Maximum Sex Appeal
CHEAT_PROSTITUTES_PAY    = 0x88d75a  // Prostitutes pay you
CHEAT_TAXI_NITRO         = 0x88d75b  // All taxis have nitro and jump

// TODO: These are documented effects but flag addresses need verification. After verification, sort them out to appropriate sections.
CHEAT_ADRENALINE         = 0x88d747  // Same as slow motion? (TAKEACHILLPILL) - verify
CHEAT_INVINCIBLE_CAR     = 0x88d733  // Carl's car invincible (TOUCHMYCARYOUDIE) - needs verification
CHEAT_GANG_WARS          = 0x88d72b  // Gang wars break out (ONLYHOMIESALLOWED) - may overlap GANG_CONTROL
CHEAT_GANGS_ONLY         = 0x88d72b  // No citizens, gang gunfights (BETTERSTAYINDOORS) - needs verification
CHEAT_PEDS_ATTACK_MELEE  = 0x88d70f  // Peds attack with melee (may be same as PEDS_ATTACK)

// Cheat input buffer (for detecting cheat entry)
CHEAT_INPUT_BUFFER       = 0x88d760  // [12 bytes] Last 12 button presses for cheat detection

// =============================================================================
// VEHICLE IDS
// =============================================================================

// Bicycles
VEHICLE_BMX              = 0x1e1   // BMX (481)
VEHICLE_BIKE             = 0x1fd   // Bike (509)
VEHICLE_MOUNTAIN_BIKE    = 0x1fe   // Mountain Bike (510)

// Cheat-spawned vehicles
VEHICLE_RHINO            = 0x1b0   // Rhino Tank (432)
VEHICLE_HUNTER           = 0x1a9   // Hunter (425)
VEHICLE_HYDRA            = 0x208   // Hydra (520)
VEHICLE_MONSTER          = 0x1bc   // Monster Truck (444)
VEHICLE_STUNTPLANE       = 0x201   // Stuntplane (513)
VEHICLE_BLOODRING        = 0x1f8   // Bloodring Banger (504)
VEHICLE_HOTRING          = 0x1ee   // Hotring Racer (494)
VEHICLE_VORTEX           = 0x21b   // Vortex Hovercraft (539)
VEHICLE_ROMERO           = 0x1ba   // Romero (442)
VEHICLE_STRETCH          = 0x199   // Stretch (409)
VEHICLE_TRASHMASTER      = 0x198   // Trashmaster (408)
VEHICLE_CADDY            = 0x1c9   // Caddy (457)
VEHICLE_QUAD             = 0x1d7   // Quadbike (471)
VEHICLE_TANKER           = 0x202   // Tanker (514)
VEHICLE_DOZER            = 0x1e6   // Dozer (486)
VEHICLE_RANCHER          = 0x1e9   // Rancher (489)

// =============================================================================
// WEAPON IDS
// =============================================================================

WEAPON_KATANA            = 0x153   // Katana (339) - slot 2
WEAPON_CHAINSAW          = 0x155   // Chainsaw (341) - slot 2
WEAPON_MINIGUN           = 0x16a   // Minigun (362) - slot 7

// =============================================================================
// PLAYER STATS & STATE
// =============================================================================

// Money
PlayerMoney              = 0x7096b4  // [32-bit] Cash (static)

// Wanted level
PlayerWantedLevel        = 0x66bc80  // [8-bit] Wanted level (static, may need 0x19eb73c for stars on screen)
PlayerWantedStars        = 0x19eb73c // [32-bit] Stars displayed on screen

// Kill stats
KillsByOthers            = 0x8022b0  // [32-bit] People wasted by others
KillsByPlayer            = 0x8022b4  // [32-bit] People wasted by CJ

// Cumulative stats
VehiclesDestroyed        = 0x8022b8  // [32-bit] Road vehicles destroyed
PropertyDamage           = 0x8022c4  // [32-bit] Cost of property damaged
Headshots                = 0x8022d8  // [32-bit] Number of headshots
StarsEvaded              = 0x8022e0  // [32-bit] Total wanted stars evaded
JetpackTime              = 0x802384  // [32-bit] Time on jetpack (in milliseconds)
TimeUnderwater           = 0x80225c  // [Float] Time spent underwater

// Cheat counter
TimesCheated             = 0x8022f4  // [32-bit] Times cheated stat

// Weapon state
CurrentWeaponSlot        = 0x7095f4  // [8-bit] Current weapon slot
BulletsInRound           = 0xdf09e0  // [32-bit] Bullets left in current round
BulletsFired             = 0x8022c8  // [32-bit] Bullets fired total

// Game state
InActiveMission          = 0x6b2654  // [32-bit] 0x01 when in active mission
PauseFlag                = 0x6ffab0  // [8-bit] Pause flag
EatingCounter            = 0x6b2a78  // Eating counter before throwing up

// Clock
ClockHours               = 0x66b7ac  // Clock - Hours
ClockMinutes             = 0x66b7b0  // Clock - Minutes
ClockMilliseconds        = 0x66b7b4  // Clock - Milliseconds
CurrentDay               = 0x66b7b8  // Current day (0x4=Wednesday)

// Moon
MoonSize                 = 0x666c4c  // [32-bit] Size of the moon (0 to 7)

// Player pointer (for dynamic data like health, position)
PlayerPointer            = 0x7095d0  // [32-bit] Pointer to player pedestrian data
                                     // +0x580 = [32-bit] HP
                                     // +0x588 = [32-bit] Armor
                                     // +0x568 = [8-bit] Player state (0x37 = Wasted)
                                     // +0x14 -> +0x30 = X, +0x34 = Y, +0x38 = Z (floats)
                                     // +0x5cc = Pointer to current vehicle

// =============================================================================
// HELPER FUNCTIONS
// =============================================================================

// Cheat flag accessors (each is a separate byte address)
function cheat_active(addr) => byte(addr) == 1
function cheat_just_activated(addr) => prev(byte(addr)) == 0 && byte(addr) == 1
function cheat_just_deactivated(addr) => prev(byte(addr)) == 1 && byte(addr) == 0

// Player stats (using pointer)
function player_health() => dword(dword(PlayerPointer) + 0x580)
function player_armor() => dword(dword(PlayerPointer) + 0x588)
function player_state() => byte(dword(PlayerPointer) + 0x568)
function player_wasted() => player_state() == 0x37

// Player position (requires double dereference: PlayerPointer -> +0x14 -> position)
// NOTE: Z coordinate is ABSOLUTE world position, not height above ground! z = 0 = sea level
function player_pos_ptr() => dword(dword(PlayerPointer) + 0x14)
function player_pos_x() => float(player_pos_ptr() + 0x30)
function player_pos_y() => float(player_pos_ptr() + 0x34)
function player_pos_z() => float(player_pos_ptr() + 0x38)

// Height above ground - for "flying" or "in air" detection
// TODO: Currently uses absolute Z which can false trigger on mountains/hills.
//       Needs replacing with actual height-above-ground criteria.
function player_above_ground() => player_pos_z()

// Current vehicle (0 = on foot)
function current_vehicle_ptr() => dword(dword(PlayerPointer) + 0x5cc)
function in_vehicle() => current_vehicle_ptr() != 0
function on_foot() => current_vehicle_ptr() == 0
function just_entered_vehicle() => prev(current_vehicle_ptr()) == 0 && current_vehicle_ptr() != 0

// Bicycle detection
function on_bicycle() => current_vehicle_id() == VEHICLE_BMX ||
                         current_vehicle_id() == VEHICLE_BIKE ||
                         current_vehicle_id() == VEHICLE_MOUNTAIN_BIKE

// Vehicle model ID (16-bit value at vehicle_ptr + 0x22)
function current_vehicle_id() => word(current_vehicle_ptr() + 0x22)

// Jetpack time (in milliseconds, increases while using jetpack)
function jetpack_time_ms() => dword(JetpackTime)
function jetpack_time_increased() => prev(jetpack_time_ms()) < jetpack_time_ms()

// Weapon info
function current_weapon_slot() => byte(CurrentWeaponSlot)
function bullets_in_clip() => dword(BulletsInRound)
function bullets_fired() => dword(BulletsFired)
function bullet_fired() => prev(bullets_fired()) < bullets_fired()

// Weapon structure: PlayerPointer + 0x5e0 + (slot * 28) + 0 = Weapon ID
// Slot 2 (heavy melee): offset = 2 * 28 = 0x38 -> PlayerPointer + 0x618
// Slot 7 (heavy weapons): offset = 7 * 28 = 0xC4 -> PlayerPointer + 0x6A4
function weapon_in_slot_2() => word(dword(PlayerPointer) + 0x618)
function weapon_in_slot_7() => word(dword(PlayerPointer) + 0x6A4)
function using_katana() => current_weapon_slot() == 2 && weapon_in_slot_2() == WEAPON_KATANA
function using_chainsaw() => current_weapon_slot() == 2 && weapon_in_slot_2() == WEAPON_CHAINSAW
function using_minigun() => current_weapon_slot() == 7 && weapon_in_slot_7() == WEAPON_MINIGUN

// Money
function player_money() => dword(PlayerMoney)

// Wanted level
function player_wanted() => dword(PlayerWantedStars)

// Kill count
function kill_count() => dword(KillsByPlayer)
function kill_increased() => prev(kill_count()) < kill_count()

// Times cheated
function times_cheated() => dword(TimesCheated)
function cheat_used() => prev(times_cheated()) < times_cheated()

// HESOYAM detection (gives $250,000, full health and armor)
// NOTE: Unlike toggle cheats (Infinite Health, Flying Cars), we cannot use cheat_just_activated().
// This function detects either:
//   1. Money increased by exactly $250,000 (HESOYAM signature)
//   2. At max cash ($999,999,999) AND health increased AND a cheat was used
// TODO: Limitation: fails if player is at max cash AND full health AND full armor.
function hesoyam_used() => (prev(player_money()) + 250000 == player_money()) ||
                           (player_money() == 999999999 &&
                            prev(player_health()) < player_health() &&
                            cheat_used())

// Mission state
function in_mission() => dword(InActiveMission) == 1
function is_paused() => byte(PauseFlag) == 1
function not_paused() => byte(PauseFlag) == 0

// Eating - counter resets to 0 when player vomits
function eating_counter() => dword(EatingCounter)
function player_vomited() => prev(eating_counter()) > 0 && eating_counter() == 0

// Game clock
function game_hour() => byte(ClockHours)
function game_minute() => byte(ClockMinutes)

// Frame timing (assuming 60fps for NTSC, 50fps for PAL)
function seconds_to_frames(s) => s * 60
function minutes_to_frames(m) => m * 60 * 60

// Threshold crossing helpers - triggers exactly once when value crosses threshold
function crossed_threshold(addr, threshold) => prev(dword(addr)) < threshold && dword(addr) >= threshold

// =============================================================================
// ACHIEVEMENTS - PLAYER CHEATS
// =============================================================================

// --- Adrenaline Effects  ---

achievement(
    title = "TAKEACHILLPILL",
    description = "Get 5 kills while Adrenaline/Chill Pill effect is active",
    points = 1,
    trigger = trigger_when(measured(tally(5,
                  kill_increased() &&
                  cheat_active(CHEAT_ADRENALINE)
              )))
)

// --- Health, Armor, and Money ---

achievement(
    title = "HESOYAM",
    description = "Use the Health, Armor, and Money cheat when already maxed out ($999,999,999)",
    points = 5,
    trigger = player_money() == 999999999 &&
              hesoyam_used()
)

achievement(
    title = "Greedy Bastard",
    description = "Use the Health, Armor, and Money cheat 100 times in a single session",
    points = 2,
    trigger = measured(tally(100, hesoyam_used()))
)

// --- Mega Jump ---

achievement(
    title = "KANGAROO",
    description = "Activate Mega Jump and reach a height of 100+ meters",
    points = 1,
    trigger = cheat_active(CHEAT_MEGA_JUMP) &&
              player_above_ground() >= 100.0
)

achievement(
    title = "Leap of Faith",
    description = "Fall from 100+ meters with Mega Jump active and survive",
    points = 1,
    trigger = cheat_active(CHEAT_MEGA_JUMP) &&
              prev(player_above_ground()) >= 100.0 &&
              player_above_ground() < 20.0 &&
              !player_wasted()
)

// --- Commit Suicide ---
// TODO: Add achievements
// - GOODBYECRUELWORLD: Commit suicide using the cheat while on parachute

// --- Hitman Level For All Weapons ---
// TODO: Add achievements
// - PROFESSIONALKILLER: Get a kill with each weapon class after activating Hitman Level

// --- Lock Wanted Level ---

// TODO: Need to check if mission actually completed successfully, otherwise player can fail mission and unlock
achievement(
    title = "AEZAKMI",
    description = "Complete a mission while the Lock Wanted Level cheat is active with 6-star wanted level",
    points = 2,
    trigger = once(cheat_active(CHEAT_WANTED_LOCK) && 
                   player_wanted() >= 6 && 
                   prev(dword(InActiveMission)) == 0 && 
                   dword(InActiveMission) == 1) &&
              trigger_when(prev(dword(InActiveMission)) == 1 && dword(InActiveMission) == 0) &&
              never(!cheat_active(CHEAT_WANTED_LOCK)) &&
              never(player_wanted() < 6)
)

// --- Wanted Level Up (+2 Stars) ---
// TODO: Add achievements
// - TURNUPTHEHEAT: Use the Wanted Level Up cheat while inside a Police Station

// --- Remove Wanted Level ---
// TODO: Add achievements
// - Too Hot To Handle: Use the Wanted Level Down cheat 20 times in a single session

// TODO: Need to check that Remove Wanted Level cheat was used, otherwise player can escape the wanted level by dying or respraying vehicle
achievement(
    title = "TURNDOWNTHEHEAT",
    description = "Escape a 6-star wanted level by using cheats",
    points = 1,
    trigger = prev(player_wanted()) >= 6 &&
              player_wanted() < 6 &&
              cheat_used()
)

// --- Maximum Wanted Level ---

// TODO: Need to check that Maximum Wanted Level was activated (once that is activated and player destroys at least 1 military vehicle - start challenge: while player wanted level is 6, not wasted (can be paused), needs to destroy 10 total military vehicles)
achievement(
    title = "BRINGITON",
    description = "Destroy 10 military vehicles during Maximum Wanted Level",
    points = 2,
    trigger = once(player_wanted() >= 6) &&
              trigger_when(measured(repeated(minutes_to_frames(5),
                  player_wanted() >= 6 &&
                  not_paused() &&
                  !player_wasted()
              ))) &&
              never(player_wasted()) &&
              never(player_wanted() < 6)
)

// --- Maximum Fat ---
// TODO: Add achievements
// - WHOATEALLTHEPIES: Enter a restaurant after activating Maximum Fat

// --- Infinite Lung Capacity ---

// TODO: Need "is underwater" memory address to properly detect being submerged
achievement(
    title = "Deep Diver",
    description = "Stay underwater for 3 minutes using Infinite Lung Capacity",
    points = 2,
    trigger = measured(repeated(minutes_to_frames(3),
                  cheat_active(CHEAT_INFINITE_LUNG) &&
                  not_paused()
                  // TODO: Add && is_underwater() when address found
              ))
)

achievement(
    title = "Submarine Mode",
    description = "Drive underwater for 30 seconds with Infinite Lung Capacity active",
    points = 1,
    trigger = once(cheat_active(CHEAT_INFINITE_LUNG) && in_vehicle() && player_pos_z() < 0.0) &&
              trigger_when(measured(repeated(seconds_to_frames(30),
                  cheat_active(CHEAT_INFINITE_LUNG) &&
                  in_vehicle() &&
                  player_pos_z() < 0.0 &&
                  not_paused()
              )))
)

// --- Maximum Muscle ---
// TODO: Add achievements
// - BUFFMEUP: Activate Maximum Muscle while inside the gym

// --- Maximum Respect ---

// TODO: Need detection for number of recruited homies
achievement(
    title = "WORSHIPME",
    description = "Recruit 7 homies with Maximum Respect active",
    points = 2,
    trigger = cheat_active(CHEAT_MAX_RESPECT)
              // TODO: Add && recruited_homies >= 7 when address found
)

// --- Maximum Sex Appeal ---

// TODO: Need girlfriend interaction/date detection
achievement(
    title = "HELLOLADIES",
    description = "Go on a date with Maximum Sex Appeal active",
    points = 2,
    trigger = cheat_active(CHEAT_MAX_SEX_APPEAL)
              // TODO: Add && on_date() when address found
)

// --- Maximum Stamina ---
// TODO: Add achievements
// - ICANGOALLNIGHT: Activate Maximum Stamina and fall off the treadmill in the gym

// --- Maximum Vehicle Skills ---
// TODO: Add achievements
// - NATURALTALENT: Flip your vehicle after activating Maximum Vehicle Skills

// --- Minimum Muscle and Fat ---
// TODO: Add achievements
// - Speedrun Diet: Go from maximum fat to minimum using cheats in under 5 seconds
// - Skeleton Mode: Activate Minimum Muscle and Fat cheat and have one of your homies take a picture of you

// --- Never Get Hungry ---

achievement(
    title = "Ironic Appetite",
    description = "Eat until you vomit while Never Get Hungry is active",
    points = 2,
    trigger = cheat_active(CHEAT_NEVER_HUNGRY) &&
              player_vomited()
)

// --- Spawn Jetpack ---
// TODO: Add achievements
// - ROCKETMAN: Fly from Los Santos to Las Venturas using only the Jetpack

achievement(
    title = "To Infinity and Beyond",
    description = "Reach 300m altitude with the Jetpack",
    points = 3,
    trigger = jetpack_time_ms() > 0 &&
              player_above_ground() > 300.0 &&
              times_cheated() > 0
)

achievement(
    title = "Jetpack Addict",
    description = "Spend 30 minutes on the Jetpack with cheats active",
    points = 2,
    trigger = times_cheated() > 0 &&
              crossed_threshold(JetpackTime, 1800000)
)

// --- Spawn Parachute ---
// TODO: Add achievements
// - LETSGOBASEJUMPING: Spawn a Parachute and land on Maze Bank Tower
// - Skyfall Survivor: Deploy a spawned Parachute mid-air after jumping without one

// --- Super Punch ---

achievement(
    title = "STINGLIKEABEE",
    description = "Kill 50 pedestrians with Super Punch",
    points = 2,
    trigger = trigger_when(measured(tally(50,
                  kill_increased() &&
                  cheat_active(CHEAT_SUPER_PUNCH)
              )))
)

achievement(
    title = "Glass Jaw",
    description = "Get killed by a pedestrian while Super Punch is active",
    points = 1,
    trigger = cheat_active(CHEAT_SUPER_PUNCH) &&
              !cheat_active(CHEAT_INFINITE_HEALTH) &&
              on_foot() &&
              player_wasted()
)

achievement(
    title = "One Punch Man",
    description = "Kill 15 pedestrians in 30 seconds with Super Punch active",
    points = 3,
    trigger = once(cheat_active(CHEAT_SUPER_PUNCH) && kill_increased()) &&
              trigger_when(measured(tally(15,
                  kill_increased() &&
                  cheat_active(CHEAT_SUPER_PUNCH)
              ))) &&
              never(repeated(seconds_to_frames(30), not_paused()))
)

achievement(
    title = "Untouchable Brawler",
    description = "Kill 25 pedestrians with Super Punch while Infinite Health is active",
    points = 2,
    trigger = trigger_when(measured(tally(25,
                  kill_increased() &&
                  cheat_active(CHEAT_SUPER_PUNCH) &&
                  cheat_active(CHEAT_INFINITE_HEALTH)
              )))
)

// --- Infinite Ammo ---

achievement(
    title = "FULLCLIP",
    description = "Fire 1000 bullets with Infinite Ammo active",
    points = 1,
    trigger = trigger_when(measured(tally(1000,
                  bullet_fired() &&
                  cheat_active(CHEAT_INFINITE_AMMO)
              )))
)

achievement(
    title = "Spray and Pray",
    description = "Get 50 kills with the Minigun while Infinite Ammo is active",
    points = 2,
    trigger = trigger_when(measured(tally(50,
                  kill_increased() &&
                  using_minigun() &&
                  cheat_active(CHEAT_INFINITE_AMMO)
              )))
)

// --- (Almost) Infinite Health ---

achievement(
    title = "ONECANHURTME",
    description = "Get killed while (Almost) Infinite Health is active",
    points = 1,
    trigger = cheat_active(CHEAT_INFINITE_HEALTH) &&
              player_wasted()
)

achievement(
    title = "Untouchable",
    description = "Survive 5 minutes with Infinite Health and 6-star wanted level",
    points = 1,
    trigger = once(cheat_active(CHEAT_INFINITE_HEALTH) && player_wanted() >= 6) &&
              trigger_when(measured(repeated(minutes_to_frames(5),
                  cheat_active(CHEAT_INFINITE_HEALTH) &&
                  player_wanted() >= 6 &&
                  not_paused() &&
                  !player_wasted()
              ))) &&
              never(player_wasted()) &&
              never(player_wanted() < 6) &&
              never(!cheat_active(CHEAT_INFINITE_HEALTH))
)

// --- Weapons 1 (Brass Knuckles, Baseball Bat, Pistol, Shotgun, Micro SMG, AK47, Rifle, Rocket Launcher, Molotov, Spray Can) ---
// TODO: Add achievements
// - THUGSARMOURY: Get 10 Molotov kills within 20 seconds of activating Weapons 1 cheat

// --- Weapons 2 (Fist, Knife, Desert Eagle, Sawn-Off Shotgun, TEC 9, M4, Sniper Rifle, Flamethrower, Fire Extinguisher, Grenades) ---
// TODO: Add achievements
// - PROFESSIONALSKIT: Get a Fire Extinguisher kill within 10 seconds of activating Weapons 2

// --- Weapons 3 (Fist, Chainsaw, Silenced Pistol, SPAS 12, SMG, M4, Heat-Seeking Rocket Launcher, Satchel Charges) ---
// TODO: Add achievements
// - NUTTERSTOYS: Get a Chainsaw kill within 10 seconds of activating Weapons 3 cheat
// - UZUMYMW: Blow yourself up with Bazooka within 5 seconds of activating Weapons 3

// =============================================================================
// ACHIEVEMENTS - VEHICLE CHEATS
// =============================================================================

// --- All Cars Have Nitrous ---

// TODO: Need "nitro active" or "nitro uses" memory address
// Currently just triggers on cheat activation
achievement(
    title = "SPEEDFREAK",
    description = "Activate All Cars Have Nitro and use nitro 10 times",
    points = 2,
    trigger = cheat_just_activated(CHEAT_ALL_NITRO)
              // TODO: Change to measured(tally(10, nitro_used())) when address found
)

// --- Cars Drive on Water ---

// TODO: Need "is on water" or water surface detection to verify driving on water
achievement(
    title = "Jesus Mode",
    description = "Drive on water for 1 minute with Drive on Water cheat active",
    points = 1,
    trigger = measured(repeated(minutes_to_frames(1),
                  cheat_active(CHEAT_DRIVE_ON_WATER) &&
                  in_vehicle() &&
                  not_paused()
                  // TODO: Add && is_on_water() when address found
              ))
)

// --- Flying Boats ---

// TODO: Should verify player is in a boat vehicle type for proper detection
achievement(
    title = "FLYINGFISH",
    description = "Activate Flying Boats and take flight",
    points = 1,
    trigger = cheat_active(CHEAT_FLYING_BOATS) &&
              in_vehicle() &&
              player_above_ground() > 30.0
)

// --- Flying Cars ---

achievement(
    title = "CHITTYCHITTYBANGBANG",
    description = "Fly for 20 minutes total with Flying Cars cheat active",
    points = 1,
    trigger = measured(repeated(minutes_to_frames(20),
                  cheat_active(CHEAT_FLYING_CARS) &&
                  in_vehicle() &&
                  player_above_ground() > 50.0 &&
                  not_paused()
              ))
)

achievement(
    title = "Flying Dutchman",
    description = "Reach 100m altitude with Flying Cars cheat active (in a car)",
    points = 2,
    trigger = cheat_active(CHEAT_FLYING_CARS) &&
              in_vehicle() &&
              !on_bicycle() &&
              player_above_ground() > 100.0
)

achievement(
    title = "Need for Altitude",
    description = "Reach maximum altitude (200m+) with Flying Cars",
    points = 3,
    trigger = cheat_active(CHEAT_FLYING_CARS) &&
              in_vehicle() &&
              !on_bicycle() &&
              player_above_ground() > 200.0
)

// --- Spawn Sport Cars ---
// TODO: Add achievements

// --- Improved Suspension ---
// TODO: Add achievements

// --- Perfect Handling ---

achievement(
    title = "STICKLIKEGLUE",
    description = "Activate Perfect Vehicle Handling",
    points = 1,
    trigger = cheat_just_activated(CHEAT_PERFECT_HANDLING)
)

// --- Full Weapon Aiming in Vehicles ---

// TODO: This triggers on any kill from vehicle, not specifically a drive-by shooting
// Need "is shooting from vehicle" detection for proper drive-by verification
achievement(
    title = "IWANNADRIVEBY",
    description = "Get 25 drive-by kills with Full Weapon Aiming in Vehicles",
    points = 2,
    trigger = trigger_when(measured(tally(25,
                  kill_increased() &&
                  in_vehicle() &&
                  cheat_active(CHEAT_FREE_AIM)
              )))
)

// --- Super Bunny Hop ---

// TODO: No actual building detection - just checks for 50m altitude
// Maybe change trigger to jump ON a specific building
achievement(
    title = "E.T. Phone Home",
    description = "Activate Super Bunny Hop and jump over a building on a bike",
    points = 2,
    trigger = cheat_active(CHEAT_SUPER_BUNNY_HOP) &&
              on_bicycle() &&
              player_above_ground() > 50.0
)

// --- Taxi Missions Completed ---
// TODO: Add achievements

// --- CJ's Car Invincible (Destroy on Touch) ---

// TODO: CHEAT_INVINCIBLE_CAR address needs verification
achievement(
    title = "TOUCHMYCARYOUDIE",
    description = "Destroy 100 vehicles by ramming with CJ's Car is Invincible active",
    points = 3,
    trigger = trigger_when(measured(tally(100,
                  prev(dword(VehiclesDestroyed)) < dword(VehiclesDestroyed) &&
                  in_vehicle() &&
                  cheat_active(CHEAT_INVINCIBLE_CAR)
              )))
)

// =============================================================================
// ACHIEVEMENTS - VEHICLE SPAWN CHEATS
// =============================================================================

// --- Spawn Bloodring Banger ---
// TODO: Add achievements
// - OLDSPEEDDEMON: Destroy your spawned Bloodring Banger within 5 seconds

// --- Spawn Caddy ---
// TODO: Add achievements
// - 18HOLES: Spawn a Caddy on the golf course
// - Hole in One: Drive a spawned Caddy into the ocean

// --- Spawn Dozer ---
// TODO: Add achievements
// - ITSALLBULL: Hit 50 vehicles with a spawned Dozer
// - Bob the Destroyer: Drive into oncoming traffic for 2 minutes using a spawned Dozer

// --- Spawn Hunter ---
// TODO: Add achievements
// - OHDUDE: Spawn a Hunter and crash it within 20 seconds
// - Apache Warfare: Complete a Vigilante mission using a spawned Hunter
// - Gatling Gunner: Get 50 kills with a spawned Hunter

// --- Spawn Hydra ---
// TODO: Add achievements
// - JUMPJET: Spawn a Hydra in the middle of Grove Street
// - Top Gun: Destroy 10 police helicopters with a spawned Hydra
// - Kamikaze: Crash a spawned Hydra into a police boat

// --- Spawn Monster Truck ---
// TODO: Add achievements
// - MONSTERMASH: Run over 20 vehicles with a spawned Monster Truck

// --- Spawn Quad ---
// TODO: Add achievements
// - FOURWHEELFUN: Perform a stoppie front flip on a spawned Quad

// --- Spawn Hotring Racer #1 ---
// TODO: Add achievements
// - NOTFORPUBLICROADS: Flip your spawned Hotring Racer within 20 seconds

// --- Spawn Hotring Racer #2 ---
// TODO: Add achievements
// - JUSTTRYANDSTOPME: TODO

// --- Spawn Rancher ---
// TODO: Add achievements
// - DOUGHNUTHANDICAP: Get a longest 2 wheels time of 3 seconds with a spawned Rancher

// --- Spawn Rhino ---
// TODO: Add achievements
// - TIMETOKICKASS: Destroy 100 vehicles with a spawned Rhino Tank
// - Tank You Very Much: Spawn a Rhino Tank inside a Pay 'N' Spray

// --- Spawn Romero ---
// TODO: Add achievements
// - WHERESTHEFUNERAL: Drive a spawned Romero to the cemetery
// - Death Delivery: Run over 10 pedestrians with a spawned Romero

// --- Spawn Stretch Limo ---
// TODO: Add achievements
// - CELEBRITYSTATUS: Pick up a girlfriend in a spawned Stretch limousine
// - Celebrity Status Achieved: Drive a spawned Stretch into a Pay 'N' Spray with 5+ stars

// --- Spawn Stunt Plane ---
// TODO: Add achievements
// - FLYINGTOSTUNT: Fly under the Gant Bridge with a spawned Stunt Plane
// - Stunt Coordinator: Perform 10 barrel rolls with a spawned Stunt Plane in one flight

// --- Spawn Tanker Truck ---
// TODO: Add achievements
// - HITTHEROADJACK: Do a stunt jump with a spawned Tanker
// - Hazmat Havoc: Drive a spawned Tanker into a gas station

// --- Spawn Trashmaster ---
// TODO: Add achievements
// - TRUEGRIME: (TODO: Think of interesting achievement with Trashmaster)
// - Garbage Day: Run over 25 pedestrians with a spawned Trashmaster

// --- Spawn Vortex ---
// TODO: Add achievements
// - IWANTTOHOVER: Take a spawned Vortex from land to water to land again in one continuous journey
// - Hover Lord: Fly a Vortex from the top of the Maze Bank Tower to (TODO: Place to land Vortex)

// =============================================================================
// ACHIEVEMENTS - THEMES / PEDESTRIAN BEHAVIOR
// =============================================================================

// --- Aggressive Drivers ---
// TODO: Add achievements
// - ALLDRIVERSARECRIMINALS: TODO

// --- Aggressive Traffic ---

achievement(
    title = "YLTEICZ",
    description = "Activate Aggressive Traffic and survive 5 minutes",
    points = 2,
    trigger = once(cheat_just_activated(CHEAT_AGGRESSIVE_TRAFFIC)) &&
              measured(repeated(minutes_to_frames(5),
                  cheat_active(CHEAT_AGGRESSIVE_TRAFFIC) &&
                  not_paused() &&
                  !player_wasted()
              )) &&
              never(player_wasted())
)

// --- Beach Party Mode ---

// TODO: Need beach area detection for full verification
achievement(
    title = "LIFESABEACH",
    description = "Kill 10 pedestrians on the beach during Beach Party Mode",
    points = 2,
    trigger = trigger_when(measured(tally(10,
                  kill_increased() &&
                  cheat_active(CHEAT_BEACH_PARTY)
              )))
)

// --- Junk Cars Traffic ---
// TODO: Add achievements
// - BGKGTJH: Activate Junk Cars Traffic and (TODO)

// --- Black Cars ---

achievement(
    title = "SOLONGASITSBLACK",
    description = "Activate Black Cars cheat",
    points = 1,
    trigger = cheat_just_activated(CHEAT_BLACK_CARS)
)

// --- Funhouse Theme ---

achievement(
    title = "Clown Fiesta",
    description = "Cause 10 explosions with Funhouse Theme active",
    points = 2,
    trigger = trigger_when(measured(tally(10,
                  prev(dword(VehiclesDestroyed)) < dword(VehiclesDestroyed) &&
                  cheat_active(CHEAT_FUNHOUSE)
              )))
)

// --- Moon Car Gravity ---

// TODO: Should detect a car being launched into the air after collision
// Currently just triggers on cheat activation
achievement(
    title = "BUBBLECARS",
    description = "Activate Moon Gravity and send a car flying",
    points = 1,
    trigger = cheat_just_activated(CHEAT_MOON_GRAVITY)
              // TODO: Add vehicle height check after collision
)

// Activating too many times causes cars to spawn in midair
achievement(
    title = "It's Raining Cars",
    description = "Activate Moon Gravity 5 times in one session",
    points = 1,
    trigger = trigger_when(measured(tally(5, cheat_just_activated(CHEAT_MOON_GRAVITY))))
)

// --- Pedestrian Riot ---

achievement(
    title = "State of Emergency",
    description = "Survive for 5 minutes during a Pedestrian Riot",
    points = 1,
    trigger = once(cheat_just_activated(CHEAT_PED_RIOT)) &&
              trigger_when(measured(repeated(minutes_to_frames(5),
                  cheat_active(CHEAT_PED_RIOT) &&
                  not_paused() &&
                  !player_wasted()
              ))) &&
              never(player_wasted())
)

// --- Blow Up All Cars ---

achievement(
    title = "ALLCARSGOBOOM",
    description = "Survive the Explode All Cars cheat while driving a car",
    points = 2,
    trigger = in_vehicle() &&
              !player_wasted() &&
              cheat_used() &&
              prev(dword(VehiclesDestroyed)) + 3 <= dword(VehiclesDestroyed)
)

achievement(
    title = "Michael Bay Simulator",
    description = "Cause 15 vehicle explosions in 1 minute with Explode All Cars cheat",
    points = 3,
    trigger = once(cheat_just_activated(CHEAT_CARS_EXPLODE_BUMP)) &&
              trigger_when(measured(tally(15,
                  cheat_active(CHEAT_CARS_EXPLODE_BUMP) &&
                  prev(dword(VehiclesDestroyed)) < dword(VehiclesDestroyed)
              ))) &&
              never(repeated(minutes_to_frames(1),
                  cheat_active(CHEAT_CARS_EXPLODE_BUMP) &&
                  not_paused()
              )) &&
              never(!cheat_active(CHEAT_CARS_EXPLODE_BUMP))
)

// --- Invisible Cars ---

achievement(
    title = "WHEELSONLYPLEASE",
    description = "Drive for 10 minutes total with Invisible Cars active",
    points = 1,
    trigger = measured(repeated(minutes_to_frames(10),
                  cheat_active(CHEAT_INVISIBLE_CARS) &&
                  in_vehicle() &&
                  not_paused()
              ))
)

achievement(
    title = "Ghost Rider",
    description = "Drive an invisible car during Chaos Mode",
    points = 1,
    trigger = cheat_active(CHEAT_INVISIBLE_CARS) &&
              cheat_active(CHEAT_CHAOS_MODE) &&
              in_vehicle()
)

// --- Kinky Theme ---

// TODO: Need prostitute interaction detection for proper verification
achievement(
    title = "50 Shades of San Andreas",
    description = "Earn $1000 from prostitutes with Kinky Theme active",
    points = 2,
    trigger = cheat_active(CHEAT_KINKY_THEME)
              // TODO: Add && prostitute_earnings >= 1000 when address found
)

// --- Prostitutes Pay CJ ---

achievement(
    title = "Paid for Services",
    description = "Earn money 2 times with Prostitutes Pay CJ active",
    points = 1,
    trigger = trigger_when(measured(tally(2,
                  prev(player_money()) < player_money() &&
                  cheat_active(CHEAT_PROSTITUTES_PAY)
              )))
)

// --- No Pedestrians / Reduced Traffic ---

achievement(
    title = "GHOSTTOWN",
    description = "Enter 5 vehicles with No Pedestrians / Reduced Traffic active",
    points = 1,
    trigger = trigger_when(measured(tally(5,
                  just_entered_vehicle() &&
                  cheat_active(CHEAT_REDUCED_TRAFFIC)
              )))
)

// --- All Pedestrians Are Elvis ---

// TODO: Need photo taken flag for proper Elvis detection
achievement(
    title = "Viva Las Elvis",
    description = "Take a photo of an Elvis pedestrian",
    points = 2,
    trigger = cheat_active(CHEAT_ALL_ELVIS)
              // TODO: Add && photo_taken() when address found
)

// --- Pedestrians Attack CJ ---

achievement(
    title = "STOPPICKINGONME",
    description = "Survive 10 minutes with Pedestrians Attack CJ active",
    points = 2,
    trigger = once(cheat_just_activated(CHEAT_PEDS_ATTACK)) &&
              trigger_when(measured(repeated(minutes_to_frames(10),
                  cheat_active(CHEAT_PEDS_ATTACK) &&
                  not_paused() &&
                  !player_wasted()
              ))) &&
              never(player_wasted())
)

// --- Pedestrians Attack CJ (With Guns) ---

achievement(
    title = "ATTACKOFTHEVILLAGEPEOPLE",
    description = "Survive 5 minutes with armed pedestrians attacking you",
    points = 3,
    trigger = once(cheat_just_activated(CHEAT_PEDS_ATTACK_GUNS)) &&
              trigger_when(measured(repeated(minutes_to_frames(5),
                  cheat_active(CHEAT_PEDS_ATTACK_GUNS) &&
                  not_paused() &&
                  !player_wasted()
              ))) &&
              never(player_wasted())
)

// --- Pedestrians Have Weapons ---

// TODO: Need detection when pedestrian is armed (maybe count when weapon is dropped from killed pedestrian?)
achievement(
    title = "SURROUNDEDBYNUTTERS",
    description = "Kill 25 armed pedestrians with Pedestrians Have Weapons active",
    points = 2,
    trigger = trigger_when(measured(tally(25,
                  kill_increased() &&
                  cheat_active(CHEAT_PEDS_WEAPONS)
              )))
)

// --- Chaos Mode ---

achievement(
    title = "ROUGHNEIGHBOURHOOD",
    description = "Activate Chaos Mode and survive for 5 minutes",
    points = 1,
    trigger = once(cheat_just_activated(CHEAT_CHAOS_MODE)) &&
              trigger_when(measured(repeated(minutes_to_frames(5),
                  cheat_active(CHEAT_CHAOS_MODE) &&
                  not_paused() &&
                  !player_wasted()
              ))) &&
              never(player_wasted())
)

achievement(
    title = "The Purge",
    description = "Kill 100 pedestrians during Chaos Mode",
    points = 2,
    trigger = trigger_when(measured(tally(100,
                  kill_increased() &&
                  cheat_active(CHEAT_CHAOS_MODE)
              )))
)

achievement(
    title = "San Andreas Chainsaw Massacre",
    description = "Get 20 chainsaw kills during Chaos Mode",
    points = 2,
    trigger = trigger_when(measured(tally(20,
                  kill_increased() &&
                  using_chainsaw() &&
                  cheat_active(CHEAT_CHAOS_MODE)
              )))
)

achievement(
    title = "Maximum Carnage",
    description = "Have Pedestrian Riot, Chaos Mode, and Aggressive Traffic all active at once",
    points = 1,
    trigger = cheat_active(CHEAT_PED_RIOT) &&
              cheat_active(CHEAT_CHAOS_MODE) &&
              cheat_active(CHEAT_AGGRESSIVE_TRAFFIC) &&
              !player_wasted()
)

achievement(
    title = "Apocalypse Now",
    description = "Survive 2 minutes with Maximum Carnage combo active",
    points = 1,
    trigger = once(cheat_active(CHEAT_PED_RIOT) &&
                   cheat_active(CHEAT_CHAOS_MODE) &&
                   cheat_active(CHEAT_AGGRESSIVE_TRAFFIC)) &&
              trigger_when(measured(repeated(minutes_to_frames(2),
                  cheat_active(CHEAT_PED_RIOT) &&
                  cheat_active(CHEAT_CHAOS_MODE) &&
                  cheat_active(CHEAT_AGGRESSIVE_TRAFFIC) &&
                  not_paused() &&
                  !player_wasted()
              ))) &&
              never(player_wasted()) &&
              // Reset if any cheat is turned off
              never(!cheat_active(CHEAT_PED_RIOT)) &&
              never(!cheat_active(CHEAT_CHAOS_MODE)) &&
              never(!cheat_active(CHEAT_AGGRESSIVE_TRAFFIC))
)

// --- Pink Cars ---

achievement(
    title = "Fabulous",
    description = "Activate Pink Cars cheat",
    points = 1,
    trigger = cheat_just_activated(CHEAT_PINK_CARS)
)

achievement(
    title = "Pink Flying Circus",
    description = "Fly a pink car with both Flying Cars and Pink Cars cheats active",
    points = 1,
    trigger = cheat_active(CHEAT_FLYING_CARS) &&
              cheat_active(CHEAT_PINK_CARS) &&
              in_vehicle() &&
              player_above_ground() > 30.0
)

// --- Rural Traffic ---
// TODO: Add achievements
// - EVERYONEISPOOR: TODO

// --- Rural Theme ---

achievement(
    title = "Country Roads",
    description = "Drive for 10 minutes with Rural Theme active",
    points = 1,
    trigger = measured(repeated(minutes_to_frames(10),
                  cheat_active(CHEAT_RURAL_THEME) &&
                  in_vehicle() &&
                  not_paused()
              ))
)

// --- Sports Cars Traffic ---

// TODO: Need detection that vehicle is indeed a sports car
achievement(
    title = "EVERYONEISRICH",
    description = "Steal 10 sports cars with Sports Cars Traffic active",
    points = 2,
    trigger = trigger_when(measured(tally(10,
                  just_entered_vehicle() &&
                  cheat_active(CHEAT_FAST_CARS)
              )))
)

// --- Traffic Lights Stay Green ---

achievement(
    title = "DONTTRYANDSTOPME",
    description = "Activate Traffic Lights Stay Green",
    points = 1,
    trigger = cheat_just_activated(CHEAT_GREEN_LIGHTS)
)

// --- Triad Theme ---

achievement(
    title = "Ninja CJ",
    description = "Get 15 katana kills with Triad Theme active",
    points = 2,
    trigger = trigger_when(measured(tally(15,
                  kill_increased() &&
                  using_katana() &&
                  cheat_active(CHEAT_TRIAD_THEME)
              )))
)

// =============================================================================
// ACHIEVEMENTS - GANG CHEATS
// =============================================================================

// --- Gang Members Spawn Faster ---

// TODO: Need detection of gang members killed specifically instead of general kills
achievement(
    title = "MROEMZH",
    description = "Kill 20 gang members while Gang Spawn Faster is active",
    points = 2,
    trigger = trigger_when(measured(tally(20,
                  kill_increased() &&
                  cheat_active(CHEAT_GANG_MODE)
              )))
)

// --- Gang Wars Break Out ---

// TODO: Need gang territory ownership change detection
achievement(
    title = "ONLYHOMIESALLOWED",
    description = "Win a gang war with Gang Wars Break Out active",
    points = 2,
    trigger = cheat_active(CHEAT_GANG_WARS)
              // TODO: Add && gang_war_won() when address found
)

// --- No Citizens Only Gang Gunfights ---

achievement(
    title = "BETTERSTAYINDOORS",
    description = "Survive 3 minutes with No Citizens Only Gang Gunfights active",
    points = 2,
    trigger = once(cheat_just_activated(CHEAT_GANGS_ONLY)) &&
              trigger_when(measured(repeated(minutes_to_frames(3),
                  cheat_active(CHEAT_GANGS_ONLY) &&
                  not_paused() &&
                  !player_wasted()
              ))) &&
              never(player_wasted())
)

// --- Recruit Anyone (Pistol) ---

// TODO: Implementation missing
achievement(
    title = "Pistol Packin' Civilians",
    description = "Recruit 7 pedestrians with pistols and start a gang war",
    points = 1,
    trigger = cheat_just_activated(CHEAT_RECRUIT_PISTOL)
)

// TODO: Implementation missing
achievement(
    title = "WANNABEINMYGANG",
    description = "Recruit 7 enemy gang members and start a gang war",
    points = 1,
    trigger = cheat_just_activated(CHEAT_RECRUIT_PISTOL)
)

// --- Recruit Anyone (Rocket Launcher) ---

achievement(
    title = "ROCKETMAYHEM",
    description = "Cause 15 vehicle explosions with Rocket Launcher recruits",
    points = 2,
    trigger = trigger_when(measured(tally(15,
                  prev(dword(VehiclesDestroyed)) < dword(VehiclesDestroyed) &&
                  cheat_active(CHEAT_RECRUIT_ROCKET)
              )))
)

// TODO: Need "last damage source" or "killed by explosion" address to verify rocket kill
// Currently triggers on any death while cheat is active
achievement(
    title = "Rocket Civilians",
    description = "Get killed by friendly fire from rocket-launcher recruits",
    points = 3,
    trigger = cheat_active(CHEAT_RECRUIT_ROCKET) &&
              player_wasted()
              // TODO: Add && killed_by_explosion() when address found
)

// =============================================================================
// ACHIEVEMENTS - TIME AND WEATHER
// =============================================================================

// --- Always Midnight ---

achievement(
    title = "NIGHTPROWLER",
    description = "Play for 30 real minutes with Always Midnight active",
    points = 2,
    trigger = measured(repeated(minutes_to_frames(30),
                  cheat_active(CHEAT_ALWAYS_MIDNIGHT) &&
                  not_paused()
              ))
)

// --- Always 21:00 ---

achievement(
    title = "DONTBRINGONTHENIGHT",
    description = "Activate Always 21:00 (eternal dusk)",
    points = 1,
    trigger = cheat_just_activated(CHEAT_ALWAYS_2100)
)

// --- Cloudy Weather ---
// TODO: Add achievements
// - DULLDULLDAY: Activate Cloudy Weather and (TODO)

// --- Fast Motion ---
// TODO: Add achievements
// - SPEEDITUP: Activate Fast Motion and (TODO)

// --- Slow Motion ---

// TODO: This triggers on any kill from vehicle, not specifically a drive-by shooting
// Need "is shooting from vehicle" detection for proper drive-by verification
achievement(
    title = "SLOWITDOWN",
    description = "Complete a drive-by while Slow Motion is active",
    points = 1,
    trigger = cheat_active(CHEAT_SLOW_MOTION) &&
              in_vehicle() &&
              kill_increased()
)

achievement(
    title = "Bullet Time",
    description = "Kill 10 enemies while Slow Motion is active",
    points = 1,
    trigger = trigger_when(measured(tally(10,
                  kill_increased() &&
                  cheat_active(CHEAT_SLOW_MOTION)
              )))
)

// --- Faster Clock ---

achievement(
    title = "YSOHNUL",
    description = "Watch the sun set 3 times with Faster Clock active",
    points = 1,
    trigger = trigger_when(measured(tally(3,
                  prev(game_hour()) == 19 && game_hour() == 20 &&
                  cheat_active(CHEAT_FASTER_CLOCK)
              )))
)

// --- Foggy Weather ---
// TODO: Add achievements
// - CANTSEEWHEREIMGOING: Activate Foggy Weather and (TODO)

// --- Overcast Weather ---
// TODO: Add achievements
// - ALNSFMZO: Activate Overcast Weather and (TODO)

// --- Sandstorm ---
// TODO: Add achievements
// - Darude: Drive through the Sandstorm for 3 minutes and 52 seconds without damaging your vehicle

// --- Rainy Weather ---
// TODO: Add achievements
// - STAYINANDWATCHTV: Activate Rainy Weather and (TODO) (TODO: Cheat doesn't work, code is overridden by "Foggy Weather")

// --- Stormy Weather ---
// TODO: Add achievements
// - SCOTTISHSUMMER: Activate Stormy Weather and (TODO)

// --- Sunny Weather ---
// TODO: Add achievements
// - PLEASANTLYWARM: Activate Sunny Weather and (TODO)

// --- Very Sunny Weather ---
// TODO: Add achievements
// - TOODAMNHOT: Activate Very Sunny Weather on the beach wearing only boxers

// =============================================================================
// ACHIEVEMENTS - META / CHEAT TRACKING
// =============================================================================

achievement(
    title = "Casual Cheater",
    description = "Use cheats 10 times in a single playthrough",
    points = 1,
    trigger = measured(tally(10, cheat_used()))
)

achievement(
    title = "Serial Cheater",
    description = "Use cheats 50 times in a single playthrough",
    points = 2,
    trigger = measured(tally(50, cheat_used()))
)

achievement(
    title = "Professional Cheater",
    description = "Use cheats 100 times in a single playthrough",
    points = 3,
    trigger = measured(tally(100, cheat_used()))
)

achievement(
    title = "Cheat Code Encyclopedia",
    description = "Use cheats 250 times in a single playthrough",
    points = 4,
    trigger = measured(tally(250, cheat_used()))
)

achievement(
    title = "Cheat Master",
    description = "Use cheats 500 times in a single playthrough - you've memorized them all!",
    points = 5,
    trigger = measured(tally(500, cheat_used()))
)

// =============================================================================
// ACHIEVEMENTS - STATS MILESTONES (with cheats active)
// =============================================================================

achievement(
    title = "Cheater's Demolition Derby",
    description = "Destroy 500 vehicles with cheats active",
    points = 3,
    trigger = times_cheated() > 0 &&
              crossed_threshold(VehiclesDestroyed, 500)
)

achievement(
    title = "Cheater's Armageddon",
    description = "Cause $5,000,000+ in property damage with cheats active",
    points = 2,
    trigger = times_cheated() > 0 &&
              crossed_threshold(PropertyDamage, 5000000)
)

achievement(
    title = "Cheater's Headhunter",
    description = "Get 100 headshots with cheats active",
    points = 3,
    trigger = times_cheated() > 0 &&
              crossed_threshold(Headshots, 100)
)

achievement(
    title = "Cheater's Escape Artist",
    description = "Evade 50 wanted stars with cheats active",
    points = 2,
    trigger = times_cheated() > 0 &&
              crossed_threshold(StarsEvaded, 50)
)

// =============================================================================
// RICH PRESENCE
// =============================================================================

VehicleLookup = {
    0x1e1: "BMX",
    0x1fd: "Bike",
    0x1fe: "Mountain Bike",
    0x1b0: "Rhino Tank",
    0x1a9: "Hunter",
    0x208: "Hydra",
    0x1bc: "Monster Truck",
    0x201: "Stuntplane",
    0x1f8: "Bloodring Banger",
    0x21b: "Vortex",
    0x1d7: "Quad",
    0x1e6: "Dozer",
    0x199: "Stretch Limo",
    0x1c9: "Caddy"
}

// Conditional Rich Presence based on player state
rich_presence_conditional_display(
    in_vehicle() && current_vehicle_id() != 0,
    "CJ driving {0} | 🎮 {1} cheats used | ⭐ {2} | ${3}",
    rich_presence_lookup("Vehicle", current_vehicle_id(), VehicleLookup, "a vehicle"),
    rich_presence_value("CheatsUsed", times_cheated()),
    rich_presence_value("Wanted", player_wanted()),
    rich_presence_value("Money", player_money())
)

rich_presence_conditional_display(
    jetpack_time_increased(),
    "CJ flying with Jetpack ✈️ | 🎮 {0} cheats used | ⭐ {1} | ${2}",
    rich_presence_value("CheatsUsed", times_cheated()),
    rich_presence_value("Wanted", player_wanted()),
    rich_presence_value("Money", player_money())
)

rich_presence_display(
    "CJ on foot | 🎮 {0} cheats used | ⭐ {1} | ${2}",
    rich_presence_value("CheatsUsed", times_cheated()),
    rich_presence_value("Wanted", player_wanted()),
    rich_presence_value("Money", player_money())
)

// =============================================================================
// TODO - MISSING MEMORY ADDRESSES NEEDED
// =============================================================================
//
// HIGH PRIORITY:
// Height Above Ground / Wheels On Ground - to fix player_above_ground() (currently uses absolute Z)
// HESOYAM cheat flag - instant-effect cheats may not have flags, need verification
// Is Underwater - for Deep Diver proper detection
// Is On Water Surface - for Jesus Mode water driving
// Last Damage Source / Killed By Explosion - for Rocket Civilians
// Nitro Active/Uses Counter - for SPEEDFREAK
//
// MEDIUM PRIORITY:
// Weapon spawn cheat flags (THUGSARMOURY, PROFESSIONALSKIT, NUTTERSTOYS)
// Vehicle spawn cheat flags/detection (Rhino, Hydra, Hunter, Jetpack spawn)
// Weather cheat flags (Foggy, Stormy, Sunny, Very Sunny, Sandstorm)
// Body stat cheat flags (Max Muscle, Max Fat, Min Muscle/Fat)
// Fast/Slow Motion cheat flags (SPEEDITUP)
// Wanted Level Up cheat flag (TURNUPTHEHEAT)
// Max Wanted Level cheat flag (BRINGITON spawn-based)
// Bounty on Your Head cheat flag
//
// LOW PRIORITY (for location-based achievements):
// Interior ID - for casino, club, gym detection
// Current Zone/Area Name - for location verification
// Photo taken flag - for selfie achievements
//
// =============================================================================
// TODO - ADDITIONAL ACHIEVEMENT IDEAS
// =============================================================================
//
// PLAYER CHEATS (need body stat/location detection):
// - GOODBYECRUELWORLD: Commit suicide using the cheat while on parachute
// - PROFESSIONALKILLER: Get a kill with each weapon class after activating Hitman Level
// - TURNUPTHEHEAT: Use the Wanted Level Up cheat while inside a Police Station
// - Too Hot To Handle: Use the Wanted Level Down cheat 20 times in a single session
// - WHOATEALLTHEPIES: Enter a restaurant after activating Maximum Fat
// - BUFFMEUP: Activate Maximum Muscle while inside the gym
// - ICANGOALLNIGHT: Activate Maximum Stamina and fall off the treadmill in the gym
// - NATURALTALENT: Flip your vehicle after activating Maximum Vehicle Skills
// - Speedrun Diet: Go from maximum fat to minimum using cheats in under 5 seconds
// - Skeleton Mode: Activate Minimum Muscle and Fat cheat and have one of your homies take a picture of you
// - ROCKETMAN: Fly from Los Santos to Las Venturas using only the Jetpack
// - LETSGOBASEJUMPING: Spawn a Parachute and land on Maze Bank Tower
// - Skyfall Survivor: Deploy a spawned Parachute mid-air after jumping without one
//
// WEAPON SPAWN CHEATS (need weapon spawn cheat flags):
// - THUGSARMOURY: Get 10 Molotov kills within 20 seconds of activating Weapons 1 cheat
// - PROFESSIONALSKIT: Get a Fire Extinguisher kill within 10 seconds of activating Weapons 2
// - NUTTERSTOYS: Get a Chainsaw kill within 10 seconds of activating Weapons 3 cheat
// - UZUMYMW: Blow yourself up with Bazooka within 5 seconds of activating Weapons 3
//
// VEHICLE CHEATS:
// - Improved Suspension: (TODO: How is this cheat different from "Perfect Handling"?)
// - Taxi Missions Completed: (TODO: Why is this cheat code same as "Maximum Stamina"?)
//
// VEHICLE SPAWN CHEATS (need spawn detection):
// Bloodring Banger:
// - OLDSPEEDDEMON: Destroy your spawned Bloodring Banger within 5 seconds
// Caddy:
// - 18HOLES: Spawn a Caddy on the golf course
// - Hole in One: Drive a spawned Caddy into the ocean
// Dozer:
// - ITSALLBULL: Hit 50 vehicles with a spawned Dozer
// - Bob the Destroyer: Drive into oncoming traffic for 2 minutes using a spawned Dozer
// Hunter:
// - OHDUDE: Spawn a Hunter and crash it within 20 seconds
// - Apache Warfare: Complete a Vigilante mission using a spawned Hunter
// - Gatling Gunner: Get 50 kills with a spawned Hunter
// Hydra:
// - JUMPJET: Spawn a Hydra in the middle of Grove Street
// - Top Gun: Destroy 10 police helicopters with a spawned Hydra
// - Kamikaze: Crash a spawned Hydra into a police boat
// Monster Truck:
// - MONSTERMASH: Run over 20 vehicles with a spawned Monster Truck
// Quad:
// - FOURWHEELFUN: Perform a stoppie front flip on a spawned Quad
// Hotring Racer:
// - NOTFORPUBLICROADS: Flip your spawned Hotring Racer within 20 seconds
// Rancher:
// - DOUGHNUTHANDICAP: Get a longest 2 wheels time of 3 seconds with a spawned Rancher
// Rhino:
// - TIMETOKICKASS: Destroy 100 vehicles with a spawned Rhino Tank
// - Tank You Very Much: Spawn a Rhino Tank inside a Pay 'N' Spray
// Romero:
// - WHERESTHEFUNERAL: Drive a spawned Romero to the cemetery
// - Death Delivery: Run over 10 pedestrians with a spawned Romero
// Stretch:
// - CELEBRITYSTATUS: Pick up a girlfriend in a spawned Stretch limousine
// - Celebrity Status Achieved: Drive a spawned Stretch into a Pay 'N' Spray with 5+ stars
// Stunt Plane:
// - FLYINGTOSTUNT: Fly under the Gant Bridge with a spawned Stunt Plane
// - Stunt Coordinator: Perform 10 barrel rolls with a spawned Stunt Plane in one flight
// Tanker:
// - HITTHEROADJACK: Do a stunt jump with a spawned Tanker
// - Hazmat Havoc: Drive a spawned Tanker into a gas station
// Trashmaster:
// - TRUEGRIME: (TODO: Think of interesting achievement with Trashmaster)
// - Garbage Day: Run over 25 pedestrians with a spawned Trashmaster
// Vortex:
// - IWANTTOHOVER: Take a spawned Vortex from land to water to land again in one continuous journey
// - Hover Lord: Fly a Vortex from the top of the Maze Bank Tower to (TODO: Place to land Vortex)
//
// THEMES / PEDESTRIAN BEHAVIOR:
// - BGKGTJH: Activate Junk Cars Traffic and (TODO)
//
// WEATHER CHEATS (need weather cheat flags):
// - DULLDULLDAY: Activate Cloudy Weather and (TODO)
// - SPEEDITUP: Activate Fast Motion and (TODO)
// - CANTSEEWHEREIMGOING: Activate Foggy Weather and (TODO)
// - ALNSFMZO: Activate Overcast Weather and (TODO)
// - Darude: Drive through the Sandstorm for 3 minutes and 52 seconds without damaging your vehicle
// - STAYINANDWATCHTV: Activate Rainy Weather and (TODO) (TODO: Cheat doesn't work, code is overridden by "Foggy Weather")
// - SCOTTISHSUMMER: Activate Stormy Weather and (TODO)
// - PLEASANTLYWARM: Activate Sunny Weather and (TODO)
// - TOODAMNHOT: Activate Very Sunny Weather on beach wearing only boxers
//
// =============================================================================
