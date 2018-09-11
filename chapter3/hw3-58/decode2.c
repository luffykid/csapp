long decode2(long x, long y, long z){
    y = y - z;
    long result = y; 
    x = x * y;
    result = result << 63;
    result >>= 63;
    result = result ^ x;
    return result;
}