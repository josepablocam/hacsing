/*
Issues can arise when the return term from a scheme doesn't match the sort
required by the scheme's signature
*/

module com.github.hacsing.Error {
  space [ \t\n];
  token NUM | [0-9]+;
  
  sort Program | ⟦ ⟨NUM⟩ ⟧;
              
  sort Program | scheme NumToProgram(NUM);
  NumToProgram(⟦ ⟨NUM#⟩ ⟧) → #; // Error: subtle, a NUM is not a program ⟦⟨NUM⟩⟧ is!
}
