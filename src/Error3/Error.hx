/*
Issues can arise when you define a syntactic sort that conflicts with existing syntax
*/

module com.github.hacsing.Error {
 space [ \t\n];
 token NUM | [0-9]+;
 token Plus | ⟦ + ⟧; // Error
 sort Program | ⟦ ⟨NUM⟩ + ⟨NUM⟩ ⟧;
}
