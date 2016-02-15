##Non-terminating rewrites 
You should always make sure that your scheme chains terminate, rather
than result in non-terminating rewrites. Your HACS script will compile without
showing any evidence of issues, but like any other programming language,
recursive calls without a base case will lead to infinite recursion.

These situations can be a bit harder to spot when you use syntactic schemes, so 
just be careful.

```
energon1[src]$ timeout 10 ./Error.run --sort=Program --scheme=First --term="2"
energon1[src]$ echo $? # timeout after 10 seconds
124
```

Once we rewrite the second scheme to have a base case, our recursion issue is solved.

```
energon1[src]$ ./Fix.run --sort=Program --scheme=First --term="2"
 2 
```