method example( a : array< int > )
modifies a
requires a != null && a.Length > 3
requires forall i : int :: 0 <= i < a.Length ==> a[i] > 0
ensures forall i : int :: 0 <= i < a.Length && i != 2 ==> a[i] == old(a[i])
ensures exists i : int :: 0 <= i < a.Length && a[i] == 42
{
    a[2] := 42;
}
