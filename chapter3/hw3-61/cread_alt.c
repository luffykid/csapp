long cread_alt (long *xp){
    long tmp = 0;
    long *rp = xp ? xp : &tmp;
    return *rp;
}