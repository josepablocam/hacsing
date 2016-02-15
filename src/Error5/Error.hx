/*
Having non-terminating chains of scheme calls will cause issues
*/

module com.github.hacsing.Error {
  space [ \t\n];
  token NUM | [0-9]+;
  
  sort Program | ⟦ ⟨NUM⟩ ⟧;
              
  sort Program | scheme First(Program);
  First(#) → Second(#);
  
  sort Program | scheme Second(Program);
  Second(#) → First(#); // Error: mutually recursive call generates non-termination given lack of base case
}
