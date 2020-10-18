if (obj_waves.raid == true)
{
	audio_stop_sound(sid);
}

if (!audio_is_playing(background_nonraid) && !audio_is_playing(background_raid))
   {
	   if (obj_waves.raid == true)
	   {
		   audio_play_sound(background_raid,100,false);
	   }
	   else
	   {
		   sid = audio_play_sound(background_nonraid,100,false);
	   }
   
   }