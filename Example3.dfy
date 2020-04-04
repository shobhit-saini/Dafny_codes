class ATM
{
    var insertcard : bool;
    var wrongpincounter : int;
    var authentication : bool;
    constructor()
    modifies this
    ensures insertcard == false && wrongpincounter == 0 && authentication == false
    {
        insertcard := false;
        wrongpincounter := 0;
        authentication := false;
    }
    
    method enterpin(pin : int)
    modifies this
    requires wrongpincounter == 0 && authentication == false && insertcard == true
    ensures pin == 4 && wrongpincounter <= 2 ==> authentication == true 
    ensures pin != 4 && wrongpincounter <= 2 ==> authentication == false && wrongpincounter == old(wrongpincounter) + 1
    ensures pin != 4 && wrongpincounter >= 3 ==> insertcard == false && authentication == false
    {
        if(pin != 4)
        { 
            authentication := false;
            wrongpincounter := wrongpincounter + 1;
        }
        else 
        {
            if(wrongpincounter >= 3)
            {
                authentication := false;
                insertcard := false;
            }
            else
            {
                authentication := true;
            }
        }
    }
    
}
