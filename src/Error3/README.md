##Conflicting token/sort due to redefinition
Recall that everything inside ⟦⟧ is parsed. This is why you can directly write
keywords in your literal syntax, rather than have to define tokens (with `token`)
for each. However, issues can arise when you define a syntactic sort (or token) that fits 
the definition of one of your keywords. This will cause issues at compile time.

```
ENERGON1[Error2]$ hacs -e Error.hx
# tons of log messages here
Exception in thread "main" java.lang.RuntimeException: net.sf.crsx.CRSException: Encountered " "\u27e7" "\u27e6 + \u27e7 "" at line 5, column 15.
Was expecting one of:
    <MT_HxRegExp> ...
```

Note that we get an error message indicating the issue, so with this, it is quite easy
to write the fix in the write place. Things now compile and run as expected.

```
energon1[Error3]$ ./Fix.run --sort=Program --term="2 + 2"
 2 + 2 
```

