# Author : Dhanesh P S
# Roll no : 17
# Date : 24-07-2020

# Problem Description : 
# Write a script to remove lines that contain words stored in a list

BEGIN {
	names[0] = "Thanos";
	names[1] = "Stark";
	names[2] = "Steve";
	names[3] = "Romanoff";
	names[4] = "Scarlet";
}

{		
	flag = 1;
	for(name in names) {
		if( $0 ~ names[name]) {
			flag = 0;
			break;
		}
	}
	if(flag != 0) print
}
