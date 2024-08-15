function script_cama_colission() {
#region Colisão Horizontal Wall (velh)
	//colisão horizontal com o chão
	repeat(abs(velh))
	{
		//subindo rampas
		if (place_meeting(x + sign(velh), y, obj_cama) && 
			!place_meeting(x + sign(velh), y - 1, obj_cama)) y--;
		
		//descendo
		if (!place_meeting(x + sign(velh), y, obj_cama) &&
			!place_meeting(x + sign(velh), y + 1, obj_cama) &&
			place_meeting(x + sign(velh), y + 2, obj_cama)) y++;
	
		if (!place_meeting(x + sign(velh), y, obj_cama))
		{
			x += sign(velh);
		}
		else
		{
			velh = 0;
			break;
		}
	}
#endregion

#region Colisão Vertical Wall (velv)
	//colisão vertical com a parede
	repeat(abs(velv))
	{
		if (!place_meeting(x, y + sign(velv), obj_cama))
		{
			y += sign(velv);
		}
		else
		{
			velv = 0;
			break;
		}
	}
#endregion


}
