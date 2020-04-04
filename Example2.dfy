method abs(x : int) returns (r : int)
ensures 0 <= r
ensures 0 <= x ==> r == x
ensures 0 > x ==> r == -x
{
    if( x >= 0 ) 
       { return x; }
    else
       { return -x; }
}
method test()
{
    var v := abs(3);
    assert v == 3;
}
