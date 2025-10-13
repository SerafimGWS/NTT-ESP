#define init

global.CarVenus_Guards = [Molefish, Molefish, Molefish, Molefish, Molefish, Molefish, Molesarge, Molesarge, Molesarge];

global.GenCont_exists = false;

#define step

if instance_exists(Portal) with(CarVenusFixed) instance_destroy();

// -------------------------------

// Detects when level ends generaion
if(instance_exists(GenCont) && !global.GenCont_exists){
    global.GenCont_exists = true;
}

if(!instance_exists(GenCont) && global.GenCont_exists){
    area_gen_ends();
    global.GenCont_exists = false;
}
// -------------------------------

#define area_gen_ends

if (instance_exists(CarVenus)){
	 with(CarVenus){
        with instance_create(x,y,CarVenusFixed){
			my_health = 1000000000;
		}
        for (i=0; i < array_length(global.CarVenus_Guards); i++) { 
            instance_create(x,y,global.CarVenus_Guards[i]);
        }
		instance_delete(self);
    }
}
