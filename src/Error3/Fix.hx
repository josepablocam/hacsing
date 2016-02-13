/*
Issues can arise when you define a syntactic sort that conflicts with existing syntax
*/

module com.github.hacsing.Fix {
 space [ \t\n];
 token NUM | [0-9]+;
 sort Program | ⟦ ⟨NUM⟩ + ⟨NUM⟩ ⟧; // Fix
}
