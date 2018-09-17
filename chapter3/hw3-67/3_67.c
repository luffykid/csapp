typedef struct {
    long a[2];
    long *p;
}strA;

typedef struct {
    long u[2];
    long q;
}strB;

strB process(int i, strA d, strA s) {
    strB r;
    r.u[0] = i;
    r.u[1] = d.a[1];
    r.q = *s.p;
    
    return r;
}

long eval(long x, long y, long z) {
    strA s;
    strA d;
    s.a[0] = x;
    s.a[1] = y;
    s.p = &z;
    strB r = process(10, d, s);
    return r.u[0] + r.u[1] + r.q;
}