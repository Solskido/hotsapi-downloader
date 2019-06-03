# TODO
# Output formatted aws command for ease of retrieval
# Output heroes picked and banned
# Output single match on demand

require("hots_api")

# Rough date to ID relationships
# 14493000 2019-02-20
# 14501500 2019-02-21
# 14509700 2019-02-22
# 14520000 2019-02-23
# 14528600 2019-02-24
# 14535700 2019-02-25
# 14544500 2019-02-26
# 14553400 2019-02-27
# 14558000 2019-02-28
# 14565300 2019-03-01
# 14572300 2019-03-02
# 14579900 2019-03-03
# 14588000 2019-03-04
# 14594000 2019-03-05
# 14601700 2019-03-06
# 14614600 2019-03-07
# 14627300 2019-03-08
# 14636500 2019-03-09
# 14644900 2019-03-10
# 14655500 2019-03-11
# 14662500 2019-03-12
# 14668100 2019-03-13
# 14674500 2019-03-14
# 14686500 2019-03-15
# 14694000 2019-03-16
# 14704700 2019-03-17
# 14717000 2019-03-18
# 14724700 2019-03-19
# 14732900 2019-03-20
# 14740800 2019-03-21
# 14754800 2019-03-22
# 14764900 2019-03-23
# 14778600 2019-03-24
# 14791900 2019-03-25
# 14806400 2019-03-26
# 14817300 2019-03-27
# 14823300 2019-03-28
# 14832600 2019-03-29
# 14843000 2019-03-30
# 14851900 2019-03-31
# 14859200 2019-04-01
# 14871500 2019-04-02
# 14886400 2019-04-03
# 14916000 2019-04-04
# 14934700 2019-04-05
# 14947700 2019-04-06
# 14965300 2019-04-07
# 14984500 2019-04-08
# 15000500 2019-04-09
# 15013900 2019-04-10
# 15025300 2019-04-11
# 15031500 2019-04-12
# 15039300 2019-04-13
# 15052800 2019-04-14
# 15061800 2019-04-15
# 15070600 2019-04-16
# 15166100 2019-04-17

# Test output and searching:
# 14679800+200
# 15025700+200

# latest 15176100
@start_id = 15176100
@stop_id = 0
@stop_limit = 0
@date_threshold = Time.new(2019, 4, 1)
@sleep_time = 0.6
@error_limit = 4

@game_type = ""

