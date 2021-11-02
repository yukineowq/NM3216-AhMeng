if (room == r_level3_2 or r_level4_2)
{
	if (instance_exists(o_alien))
	{
		o_banana.visible = 0;
	}
	else
	{
		o_banana.visible = 1;
	}
}

if (room == r_level5_2)
{
	if (instance_exists(o_ceo))
	{
		o_banana.visible = 0;
	}
	else
	{
		o_banana.visible = 1;
	}
}
