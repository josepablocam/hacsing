/*
Issues can arise when the return term from a scheme doesn't match the sort
required by the scheme's signature
*/

module com.github.hacsing.Fix {
  space [ \t\n];
  token NUM | [0-9]+;
  
  sort Program | ⟦ ⟨NUM⟩ ⟧;
              
  sort Program | scheme NumToProgram(NUM);
  NumToProgram(⟦ ⟨NUM#⟩ ⟧) → ⟦ ⟨NUM#⟩ ⟧; // Fix: lift to appropriate sort by using syntactic tools
}
