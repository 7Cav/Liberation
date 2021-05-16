waitUntil { !isNil "save_is_loaded" };
waitUntil { save_is_loaded };

while { true } do {
    sleep 60;
    stats_playtime = stats_playtime + 60;
};