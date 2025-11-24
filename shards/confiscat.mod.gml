#define step

if(ultra_get(1,1)){
    with(AmmoPickup){
        if("confiscat" not in self){
            if(irandom(7) < 1){
                instance_create(x,y,AmmoChest);
                instance_delete(self);
                confiscat = 1;
            }
            else{
                confiscat = 1;
            }
        }
    }
}