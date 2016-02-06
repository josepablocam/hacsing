/*
A common issue with sorts is trying to pattern match on scheme
with a misdefined sort definition
*/


module com.github.hacsing.Fix {

 token NUM  | [0-9]+;
 sort Num   | ⟦⟨NUM⟩⟧;
 
 sort Num | scheme Test(Num); 
 Test(⟦⟨NUM#⟩⟧) → ⟦⟨NUM#⟩⟧; // FIX
}
