BEGIN {
	names[0] = "Thanos";
	names[1] = "Stark";
	names[2] = "Steve";
	names[3] = "Romanoff";
	names[4] = "Scarlet";
}

{		
	for(name in names) {
		if( $0 ~ names[name]) {
			print
		}
	}
}
