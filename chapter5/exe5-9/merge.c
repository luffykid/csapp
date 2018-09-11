void merge(int src1[], int src2[], int dest[], int n)
{
    //src1 in %rdi, src2 in %rsi, dest in %rdx, n in %ecx
    int i1 = 0;
    int i2 = 0;
    int id = 0;
    while (i1 < n && i2 < n)
    {
        /*
        if (src1[i1] < src2[i2])
            dest[id++] = src1[i1++];
        else
            dest[id++] = src2[i2++];
        */
       long v1 = src1[i1];
       long v2 = src2[i2];
       long take = src1[i1] < src2[i2];
       dest[id] = take ? v1 : v2;
       i1 += take;
       i2 += !take;
    }
    while (i1 < n)
        dest[id++] = src1[i1++];
    while (i2 < n)
        dest[id++] = src2[i2++];
}