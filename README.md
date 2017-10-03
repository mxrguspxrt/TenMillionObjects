# Why?

Test different languages and environments, how they handle creating ten million objects with one instance variable.


# Confirming the results

```bash
  ruby benchmarks/run-tests.py
```



# Results

Python is shit, Go is the shit. I totally recommend to take a look at https://crystal-lang.org


```
  Go used 158MB and ran 1 seconds.
  Crystal used 429MB and ran 1 seconds.
  Ruby used 933MB and ran 6 seconds.
  Python3 used 1688MB and ran 14 seconds.
  Python2 used 3802MB and ran 22 seconds.
```
