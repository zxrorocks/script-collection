getgenv()._= "@zxrorocks pwned this script | I take back what I said previously, he can't even code a grenade tp"
getgenv().Owner = "zxrorocks"

getgenv().StandConfig = {
	['Msg'] = 'Yare Yare Daze.', --When You Say [/e msg] It Makes All The Alts Say That Message
	['CrewID'] = 32570691, --Must join group
	['Attack'] = 'Heavy', --[Heavy | Light] Heavy = Super Punch Light = Spam Punch
	['TPMode'] = "Cart", --[Knock | Cart]
	['GunMode'] = 'Under', --[Sky | Under]  The Stand Will Shooting Just Like What In The Settings
	['FlyMode'] = 'Glide', --[Glide | FlyV1 | FlyV2 | Hover | Heaven ]
	['Position'] = 'Back', --[Back | Left | Right | Mid | UpMid | UpLeft | UpLeft | Walk ]
	['Resolver'] = false, --[true | false] Turn On Or Off Resolver If Someone Using Anti Lock [This only applied to attack only for guns it's already have resolver]
	['ChatCmds'] = false, --[true | false] if true stand talks to you
	['AutoMask'] = true, --[true | false] Auto Buy Mask When The Stand Respawn
	['MaskMode'] = 'Breathing', --[Surgeon | Paintball | Skull | Pumpkin | Hockey | Ninja | Riot | Breathing] The Stand Will Buy The Mask You Selected
	['AntiStomp'] = true, --[true | false] The Stand Will Cannot Be Stomped Or Grabbed
	['StandMode'] = 'Star Platinum : OverHeaven', --[Star Platinum : OverHeaven | Star Platinum: The World | Star Platinum, Za Warudo! | TheWorld | Cmoon | King Crimson | Killer Queen | MIH | D4C]
	['Smoothing'] = false, --[true | false] if true stand will follow you smoothly
	['AttackMode'] = 'Under', --[Sky | Under] If [Sky] The Stand Will Attack Infront Of Target And If [Under] The Stand Will Attack In Underground
	['CustomName'] = 'Master', --Custom Name Text Default Is [Master] Example Of it 'Im Here, Master'
	['Hidescreen'] = true, --[true | false] If you set it to true you will see white blank screen [Save up gpu usage]
	['SummonPoses'] = 'Pose3', --[false | Pose1 | Pose2 | Pose3]
	['LowGraphics'] = true, --[true | false] Turns graphics down so your stand doesnt lag too much
	['CustomPrefix'] = '.', --[ ! | / | . | ? | > | < | $ | ; | : ] Custom target prefix
	['CustomSummon'] = 'Summon!', --Custom [Summon!] Text
	['GunPrediction'] = 0.037, --Gun prediction [this is auto prediction sets]
	['AutoPrediction'] = true, --[true | false] Turn On Or Off Auto Prediction 
	['AttackDistance'] = 75, --Attack distance for "Attack!, Stab!, Gkill!" max distance
	['AttackPrediction'] = 0.34, --Prediction For Attack Or Targetting
	['AttackAutoPrediction'] = 0.23, --Prediction For Attack Or Targetting
	--//    ! Sounds !     \\--
	--\\ MUST HAVE BOOMBOX //--
	['Sounds'] = true, --[true | false]
	['CustomSong'] = 123456, --Enter A Song ID And Say 'Song!'
	['SummonMusic'] = true, --[true | false]
	['HideBoombox'] = true, --Hide or show boombox on the stand back (WIth hide boombox true it can bugged stand sometime)
	['SummonMusicID'] = 'Default' -- Enter a Sound ID Put [Default] If You Would Like The Default Sound
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/zxrorocks/test-repo2/main/DreamyCertified.lua"))()
