##Missing case in scheme definition
In order to correctly write scheme definitions, you should make sure to capture
each possible pattern in a rule. Unlike pattern matching in other languages, you
won't necessarily get a warning if a specific case is missing (HACS allows you to
do things like define defaults, and treats you as an adult, letting you define the
cases you need and ignore those you don't), so a warning might not be suitable.

A good rule of thumb to go through when you write a scheme that involves syntactic
sorts, is to check whether you have a rule per production (this is not always
necessary or appropriate, but checking for this is an easy way to spot mistakes).

```
energon1[Error4]$ ./Error.run --sort=Program --scheme=Calculate --term="2 + 2"
energon1[Error4]$ ./Error.run --sort=Program --scheme=Calculate --term="2 - 2"
†« $TextChars[
 $[
  FormatNumber,
  Error$Computed_Calculate[
   'Error$Program__NUM_-_NUM_'[
    {"$LineLocation" : STRING[1]; "$ColumnLocation" : STRING[1]}"2",
    {"$LineLocation" : STRING[1]; "$ColumnLocation" : STRING[5]}"2"]]]] »
```

Once we add a case for the missing production `⟦⟨NUM⟩ - ⟨NUM⟩⟧`, we will get the result
we expect.

```
energon1[Error4]$ ./Fix.run --sort=Program --scheme=Calculate --term="2 - 2"
0.0
```

