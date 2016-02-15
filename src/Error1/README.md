##Sort mismatches in arguments
If you tell a scheme it takes a given sort, make sure you follow through!
In this case, Test calls a second scheme that assumes the argument is sort Word,
and tries to construct a program accordingly. If we give it a term of sort Num,
it won't work as expected.
```
energon1[Error1]$ ./Error1.run --sort=Num --term="123" --scheme=Test
« '$Print2-Error1$Word'[
 Error1$Num__NUM_[{"$LineLocation" : STRING[1]; "$ColumnLocation" : STRING[1]}"123"],
 0] »
```

Once we correct our definition, things are back to normal

```
energon1[Error1]$ ./Fix1.run --sort=Num --term="123" --scheme=Test
123
```
