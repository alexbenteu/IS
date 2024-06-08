method Triple12 (x: int ) returns (r: int)
{
    var y := 2 * x;
    r := x + y;
    assert r == 3 * x;
}
/*
method Triple13 (x: int ) returns (r: int)
{
    var y := 2 * x;
    r := x + y;
    assert r == 10 * x;
    assert r < 5;
    assert false ;
}
*/
method Triple141 (x: int ) returns (r: int)
{
    if x == 0{
        r := 0;
    } else {
        var y := 2 * x;
        r := x + y;
    }
    assert r == 3 * x;
}

method Triple142 (x: int ) returns (r: int)
{
    if {
        case x < 18 =>
        var a, b := 2 * x, 4 * x;
        r := (a+b) / 2;
        case 0 <= x =>
        var y := 2 * x;
        r := x + y;
    }
    assert r == 3 * x;
}

method Caller ()
{
    var result := Triple (18) ;
    assert result < 100;
}

method Triple (x: int ) returns (r: int)
ensures r == 3 * x
{
    var y := 2 * x;
    r := x + y;
}

/*
method Abs(x: int) returns (y: int)
ensures y>=0;
{
    if (x < 0)
        {return -x;}
    else ß
        {return x;}
}
*/