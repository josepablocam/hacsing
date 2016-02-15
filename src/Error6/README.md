##Sort mismatches in resulting sort
Somewhat related to sort mismatches in arguments [Error1](../src/Error1/),
it is also important that the term returned from a scheme actually match
the sort declared in the scheme's signature. This can usually involve some nuance
as the example here shows. The key is to make sure you are being as exact as possible
in matching the definitions of a sort.


```
energon1[src]$ ./Error.run --sort=NUM --scheme=NumToProgram --term="2"
« $Print2-Error$Program[{"$LineLocation" : STRING[1]; "$ColumnLocation" : STRING[1]}"2", 0] »
```

We can use syntactic tools (i.e. the syntax sort definition inside `⟦⟧`) to lift
`NUM` to sort `Program`, which satisfies HACS and solves our issue.

```
energon1[src]$ ./Fix.run --sort=NUM --scheme=NumToProgram --term="2"
 2 
```