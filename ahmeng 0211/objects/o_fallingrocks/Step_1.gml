cd--;
	if(cd == 0) {
		instance_create_layer(random_range(120, 1180), -20, "Money", o_sdebris);
		cd = 240;
	}