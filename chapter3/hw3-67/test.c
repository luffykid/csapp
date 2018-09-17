// 本程序用于测试按值传入结构体时，结构体内部数据的压栈顺序

typedef struct Test{
    long x;
    long y;
    long z;
}Test;

Test test(Test s);

int main(int argc, char const *argv[])
{
    Test t;
    t.x = 1;
    t.y = 2;
    t.z = 3;
    test(t);
    return 0;
}

Test test(Test s)
{
    Test r;
    r.x = s.x;
    r.y = s.y;
    r.z = s.z;

    return r;
}