@rkb = [
	"Craftydevil#1225",
	"CraftyDevil5#1163",
	"ThePiemaker#11967",
	"HookdonFenix#1673",
	"solskido#1757",
	"ggPokecheck#1748",
	"RabidPenguin#1868",
	"Dolche#1148"
]
@durotans_couch = [
	"CaptainWedge#1451",
	"BigEggroll#1230",
	"Aphish#1180",
	"Suln#1239",
	"WildKarde#1839",
	"SirNoble#11465",
	"Ritter#1754"
]
@accel = [
	"shamhat#11603",
	"Scathar#11271",
	"ACEScathar#11271",
	"ACECasey#1963",
	"Atlas#14641",
	"ACEAtlas#14641",
	"ACEBaegel#1706",
	"DreamCrusher#1973",
	"Leonidas#11619"
]
@ttw = [
	"Confused#1902",
	"GiggleShmack#1927",
	"Reaper#13705",
	"Ryuken#1796",
	"Wiiji#1854",
	"TACOCAT#11328",
	"Serolf#1179",
	"Krazehh#1624",
	"Zhou#11869"
]
@nues = [
	"chaoticorder#1455",
	"Cahnew#1315",
	"Kenyon#1407",
	"Shadowstep#1138",
	"Fade#12545",
	"Chaosdude#1236",
	"Antastsy#4333",
	"Axilla#1205",
	"NightKnight#126405"
]
@hotus = [
	"BLaZe#1447",
	"Watson#1534",
	"Fishdrowner#1918",
	"Andrew#1771",
	"waterboytkd#1931",
	"Jubjub#1144",
	"Watson#11334",
	"clyDH#1849"
]
@mm = [
	"MarshHole#1196",
	"himmybo#1454",
	"NuFlash#1238",
	"Wesgra#1424",
	"KnighBladeCD#1743",
	"Cauthon#1797",
	"SrMacofCheez#1719",
	"Kobo#11642"
]
@jailbait = [
	"H2O#12617",
	"Fragesteller#1989",
	"JoeDiMaggio#11602",
	"SmugDolphin#1328",
	"Kalaxy#1213",
	"JunkRat#11116"
]
@gilly = [
	"Chymotrypsin#1517",
	"chesslooter#1392",
	"Stark#2324",
	"Kagekiri#1209",
	"JinxeeKatt#1365",
	"ZergyMonster#1530"
]
@juice = [
	"Cattroms#1497",
	"Wenamon#1548",
	"alexdudeguy#1767",
	"Misadventure#1758",
	"Koiye#1812",
	"Camanmo#1545",
	"Blank#12789",
	"Kbay#11376"
]
@soak = [
	"fillipk#1823",
	"Opakalypse#1898",
	"dmn13#1552",
	"Strogues#1451",
	"bmeduho#1422",
	"kee1108#1310",
	"torjnado#1100"
]
@lubu = [
	"Streakwing#1420",
	"AlanHicks#1446",
	"Bandit#1902",
	"VDZ#1619",
	"Macrotah#1672"
]
@friends = [
	"SubwaySlayer#1588",
	"Gooch653#1904",
	"Riokaii#1935",
	"Ember#1444",
	"Larson#11917",
	"Jayzon#1581",
	"Mongoose#1844",
	"CatPeach#1486",
	"Tetcher#2650",
	"Snaginanehs#1414",
	"Shenanigans#11903",
	"NotParadox#1815",
	"ghostDunk#1442",
	"Gravesville#1246",
	"RomedyMC#1551",
	"megamanfan#1674",
	"DBSmiley#11898",
	"BleepBlorp#1451",
	"Linehouse#1400",
	"Crow#14957",
	"Falindrith#1452",
	"ProfBobo#1316"
]
@players_of_interest = [
	{
		"name" => "People of Interest",
		"players" => @friends
	},
	{
		"name" => "Reborn Knights Black",
		"players" => @rkb
	},
	{
		"name" => "Accel Esports",
		"players" => @accel
	},
	{
		"name" => "Durotan's Couch",
		"players" => @durotans_couch
	},
	{
		"name" => "Team Training Wheels",
		"players" => @ttw
	},
	{
		"name" => "NUES",
		"players" => @nues
	},
	{
		"name" => "HOTUS",
		"players" => @hotus
	},
	{
		"name" => "Minion Miners",
		"players" => @mm
	},
	{
		"name" => "Jailbait",
		"players" => @jailbait
	},
	{
		"name" => "gillyShark",
		"players" => @gilly
	},
	{
		"name" => "Juice Pirates",
		"players" => @juice
	},
	{
		"name" => "sOaK eVeRy LaNe",
		"players" => @soak
	},
	{
		"name" => "LuBu",
		"players" => @lubu
	}
]

@fetched = 0
@found = 0

def fetch(min_id)
	replays = HotsApi.replays
		.where(min_id: min_id.to_s)

	if(@with_player.length)
		replays = replays.with_players
	end

	begin
		replays = replays.to_a
	rescue StandardError => e
		puts e.message
		return -1
	end

	mostRecentGameDate = Time.new(2000, 1, 1)

	replays.each do |replay|
		validDate = replay.game_date > @date_threshold
		if(replay.game_date > mostRecentGameDate)
			mostRecentGameDate = replay.game_date
		end

		validGame = true
		if(@game_type.length > 0)
			validGame = replay.game_type == @game_type
		end

		validPlayer = true
		if(@with_player.length > 0)
			validPlayer = false
			replay.players.each do |player|
				if(validPlayer)
					break
				end

				if(playerMatch(player.battletag))
					validPlayer = true
					break
				end
			end
		end

		if(validDate && validGame && validPlayer)
			@found += 1
			printGame(replay)
		end
	end

	puts "Fetched #{replays.length} / #{@fetched} ending at #{replays[replays.length - 1].id}"
	puts "  Most recently: #{mostRecentGameDate}"

	return replays.length
