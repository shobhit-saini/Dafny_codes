
method loop( i : nat ) returns(z : nat) 
ensures z == i
{
    z := 0 ;
    while z < i 
    invariant  z <= i
    {
        z := z + 1 ;
    }
    
}
