function onUpdateDatabase()
	print("> Updating database to version 21 (update on cast system)")
	db.query("CREATE TABLE IF NOT EXISTS `live_casts` ( `id` int(10) unsigned NOT NULL AUTO_INCREMENT, `player_id` int(11) NOT NULL, `name` varchar(32) NOT NULL, `password` char(40) NOT NULL DEFAULT '', `spectators` int(11) NOT NULL DEFAULT '0', `spectators_name` int(11) NOT NULL DEFAULT '0', PRIMARY KEY (`player_id`), UNIQUE KEY `name` (`name`) ) ENGINE=InnoDB;")
	return true
end
