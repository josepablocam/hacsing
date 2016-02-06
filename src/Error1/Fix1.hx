/*
Scheme signatures are contracts to be fulfilled appropriately.
If you state a scheme takes a given sort, and then had it something
different, you'll be in trouble.

Recreate by calling
./Error1 --sort=Program --scheme=Test --term="123"

*/


module com.github.hacsing.Fix1 {

 token NUM  | [0-9]+;
 token WORD | [a-zA-Z]+;
 sort Num   | ⟦⟨NUM⟩⟧;
 sort Word  | ⟦⟨WORD⟩⟧;
 
 sort Program | ⟦⟨Num⟩⟧ | ⟦⟨Word⟩⟧;

 sort Program | scheme Test(Num);
 Test(#) → Test2(#);

 sort Program | scheme Test2(Num); // FIX
 Test2(#) → ⟦⟨Num#⟩⟧;
}
