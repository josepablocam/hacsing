/*
Missing a case for a scheme can cause HACS to produce dumps when
it cannot resolve an appropriate rewrite
*/

module com.github.hacsing.Fix {
  space [ \t\n];
  token NUM | [0-9]+;
  
  sort Program | ⟦ ⟨NUM⟩ + ⟨NUM⟩ ⟧
               | ⟦ ⟨NUM⟩ - ⟨NUM⟩ ⟧
               ;
              
  sort Computed | scheme Calculate(Program);
  Calculate(⟦ ⟨NUM#1⟩ + ⟨NUM#2⟩ ⟧) → ⟦ #1 + #2 ⟧;
  Calculate(⟦ ⟨NUM#1⟩ - ⟨NUM#2⟩⟧) → ⟦ #1 - #2 ⟧; // Fix
}
