/*
Having non-terminating chains of scheme calls will cause issues
*/

module com.github.hacsing.Fix {
  space [ \t\n];
  token NUM | [0-9]+;
  
  sort Program | ⟦ ⟨NUM⟩ ⟧;
              
  sort Program | scheme First(Program);
  First(#) → Second(#);
  
  sort Program | scheme Second(Program);
  Second(#) → #; // Fix: make sure you have a base case
}