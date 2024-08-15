function script_cama_walk() {
	chao = place_meeting(x, y + 1, obj_cama);

	var right, left, jump, jump_s;

	right = keyboard_check(ord("D"));
	left = keyboard_check(ord("A"))
	jump = keyboard_check_pressed(ord("W"))
	jump_s = keyboard_check_released(ord("W"))

	var velocidade = max_velh

	velh = (right - left) * velocidade;

		if (velh != 0)
		{
			image_xscale = sign(velh) * 3
			sprite = spr_dili_walk;
		} else {
			sprite = spr_dili_idle;
		}


	if (chao)
	{
		if (jump) velv = -max_velv;
	}
	else 
	{
		//Fora do chão
		velv += grav;

		//Soltando o espaço	
		if (jump_s)	
		{
			if (velv < 0)
			{
			velv = velv * .6;
			}
		}

		//Trocando o pulo
		if (velv < 0) sprite = spr_dili_jumpup;
		else sprite = spr_dili_jumpdown;

	
	}

	sprite_index = sprite;


}
