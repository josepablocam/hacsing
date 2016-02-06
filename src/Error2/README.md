##Sort misdefinition in pattern match for scheme
Be careful that when you define the LHS of a scheme (i.e. what you pattern match on),
that what you define actually satisfies the sort definition. If this is not the case,
you will get an error when compiling your HACS script.

```
energon1[Error2]$ hacs -e Error.hx
# tons of log messages here
Exception in thread "main" com.github.hacsing.TokenMgrError: Lexical error at line 13, column 10.  En
countered: ";" (59), after : ""
```

Note that we get an error message indicating the issue, so with this, it is quite easy
to write the fix in the write place. Things now compile and run as expected.

```
energon1[Error2]$ ./Fix.run --sort=Num --term="123" --scheme=Test
123
```

