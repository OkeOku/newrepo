if (obj_waves.raid == true)
{
	audio_stop_sound(sid);
}

if (obj_waves.raid == false && audio_is_playing(background_raid))
{
	audio_stop_sound(rsid);
}

if (!audio_is_playing(background_nonraid) && !audio_is_playing(background_raid))
   {
	   if (obj_waves.raid == true)
	   {
		   rsid = audio_play_sound(background_raid,100,false);
	   }
	   else
	   {
		   sid = audio_play_sound(background_nonraid,100,false);
	   }
   
   }