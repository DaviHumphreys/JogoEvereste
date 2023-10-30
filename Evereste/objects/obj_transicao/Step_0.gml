if(t = 0)
{
	image_alpha -= vel;
}
else
{
	cd -= vel;
	if(cd <= 0)
	{
		t = 0;	
	}
}

if(image_alpha <= 0)
{
	instance_destroy();
}