end

def playerMatch(battletag)
	matched = false

	@players_of_interest.each do |team|
		if(matched)
			break
		end

		matched = playerInTeam(battletag, team)
	end

	return matched
end

def playerInTeam(battletag, team)
	matched = false

	team["players"].each do |tag|
		if(matched)
			break
		end

		matched = tagMatch(tag, battletag)
	end

	return matched
end

def tagMatch(tag1, tag2)
	tagToCompare = tag1
	if(!tag1.include? "\#")
		tagToCompare = tag.split("\#")[0]
	end

	playerTag = tag2
	if(!tag2.include? "\#")
		playerTag = playerTag.split("\#")[0]
	end

	#puts "Comparing #{player.battletag} to #{tagToCompare}"
	(playerTag == tagToCompare)
end

def playerTeam(battletag)
	if(!battletag)
		return ""
	end

	@players_of_interest.each do |team|
		if(playerInTeam(battletag, team))
			return team["name"]
		end
	end

	return ""
end

def pushPlayerIntoTeamOutput(teams, teamName, player)
	done = false

	teams.each do |team|
		if(done)
			break
		end

		if(team["name"] == teamName)
			done = true
			team["players"].push(player)
		end
	end

	if(!done)
		teams.push({
			"name" => teamName,
			"players" => [player]
		})
	end

	return teams
end

def printGame(replay)
	playerMatches = 0
	teamMatches = []

	replay.players.each do |player|
		if(playerMatch(player.battletag))
			playerMatches += 1

			teamMatches = pushPlayerIntoTeamOutput(teamMatches, playerToTeam(player.battletag), player.battletag)
		else
			teamMatches = pushPlayerIntoTeamOutput(teamMatches, "Other", player.battletag)
		end
	end

	puts "-----------------------------------------------------------------------------------------------------------------------"
	puts "  #{playerMatches} " + ((playerMatches == 1) ? "hit" : "hits")
	puts "    #{replay.game_type} on #{replay.game_map} - #{replay.game_date}"
	puts "    #{replay.url}"
	puts "    Including players: "

	# Known
	teamMatches.each do |team|
		if(team["name"] == "Other")
			next
		end

		puts "        " + team["name"]

		team["players"].each do |player|
			puts "            " + player
		end
	end

	# Other
	teamMatches.each do |team|
		if(team["name"] != "Other")
			next
		end

		puts "        Other"

		team["players"].each do |player|
			puts "            " + player
		end
	end

	puts "-----------------------------------------------------------------------------------------------------------------------"
end

def flattenPlayerList()
	resolved = []

	@players_of_interest.each do |playerList|
		if(playerList["players"].kind_of?(Array))
			resolved = resolved | playerList["players"]
		else
			resolved.push(playerList)
		end
	end

	return resolved
end

def playerToTeam(battletag)
	if(!battletag)
		return ""
	end

	@players_of_interest.each do |team|
		team["players"].each do |player|
			if(tagMatch(battletag, player))
				return team["name"]
			end
		end
	end

	return ""
end

@with_player = flattenPlayerList()
@working_id = @start_id
@errors = 0
loop do
	sleep(@sleep_time)

	fetched = fetch(@working_id)
	if(fetched < 0)
		# An error occurred
		@errors += 1
		if(@errors > @error_limit)
			break
		else
			next
		end
	end

	@fetched += fetched
	@working_id += fetched
	@errors = 0

	limit = 1000
	if(@with_player.length)
		limit = 100
	end

	continue = true
	if(fetched != limit)
		continue = false
	end

	if((@stop_id > 0) && (@stop_id <= @working_id))
		continue = false
	end

	if((@stop_limit > 0) && (@stop_limit <= @fetched))
		continue = false
	end

	break if(!continue)
end

puts "Found #{@found} out of #{@fetched}"
