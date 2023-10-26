if(!instance_exists(obj_player))
{
	instance_destroy()	
}

var _vidaPlayer = obj_player.vida
var _vidaPlayerMAX = obj_player.vida_max
var _vidaPlayerFrac = frac(_vidaPlayer)
_vidaPlayer -= _vidaPlayerFrac;

for(var i = 1; i <= _vidaPlayerMAX; i++)
{
	var _imageIndex = (i > _vidaPlayer);
	if(i == _vidaPlayer+1)
	{
		_imageIndex += (_vidaPlayerFrac > 1)
		_imageIndex += (_vidaPlayerFrac > 0.25)
		_imageIndex += (_vidaPlayerFrac > 0.5)
	}
	draw_sprite(spr_vida, _imageIndex, 70 + (i * 100), 75)
}
